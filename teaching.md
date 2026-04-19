---
title: Teaching
intro: "Teaching, mentoring, and service activities."
---

{% if site.show.teaching %}
  {% include teaching-list.html items=site.data.teaching %}
{% else %}
  <p class="empty-state">Teaching is currently hidden in `_config.yml`.</p>
{% endif %}
