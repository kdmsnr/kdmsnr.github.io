---
layout: default
---

* [Amazon's author page](http://www.amazon.co.jp/-/e/B00429JIAI)
* [slideshare](http://www.slideshare.net/kdmsnr) 

<ul>
  {% for post in site.posts %}
    <li>
      {{ post.date | date: "%Y-%m-%d"}}
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

