---
layout: page
title: 解説付き参考文献
description: ""
---

<ul>
{% for page in site.pages %}
  {% if page.dir contains 'bib' %}
  {% if page.dir != '/bib' %}
<li><a href="{{ page.dir }}">{{ page.title }}</a></li>
  {% endif %}
  {% endif %}
{% endfor %}
</ul>

## あとでまとめる

* ファシリテーション
* コーチング
* 問題解決手法
* 創造プロセス
