---
layout: page
title: 参考文献
description: ""
order: 100
---

{% capture pageinfo %}{% for page in site.pages %}{% if page.dir contains 'bib' %}{% if page.dir != '/bib/' %}{{ page.title }}{% unless forloop.last %},{% endunless %}{% endif %}{% endif %}{% endfor %}{% endcapture %}

{% assign sortedPages = pageinfo | split:',' | sort %}

<ul>
{% for p in sortedPages %}
{% for page in site.pages %}
{% if page.dir contains 'bib' %}{% if page.dir != '/bib/' %}
{% if page.title == p %}
<li><a href="{{ page.dir }}">{{ page.title }}</a></li>
{% endif %}
{% endif %}{% endif %}
{% endfor %}
{% endfor %}
</ul>

## あとでまとめる

* コーチング
* 問題解決手法
* 創造プロセス
* 文系プログラマのための数学
* テスト
