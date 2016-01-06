---
layout: page
title: 翻訳
description: ""
---

## 翻訳したもの
<ul>
{% for page in site.pages %}
  {% if page.dir contains 'translations'%}
  {% if page.dir != '/translations/' and page.dir != '/translations/readings/' %}
<li><a href="{{ page.dir }}">{{ page.title }}</a></li>
  {% endif %}
  {% endif %}
{% endfor %}
</ul>

## 翻訳したもの（外部サイトにあるもの）
* [スクラムガイド](http://www.scrumguides.org/download.html)
* [Nexusガイド](https://www.scrum.org/Resources/The-Nexus-Guide/Downloads)
* [LEGOを使ったスクラムシミュレーション（レゴスクラム）](http://www.lego4scrum.com/p/scrum-with-lego.html)
* [Martin Fowler's Bliki](http://bliki-ja.github.io/)

## 翻訳したもの（書籍）

[Amazonの著者ページ](http://www.amazon.co.jp/-/e/B00429JIAI)を参照。

## これから翻訳したいなあと思うもの

* [翻訳査読](readings)
