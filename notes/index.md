---
layout: page
title: メモ
description: ""
order: 10
---

{% capture pageinfo %}{% for page in site.pages %}{% if page.dir contains 'notes' %}{% if page.dir != '/notes/' %}{{ page.title }}{% unless forloop.last %},{% endunless %}{% endif %}{% endif %}{% endfor %}{% endcapture %}

{% assign sortedPages = pageinfo | split:',' | sort %}

<ul>
{% for p in sortedPages %}
{% for page in site.pages %}
{% if page.dir contains 'notes' %}{% if page.dir != '/notes/' %}
{% if page.title == p %}
<li><a href="{{ page.dir }}">{{ page.title }}</a></li>
{% endif %}
{% endif %}{% endif %}
{% endfor %}
{% endfor %}
</ul>

## TBD

* アルゴリズム
* デザインパターン
* オブジェクト指向設計
* データ分析
* アーキテクチャ
* ドメイン分析
* データベース
