# Academic Jekyll Homepage

A lightweight Jekyll academic homepage scaffold for GitHub Pages. The template is intentionally restrained: typography-first, generous whitespace, minimal ornament, and content driven mostly by `_config.yml`, `_data/*.yml`, and Markdown pages.

## Features

- GitHub Pages-compatible Jekyll setup
- Plain HTML, SCSS, and Liquid templates
- Configurable style modes: `piech`, `hewitt`, `bingyao`
- Data-driven publications, projects, news, and teaching
- Homepage with selected publications only
- Accessible semantic HTML and responsive layout
- SEO basics via `jekyll-seo-tag` and `jekyll-sitemap`
- Optional subtle dark mode toggle in `_config.yml`
- GitHub Actions workflow for Pages deployment

## File Tree

```text
.
├── .github/
│   └── workflows/
│       └── pages.yml
├── _config.yml
├── _data/
│   ├── experience.yml
│   ├── navigation.yml
│   ├── news.yml
│   ├── projects.yml
│   ├── publications.yml
│   └── teaching.yml
├── _includes/
│   ├── experience-list.html
│   ├── head.html
│   ├── news-list.html
│   ├── project-list.html
│   ├── publication-list.html
│   ├── site-footer.html
│   ├── site-header.html
│   ├── social-links.html
│   └── teaching-list.html
├── _layouts/
│   ├── default.html
│   ├── home.html
│   └── page.html
├── assets/
│   ├── css/
│   │   └── main.scss
│   ├── files/
│   └── images/
│       ├── avatar-placeholder.svg
│       ├── favicon.svg
│       └── og-card.svg
├── .gitignore
├── 404.md
├── Gemfile
├── Gemfile.lock
├── contact.md
├── cv.md
├── index.md
├── projects.md
├── publications.md
├── robots.txt
└── teaching.md
```

## Local Development

This project uses a small direct Jekyll dependency set rather than the heavier `github-pages` meta-gem. GitHub Pages deployment still works through the included GitHub Actions workflow.

1. Install a recent Ruby and Bundler.
2. Install dependencies:

   ```bash
   bundle install
   ```

3. Start the local server:

   ```bash
   bundle exec jekyll serve
   ```

4. Open `http://127.0.0.1:4000`.

This scaffold is intentionally conservative and should work with a normal modern Ruby setup. If your local Ruby is unusually old or locked to a system install, use a version manager such as `rbenv` or `asdf`.

### Local Troubleshooting

- If you are using the macOS system Ruby and see Bundler encoding errors, prefer a newer Ruby from `rbenv` or `asdf`.
- Older Bundler versions can also behave poorly when the project path contains non-ASCII characters. Moving the repo to an ASCII-only path is a simple workaround.

## GitHub Pages Deployment

This repository includes `.github/workflows/pages.yml`, which deploys through GitHub Actions.

1. Push the repository to GitHub.
2. In the repository settings, open `Pages`.
3. Set the source to `GitHub Actions`.
4. If you use a custom domain, add a `CNAME` file at the repo root and configure DNS.
5. Update `url` in `_config.yml` to your final site URL.

The workflow builds the site with Bundler and deploys the `_site` output through the official Pages actions.

## Files To Edit For Future Customization

- `_config.yml`: site title, author info, social links, accent color, style mode, font selection, visibility toggles, footer text, SEO URL
- `_data/publications.yml`: full publication list and homepage highlights
- `_data/projects.yml`: project summaries
- `_data/news.yml`: recent updates
- `_data/experience.yml`: education and experience entries
- `_data/teaching.yml`: teaching and service entries
- `_data/navigation.yml`: navigation labels and menu order
- `index.md`: homepage bio text
- `cv.md`, `publications.md`, `projects.md`, `teaching.md`, `contact.md`: page-level copy
- `assets/css/main.scss`: visual tuning if the config switches are not enough
- `assets/images/avatar-placeholder.svg`, `assets/images/favicon.svg`, `assets/images/og-card.svg`: replace with your own assets

## How To Tune The Style Toward Piech / Hewitt / Bingyao

The main switch lives in `_config.yml`:

```yml
style_mode: piech
font_style: serif
accent_color: "#6f7c8b"
```

### `style_mode: piech`

- Softest spacing and the largest breathing room
- Slightly larger avatar
- A gentler section rhythm
- Good default if you want something warm and modern without looking commercial

Suggested pairings:

- `font_style: serif`
- muted accent color such as `#6f7c8b` or `#7d8278`
- `show.publication_abstracts: true` for a more welcoming homepage

### `style_mode: hewitt`

- Narrower reading width
- Tighter spacing
- More austere and text-driven
- Best if you want a sharper academic seriousness

Suggested pairings:

- `font_style: mixed` or `sans`
- near-monochrome accent such as `#5f6670`
- `show.publication_abstracts: false`

### `style_mode: bingyao`

- Balanced density
- More structured section rhythm
- Fits a complete, standard academic homepage

Suggested pairings:

- `font_style: serif`
- slightly cooler accent such as `#66788a`
- `show.projects: true`
- `show.teaching: true`

### Extra Tuning Knobs

- `accent_color`: controls links, small separators, and light emphasis
- `font_style`: `serif`, `sans`, or `mixed`
- `show.profile_photo`: hide for a more text-forward page
- `show.publication_abstracts`: make publication entries shorter or fuller
- `show.selected_publications_on_home`: keep the homepage more minimal or more informative
- `show.news`, `show.projects`, `show.teaching`: simplify or expand the site structure

## Minimal Changes I Need To Make Before Publishing

1. Update the identity fields in `_config.yml`:
   - `title`
   - `url`
   - `author.name`
   - `author.position`
   - `author.affiliation`
   - `email`
2. Replace `assets/images/avatar-placeholder.svg` with your real profile image or set `show.profile_photo: false`.
3. Replace the sample entries in `_data/publications.yml`, `_data/projects.yml`, `_data/news.yml`, `_data/experience.yml`, and `_data/teaching.yml`.
4. Update the homepage text in `index.md`.
5. Replace the sample Open Graph image in `assets/images/og-card.svg`.
6. If you use a custom domain, add a `CNAME` file and configure DNS.
7. Optionally replace the `CV` social link with a PDF URL when you upload your final CV.

## Notes

- `assets/files/` is included as a convenient location for a future CV PDF or other downloadable documents.
- The site does not require JavaScript for core functionality.
- The publication list uses native HTML `<details>` elements for BibTeX so it stays lightweight.

## References

This scaffold follows the official GitHub Pages Jekyll guidance and the currently supported dependency/plugin set:

- [About GitHub Pages and Jekyll](https://docs.github.com/github/working-with-github-pages/about-github-pages-and-jekyll)
- [Testing your GitHub Pages site locally with Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll)
- [Dependency versions for GitHub Pages](https://pages.github.com/versions/)
