---
layout: default
---

* [Amazon's author page](http://www.amazon.co.jp/-/e/B00429JIAI)
* [slideshare](http://www.slideshare.net/kdmsnr)
* [Waicrew Inc.](http://www.waicrew.com)

<ul>
  {% for post in site.posts %}
    <li>
      <span class="post-meta">{{ post.date | date: "%Y-%m-%d"}}</span>
      <a href="{{ post.dir | prepend: site.baseurl}}/">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
