## Personal Homepage

This repository hosts a Jekyll-based academic homepage.

### Recommended local workflow: Docker

The host machine currently uses an older system Ruby, so the most reliable way to preview the site locally is to run Jekyll in Docker. The Docker setup uses Ruby `3.3` and Bundler `2.4.22`, which also matches the GitHub Pages workflow.

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

The container bind-mounts the repository, so content and style edits will rebuild automatically. `--force_polling` is enabled because file watching is more reliable on macOS Docker this way.

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

The repository can still be run without Docker, but that depends on your host Ruby/Bundler setup.

```bash
bundle install
bundle exec jekyll serve
```

If you want native and CI behavior to match closely, prefer Docker.

### GitHub Pages

GitHub Actions builds the site with Ruby `3.3` and Bundler `2.4.22`. The custom domain should be configured in the repository Pages settings.
