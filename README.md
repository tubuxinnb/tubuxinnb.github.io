## Personal Homepage

Source for [turbothinking.cn](https://turbothinking.cn), a Jekyll-based academic homepage deployed with GitHub Pages.

### Where things live

| What | Where |
| --- | --- |
| Name, position, affiliation, advisor, research interests, email, social links | `_config.yml` (`author`, `email`, `social_links`) |
| About text on the homepage | `index.md` |
| Publications | `_data/publications.yml` |
| Education and experience | `_data/education.yml`, `_data/experience.yml` |
| News, projects, teaching | `_data/news.yml`, `_data/projects.yml`, `_data/teaching.yml` |
| Navigation bar | `_data/navigation.yml` |
| Paper PDFs | `assets/files/` |
| Profile photo, favicons, link-preview card | `assets/images/` |
| Templates and styles | `_layouts/`, `_includes/`, `assets/css/main.scss` |

A few conventions:

- Publications are listed newest first. Mark equal contribution with `*` in `authors` and the footnote appears automatically. Empty `code_link` / `ppt_link` fields are hidden, and `selected: true` also shows a paper on the homepage.
- Education and experience entries with `home_featured: true` appear on the homepage; every entry appears on the CV page.
- The email address is displayed as `name_AT_domain` and is deliberately not a `mailto:` link, so the plain address never appears on the site.
- Sections are switched on and off under `show:` in `_config.yml`. For `projects` and `teaching` the switch also decides whether the page is built at all (see `_plugins/feature_flags.rb`).
- `assets/images/og-card.png` is the 1200×630 preview image shown when a link to the site is shared. It is a static image, so regenerate it whenever the name, position, or affiliation changes.

### Local preview with Docker (recommended)

The Docker image uses Ruby `3.3`, the same as the GitHub Actions build, and Bundler switches itself to the version recorded in `Gemfile.lock`.

1. Build the image:

   ```bash
   docker compose build
   ```

2. Start the local preview server:

   ```bash
   docker compose up
   ```

3. Open:

   - `http://127.0.0.1:4000`
   - LiveReload runs on port `35729`

The container bind-mounts the repository, so content and style edits rebuild automatically. `--force_polling` is enabled because file watching is more reliable on macOS Docker this way.

The published ports are bound to `127.0.0.1`, so the preview server is reachable only from this machine by default.

If you change `Gemfile` or `Gemfile.lock`, rebuild the image:

```bash
docker compose build
```

To stop the preview server:

```bash
docker compose down
```

### Native local workflow

The build (Jekyll 4 with Dart Sass) needs Ruby `3.2` or newer, so the macOS system Ruby is too old; install a current Ruby first, for example with Homebrew or rbenv.

```bash
bundle install
bundle exec jekyll serve
```

### Deployment

- Every push to `main` runs `.github/workflows/pages.yml`, which builds the site with Jekyll 4 and deploys it to GitHub Pages. Pull requests only run the build, so a broken change shows up as a failed check before it is merged.
- In the repository's **Settings → Pages → Build and deployment**, **Source** must be set to **GitHub Actions**. With "Deploy from a branch", GitHub also runs its own legacy Jekyll build on every push, and the two deployments overwrite each other.
- The custom domain `turbothinking.cn` is set in the same Settings page. The `CNAME` file mirrors it.
- `ec91ec1ec8cb239326ab1684c6cb47b5.txt` is a domain verification file. Keep it at the repository root.
- Dependabot (`.github/dependabot.yml`) opens a monthly pull request for gem updates and another for GitHub Actions updates.
