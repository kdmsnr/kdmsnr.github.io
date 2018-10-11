---
layout: page
title: 翻訳
description: ""
order: 4
group: navigation
---

書籍の翻訳については、[Amazonの著者ページ](http://www.amazon.co.jp/-/e/B00429JIAI)を参照してください。

# 翻訳したもの
<ul>
{% for page in site.pages %}
  {% if page.dir contains 'translations'%}
  {% if page.dir != '/translations/' and page.dir != '/translations/readings/' %}
<li><a href="{{ page.dir }}">{{ page.title }}</a></li>
  {% endif %}
  {% endif %}
{% endfor %}
</ul>

# 翻訳したもの（外部サイトにあるもの）
* [スクラムガイド](http://www.scrumguides.org/download.html)
* [Nexusガイド](https://www.scrum.org/Resources/The-Nexus-Guide/Downloads)
* [LEGOを使ったスクラムシミュレーション（レゴスクラム）](http://www.lego4scrum.com/translations/)
* [eduScrumガイド](http://eduscrum.nl/en/links)
* [Martin Fowler's Bliki](http://bliki-ja.github.io/)
