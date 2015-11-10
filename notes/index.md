---
layout: page
title: メモ
description: ""
---

{% capture pageDirs %}{% for page in site.pages %}{% if page.dir contains 'notes' %}{% if page.dir != '/notes/' %}{{ page.dir }}{% unless forloop.last %},{% endunless %}{% endif %}{% endif %}{% endfor %}{% endcapture %}

{% assign sortedPageDirs = pageDirs | split:',' | sort %}

<ul>
{% for pageDir in sortedPageDirs %}
{% for page in site.pages %}
{% if page.dir contains 'notes' %}{% if page.dir != '/notes/' %}
{% if page.dir == pageDir%}
<li><a href="{{ page.dir }}">{{ page.title }}</a></li>
{% endif %}
{% endif %}{% endif %}
{% endfor %}
{% endfor %}
</ul>
