# Pages whose front matter sets `feature_flag: <name>` are only built when
# `show.<name>` is true in _config.yml, matching how the navigation hides them.
Jekyll::Hooks.register :site, :post_read do |site|
  show = site.config["show"] || {}
  site.pages.reject! do |page|
    flag = page.data["feature_flag"]
    flag && show[flag] != true
  end
end
