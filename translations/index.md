---
layout: page
title: 翻訳
description: ""
---

<ul>
{% for page in site.pages %}
  {% if page.dir contains 'translations'%}
  {% if page.dir != '/translations/' %}
<li><a href="{{ page.dir }}">{{ page.title }}</a></li>
  {% endif %}
  {% endif %}
{% endfor %}
</ul>

## 外部サイト
* [スクラムガイド](http://www.scrumguides.org/download.html)
* [LEGOを使ったスクラムシミュレーション（レゴスクラム）](http://www.lego4scrum.com/p/scrum-with-lego.html)
* [Martin Fowler's Bliki](http://bliki-ja.github.io/)

## 書籍

書籍の翻訳については、[Amazonの著者ページ](http://www.amazon.co.jp/-/e/B00429JIAI)を参照。
