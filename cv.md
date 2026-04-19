---
title: CV
intro: "A concise CV page. A PDF version can be added later."
---

## Current affiliation

{% if site.author.department and site.author.department != "" and site.author.affiliation and site.author.affiliation != "" %}
{{ site.author.department }}, {{ site.author.affiliation }}.
{% elsif site.author.department and site.author.department != "" %}
{{ site.author.department }}.
{% elsif site.author.affiliation and site.author.affiliation != "" %}
{{ site.author.affiliation }}.
{% else %}
<p class="empty-state">Affiliation details will be added soon.</p>
{% endif %}

{% if site.author.position and site.author.position != "" %}
Current role: {{ site.author.position }}.
{% endif %}

{% if site.author.advisor and site.author.advisor != "" %}
{{ site.author.advisor }}.
{% endif %}

## Research interests

{% for interest in site.author.research_interests %}
- {{ interest }}
{% endfor %}

## Education and Experience

{% assign education_items = site.data.education %}
{% assign experience_items = site.data.experience %}

{% if education_items.size > 0 or experience_items.size > 0 %}
{% if education_items.size > 0 %}
### Education

{% include experience-list.html items=education_items show_section=false %}
{% endif %}

{% if experience_items.size > 0 %}
### Experience

{% include experience-list.html items=experience_items show_section=false %}
{% endif %}
{% else %}
<p class="empty-state">Education and Experience details will be added soon.</p>
{% endif %}

{% if site.show.teaching and site.data.teaching.size > 0 %}
## Teaching and service

{% include teaching-list.html items=site.data.teaching %}
{% endif %}

## Contact

- Email: [{{ site.email | replace: "@", "_AT_" }}](mailto:{{ site.email }})
{% if site.author.department and site.author.department != "" and site.author.affiliation and site.author.affiliation != "" %}
- Affiliation: {{ site.author.department }}, {{ site.author.affiliation }}
{% elsif site.author.department and site.author.department != "" %}
- Affiliation: {{ site.author.department }}
{% elsif site.author.affiliation and site.author.affiliation != "" %}
- Affiliation: {{ site.author.affiliation }}
{% endif %}
{% if site.author.location and site.author.location != "" %}
- Location: {{ site.author.location }}
{% endif %}
