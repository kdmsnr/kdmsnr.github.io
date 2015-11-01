---
layout: page
title: メモ
description: ""
---

<ul>
{% for page in site.pages %}
  {% if page.dir contains 'notes' %}
  {% if page.dir != '/notes' %}
<li><a href="{{ page.dir }}">{{ page.title }}</a></li>
  {% endif %}
  {% endif %}
{% endfor %}
</ul>

