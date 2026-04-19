---
title: Contact
intro: "Contact details and a few practical notes."
---

I am happy to connect about LLM systems, computer architecture, and related projects.

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

## Practical notes

- The fastest way to reach me is by email.
- Please include a short note about the topic you want to discuss.
