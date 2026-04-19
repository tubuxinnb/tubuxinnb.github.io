---
title: Publications
intro: "Publications maintained in `_data/publications.yml`."
---

{% if site.data.publications.size > 0 %}
{% include publication-list.html items=site.data.publications show_abstracts=site.show.publication_abstracts %}
{% else %}
<p class="empty-state">Publications will be added soon.</p>
{% endif %}
