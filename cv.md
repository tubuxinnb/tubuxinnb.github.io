---
title: CV
intro: "A concise academic CV. You can replace this page with a PDF link later if you prefer."
---

## Current position

PhD student in Computer Science at Redwood University.

## Research interests

{% for interest in site.author.research_interests %}
- {{ interest }}
{% endfor %}

## Education and experience

{% include experience-list.html items=site.data.experience %}

{% if site.show.teaching %}
## Teaching and service

{% include teaching-list.html items=site.data.teaching %}
{% endif %}

## Contact

- Email: [{{ site.email }}](mailto:{{ site.email }})
- Affiliation: {{ site.author.department }}, {{ site.author.affiliation }}
- Location: {{ site.author.location }}
