---
layout: page
title: ConcreteTableInheritance.md
---

原文: http://www.martinfowler.com/eaaCatalog/concreteTableInheritance.html

*Represents an inheritance hierarchy of classes with one table per concrete class in the hierarchy.*

*クラスの継承構造を、ヒエラルキー内の具象クラスごとに1個のテーブルを使って表現する。*

解説の全文は『PofEAA』 **293** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/leafInheritanceTableSketch.gif)

As any object purist will tell you, relational databases don't support inherit-ance - a fact that complicates object-relational mapping. Thinking of tables from an object instance point of view, a sensible route is to take each object in memory and map it to a single database row. This implies Concrete Table Inher-itance, where there's a table for each concrete class in the inheritance hierarchy.

オブジェクト純正主義者は言う。関係データベースは継承をサポートしない—事実、それがオブジェクト関係マッピングを難しくしている。オブジェクトのインスタンスの視点からテーブルのことを考えてみると、メモリ上にある各オブジェクトをデータベースの単一行にマップするのは賢いやり方だ。これは[Concrete Table Inheritance](ConcreteTableInheritance) を意味していて、継承ヒエラルキー内の具象クラスそれぞれに対してテーブルが存在する。


I'll confess to having had some difficulty naming this pattern. Most people think of it as leaf oriented since you usually have one table per leaf class in a hierarchy. Following that logic, I could call this pattern leaf table inheritance, and the term "leaf" is often used for this pattern. Strictly, however, a concrete class that isn't a leaf usually gets a table as well, so I decided to go with the more correct, if less intuitive term.

このパターンを名付けるのには少してこずったことを告白しておく。多くの人はそれをリーフ指向だと考える。それは、ヒエラルキーの中のリーフクラスごとに1個のテーブルを持つのが普通だからだ。そのロジックに従えばリーフテーブル継承と呼ぶこともできた。また "leaf" という用語もこのパターンにはよく使われる。しかし厳密に言えば、リーフではない具象クラスも通常同じようにテーブルをもつので、直感的な用語ではなくとも正確になるようにした。

translated by cept <ceptcept@hotmail.com>
