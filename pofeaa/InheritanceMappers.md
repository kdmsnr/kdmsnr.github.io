---
layout: pofeaa
title: InheritanceMappers.md
---

原文: http://www.martinfowler.com/eaaCatalog/inheritanceMappers.html

*A structure to organize database mappers that handle inheritance hierarchies.*

*継承ヒエラルキーを制御するようなデータベースマッパーを組織化する構造*

解説の全文は『PofEAA』 **302** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/inheritanceMappersSketch.gif)

When you map from an object-oriented inheritance hierarchy in memory to a relational database you have to minimize the amount of code needed to save and load the data to the database. You also want to provide both abstract and concrete mapping behavior that allows you to save or load a superclass or a subclass.

メモリ上にあるオブジェクト指向の継承ヒエラルキーを関係データベースに対応付けるとき、データをデータベースにセーブしたりロードしたりするのに必要なコード量を最少にしなければならない。また、スーパークラスやサブクラスのセーブ、ロードを可能にするような、抽象ないし具象のマッピング動作も欲しいところだろう。

Although the details of this behavior vary with your inheritance mapping scheme (Single Table Inheritance (278), Class Table Inheritance (285), and Concrete Table Inheritance (293)) the general structure works the same for all of them.

この動作の詳細は継承マッピングスキーマ(SingleTableInheritance(278)、ClassTableInheritance(285)、ConcreteTableInheritance(293))によって様々だが、一般的構造はこれら全てに等しく作用する。
