---
layout: page
title: 解説付き参考文献
description: ""
---

{% capture pageDirs %}{% for page in site.pages %}{% if page.dir contains 'bib' %}{% if page.dir != '/bib/' %}{{ page.dir }}{% unless forloop.last %},{% endunless %}{% endif %}{% endif %}{% endfor %}{% endcapture %}

{% assign sortedPageDirs = pageDirs | split:',' | sort %}

<ul>
{% for pageDir in sortedPageDirs %}
{% for page in site.pages %}
{% if page.dir contains 'bib' %}{% if page.dir != '/bib/' %}
{% if page.dir == pageDir%}
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
