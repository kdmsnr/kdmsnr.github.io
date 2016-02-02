---
layout: pofeaa
title: Registry.md
---

原文: http://www.martinfowler.com/eaaCatalog/registry.html

*A well-known object that other objects can use to find common objects and services.*

*他のオブジェクトが共通的なオブジェクトやサービスを見つけるのに利用できる、よく知られたオブジェクト*

解説の全文は『PofEAA』 **480** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/registrySketch.gif)

When you want to find an object you usually start with another object that has an association to it, and use the association to navigate to it. Thus, if you want to find all the orders for a customer, you start with the customer object and use a method on it to get the orders. However, in some cases you won't have an appropriate object to start with. You may know the customer's ID number but not have a reference. In this case you need some kind of lookup method - a finder - but the question remains: How do you get to the finder?

あるオブジェクトを見つけたいとき、通常はそのオブジェクトと関連をもっているオブジェクトから探し始め、目的のオブジェクトに辿り着くために、その関連を利用する。よって、もしある顧客のための全てのオーダを見つけたかったら、カスタマオブジェクトから探し始め、オーダを取得するためにカスタマオブジェクト上のメソッドを叩く。しかしながら、探索を開始するのに適当なオブジェクトがないことがままある。カスタマのIDは分かるが、リファレンスがないのかもしれない。そういった場合、ルックアップするメソッド、つまりファインダが必要になるが、こんな問題が残る。じゃ、どうやってそのファインダを取得するんだ?

A Registry is essentially a global object, or at least it looks like one - even if it isn't as global as it may appear.

registryは本質的にはグローバルオブジェクトだ、あるいはグローバルに見えてなくても少なくともそれに似たものだ。

(translated by money@andore.com)
