---
title: Teaching
intro: "Teaching, mentoring, and service activities."
---

{% if site.show.teaching and site.data.teaching.size > 0 %}
  {% include teaching-list.html items=site.data.teaching %}
{% else %}
  <p class="empty-state">Teaching and service entries will be added later if needed.</p>
{% endif %}
