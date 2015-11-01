---
layout: default
---

<div style="float:right">
<script language="javascript" type="text/javascript" src="http://b.hatena.ne.jp/js/widget.js" charset="utf-8"></script>
<script language="javascript" type="text/javascript">
Hatena.BookmarkWidget.url   = "kdmsnr.com";
Hatena.BookmarkWidget.title = "エントリー";
Hatena.BookmarkWidget.sort  = "count";
Hatena.BookmarkWidget.width = 0;
Hatena.BookmarkWidget.num   = 5;
Hatena.BookmarkWidget.theme = "default";
Hatena.BookmarkWidget.load();
</script>
</div>

* [Amazon's author page](http://www.amazon.co.jp/-/e/B00429JIAI)
* [slideshare](http://www.slideshare.net/kdmsnr)
* [Waicrew Inc.](http://www.waicrew.com)

<ul>
  {% for post in site.posts %}
    <li>
      <span class="post-meta">{{ post.date | date: "%Y-%m-%d"}}</span>
      <a href="{{ post.url | replace: 'index.html', ''}}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
