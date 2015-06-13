---
layout: page
title: 翻訳あれこれ
description: ""
---

* [スクラムガイド](http://www.scrumguides.org/download.html)
* [LEGOを使ったスクラムシミュレーション（レゴスクラム）](http://www.lego4scrum.com/p/scrum-with-lego.html)
* [Martin Fowler's Bliki](http://capsctrl.que.jp/kdmsnr/wiki/bliki/)

<ul>
{% for page in site.pages %}
  {% if page.dir contains 'translations'%}
  {% if page.dir != '/translations' %}
<li><a href="{{ page.dir }}">{{ page.title }}</a></li>
  {% endif %}
  {% endif %}
{% endfor %}
</ul>

書籍の翻訳については、Amazonの著者ページへ。

→ http://www.amazon.co.jp/-/e/B00429JIAI
