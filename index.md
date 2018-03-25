---
layout: default
title: kdmsnr.com
---

# プロフィール

{% include profile.html %}

# 所属

* <a href="http://www.waicrew.com">ワイクル株式会社</a>（代表取締役）
* 東京工業大学 環境・社会理工学院 融合理工学系（<a href="http://t2r2.star.titech.ac.jp/cgi-bin/researcherinfo.cgi?q_researcher_content_number=CTT100692413">特任講師</a>）

# 職歴

* 2017年9月-現在｜ワイクル株式会社（代表取締役）
* 2015年6月-現在｜東京工業大学（特任講師）
* 2008年6月-2017年8月｜ワイクル株式会社（取締役）
* 2005年10月-2008年7月｜株式会社ツインスパーク（プログラマ）
* 2003年11月-2005年10月｜日揮情報ソフトウェア（エンジニア）
* 2001年4月-2003年10月｜株式会社内田洋行（エンジニア）

{% comment %}

# Blog

<ul>
  {% for post in site.posts limit:5 %}
    <li>
      <span class="post-meta">{{ post.date | date: "%Y-%m-%d"}}</span>
      <a href="{{ post.url | replace: 'index.html', ''}}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

{% endcomment %}

# その他のサイト

* [bliki-ja](http://bliki-ja.github.io/) ｜ Martin Fowler's Bliki の翻訳
* [PofEAA](http://bliki-ja.github.io/pofeaa/)
* [Re:VIEW](https://github.com/kmuto/review) ｜コミッターとして開発に参加しているRuby製の出版システム
* [東京工業大学エンジニアリングデザインプロジェクト – Medium](https://medium.com/titech-eng-and-design)
* [いろいろ翻訳したもの](/translations/)
