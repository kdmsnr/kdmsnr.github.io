---
layout: page
title: Blog
order: 1
group: navigation
---

<ul>
  {% assign posts = site.posts | sort:'date' | reverse %}
  {% for post in posts %}
    <li>
      <span class="post-meta">{{ post.date | date: "%Y-%m-%d"}}</span>
      <a href="{{ post.url | replace: 'index.html', ''}}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>


## その他のブログ

* [東京工業大学エンジニアリングデザインプロジェクト – Medium](https://medium.com/titech-eng-and-design)
