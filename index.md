---
layout: default
---

## About

![](/images/kdmsnr.jpg)
![](/images/kdmsnr-avator.jpg)

* [ワイクル株式会社](http://www.waicrew.com)（取締役、プログラマ、コンサルタント）
* [東京工業大学大学院理工学研究科共通講座](http://t2r2.star.titech.ac.jp/cgi-bin/researcherinfo.cgi?q_researcher_content_number=CTT100692413)（特任講師）

リーンスタートアップを用いた新規事業開発や、アジャイルソフトウェア開発手法の導入支援に従事。支援先は、情報通信業、製造業、卸売業、金融業、不動産業、飲食店、小売業、広告業、教育・学習支援業など多数。大学ではアントレプレナー教育（デザイン思考の講義）を担当。リーンスタートアップ、アジャイル開発、組織変革、チームビルディング、プログラミングに関する[翻訳書を数多く手がけている](http://www.amazon.co.jp/-/e/B00429JIAI)。特に『リーダブルコード』（オライリー・ジャパン）は、ジュンク堂書店「このコンピュータ書がすごい！」で3年連続1位。5万部突破している。

## Video

* 2015-06-26「XPは何を伝えたかったんだと思う？」

<iframe width="560" height="315" src="https://www.youtube.com/embed/YRFWWS_2Epo" frameborder="0" allowfullscreen></iframe>

* 2010-02-25「ユーザーストーリービギンズナイト」

<iframe src="https://channel9.msdn.com/Blogs/tomohn/Suc3rum11/player" width="560" height="315" allowFullScreen frameBorder="0"></iframe>

## Blog

<ul>
  {% for post in site.posts %}
    <li>
      <span class="post-meta">{{ post.date | date: "%Y-%m-%d"}}</span>
      <a href="{{ post.url | replace: 'index.html', ''}}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

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
