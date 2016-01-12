---
layout: page
title: LazyLoad.md
---

原文: http://www.martinfowler.com/eaaCatalog/lazyLoad.html

*必要なデータ全てを持つのではなく、その取得方法を知っているオブジェクト*

解説の全文は『PofEAA』 **200** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/lazyLoadSketch.gif)

データベースからデータをメモリ上にロードするとき、関心のあるオブジェクトだけでなく、それに関連するオブジェクトも同時に読み込むように設計してあると便利である。開発者にとってオブジェクトのロードが楽になり、必要なすべてのオブジェクトを明示的にロードする必要がなくなる。

しかし、この方法を採用した結果、ひとつのオブジェクトのロードが、関係する多数のオブジェクトのロードを引き起こしてしまう。そのうちの一部しか必要でない場合、これは性能上の問題となりうる。

Lazy Load (遅延ロード)ではロード処理をしばらく保留し、オブジェクト構造にしるしをつけておくことで、データが必要になった時に初めてロードするようにする。物事を後回しにしておくと、それをやらなくてよくなったときに得をする。

Lazy Load はいくつかの種類に分けられる。Lazy Initialization は、通常 null のような特別な値を用いてあるフィールドがロードされていないことを示す。フィールドへのアクセスが発生すると、その値をチェックして、まだロードされていないときはロードする。Virtual Proxy は、本物のオブジェクトと同じインタフェースを持つオブジェクトである。いずれかのメソッドが初めて呼ばれたときに本物のオブジェクトをロードし、処理を委譲する。Value Holder は getValue メソッドを持つオブジェクトである。クライアントが実際のオブジェクトを取得するため getValue を初めて呼び出した時にロードを行う。Ghost はデータを持っていないオブジェクトである。最初にそのメソッドを呼び出したときに、Ghost はすべてのデータをそのフィールドにロードする。

これらのアプローチは少しずつ異なっており、さまざまなトレードオフを持つ。組み合わせて利用することもある。本書には、これら全てを説明し例を挙げている。

*An object that doesn't contain all of the data you need but knows how to get it.*

For loading data from a database into memory it's handy to design things so that as you load an object of interest you also load the objects that are related to it. This makes loading easier on the developer using the object, who otherwise has to load all the objects he needs explicitly.

However, if you take this to its logical conclusion, you reach the point where loading one object can have the effect of loading a huge number of related objects - something that hurts performance when only a few of the objects are actually needed.

A Lazy Load interrupts this loading process for the moment, leaving a marker in the object structure so that if the data is needed it can be loaded only when it is used. As many people know, if you're lazy about doing things you'll win when it turns out you don't need to do them at all.

There are four main varieties of lazy load. **Lazy Initialization*' uses a special marker value (usually null) to indicate a field isn't loaded. Every access to the field checks the field for the marker value and if unloaded, loads it. '''Virtual Proxy''' is an object with the same interface as the real object. The first time one of its methods are called it loads the real the object and then delegates. '''Value Holder''' is an object with a getValue method. Clients call getValue to get the real object, the first call triggers the load. A '*ghost** is the real object without any data. The first time you call a method the ghost loads the full data into its fields.

These approaches vary somewhat subtly and have various trade-offs. You can also use combination approaches. The book contains the full discussion and examples.
