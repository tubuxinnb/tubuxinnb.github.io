---
title: Projects
intro: "Projects maintained in `_data/projects.yml`."
---

{% if site.data.projects.size > 0 %}
{% include project-list.html items=site.data.projects %}
{% else %}
<p class="empty-state">Projects will be added soon.</p>
{% endif %}
