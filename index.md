---
layout: page
title: kdmsnr.com
---

{% include profile.html %}

### 所属学会
* ACM
* 経営情報学会（JASMIN）

<!--
* 情報処理学会（IPSJ）
* 経営行動科学学会（JAAS）
-->

## Blog

<ul>
  {% for post in site.posts %}
    <li>
      <span class="post-meta">{{ post.date | date: "%Y-%m-%d"}}</span>
      <a href="{{ post.url | replace: 'index.html', ''}}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

## Slide

<iframe src="http://www.slideshare.net/kdmsnr/slideshelf" width="615px" height="470px" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:none;" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>

## Video

* 2015-06-26「XPは何を伝えたかったんだと思う？」

<iframe width="560" height="315" src="https://www.youtube.com/embed/YRFWWS_2Epo" frameborder="0" allowfullscreen></iframe>

* 2010-02-25「ユーザーストーリービギンズナイト」

<iframe width="480" height="360" src="https://www.youtube.com/embed/Yq6c92wppsQ" frameborder="0" allowfullscreen></iframe>

## Hot entries

<div>
<script language="javascript" type="text/javascript" src="http://b.hatena.ne.jp/js/widget.js" charset="utf-8"></script>
<script language="javascript" type="text/javascript">
Hatena.BookmarkWidget.url   = "kdmsnr.com";
Hatena.BookmarkWidget.title = "エントリー";
Hatena.BookmarkWidget.sort  = "count";
Hatena.BookmarkWidget.width = 0;
Hatena.BookmarkWidget.num   = 7;
Hatena.BookmarkWidget.theme = "default";
Hatena.BookmarkWidget.load();
</script>
</div>


## misc.

* [bliki-ja](http://bliki-ja.github.io/)
* [PofEAA](http://bliki-ja.github.io/pofeaa/)
