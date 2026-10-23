---
title: Projects
# Entries live in _data/projects.yml. The page is only built when `show.projects` is true.
feature_flag: projects
---

{% if site.data.projects.size > 0 %}
{% include project-list.html items=site.data.projects %}
{% else %}
<p class="empty-state">Projects will be added soon.</p>
{% endif %}
