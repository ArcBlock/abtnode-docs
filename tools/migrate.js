const path = require('path');
const fse = require('fs-extra');
const yaml = require('yaml');
const Remark = require('remark');
const matter = require('gray-matter');
const toHAST = require('mdast-util-to-hast');
const { selectAll } = require('hast-util-select');

const remark = Remark().data(
  'options',
  Object.assign({
    commonmark: true,
    footnotes: true,
    pedantic: true,
    gfm: true,
  })
);

const content = fse.readFileSync(path.join(__dirname, '../README.md')).toString();
const mdast = remark.parse(content);
const hast = toHAST(mdast);
const links = selectAll('a', hast).filter(x => x.properties.href.startsWith('./src/'));

// Group links by chapter
const groups = {};
links.forEach(x => {
  const { href } = x.properties;
  const [rootPath, group, post] = href.split('/').filter(x => ['.'].includes(x) === false);
  const title = x.children[0].value;

  if (!groups[group]) {
    console.log('New group', group);
    groups[group] = {
      rootPath,
      title,
      posts: [],
    };
  }

  if (post) {
    groups[group].posts.push({
      slug: post,
      title,
    });
  }
});

// update markdown on disk
const updateMarkdown = (baseDir, title) => {
  console.log('update markdown file in', baseDir);
  const updateMarkdownFile = filePath => {
    if (fse.existsSync(filePath) === false) {
      return;
    }

    const { content, data } = matter(fse.readFileSync(filePath).toString());
    data.category = 'abtnode';

    fse.writeFileSync(filePath, matter.stringify(content, data));
  }

  updateMarkdownFile(path.join(baseDir, 'index.md'));
  updateMarkdownFile(path.join(baseDir, 'index.zh.md'));
};

// Create skeleton on disk
const sidebar = {};
Object.keys(groups).forEach(group => {
  const { rootPath, title, posts } = groups[group];
  const groupDir = path.join(__dirname, '..', rootPath, group);
  fse.ensureDirSync(groupDir);
  updateMarkdown(groupDir, title);

  const category = title.split(':').pop().trim(); // prettier-ignore
  sidebar[category] = [`/${group}`].concat(posts.map(x => `/${group}/${x.slug}`));

  if (Array.isArray(posts)) {
    posts.forEach(({ slug, title }) => {
      const postDir = path.join(groupDir, slug);
      fse.ensureDirSync(postDir);
      updateMarkdown(postDir, title);
    });
  }
});
