---
layout: page
title: RecordSet.md
---

原文: http://www.martinfowler.com/eaaCatalog/recordSet.html

*An in-memory representation of tabular data.*

*テーブルデータのメモリ上での表現*

解説の全文は『PofEAA』 **508** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/recordSetSketch.gif)

In the last twenty years, the dominant way to represent data in a database has been the tabular relational form. Backed by database companies big and small, and a fairly standard query language, almost every new development I see uses relational data.

過去20年、データベースにおけるデータを表現するための支配的な方法は、リレーショナルなテーブル形式だった。大小のデータベースベンダや標準の問い合わせ言語に指示されたことで、新しい開発は全てリレーショナルデータを用いているように見える。

On top of this has come a wealth of tools for building UI's quickly. These data-aware UI frameworks rely on the fact that the underlying data is rela-tional, and they provide UI widgets of various kinds that make it easy to view and manipulate this data with almost no programming.

この上位層には、UIを素早く構築するためのツールが豊富にある。このデータを強く意識したUIフレームワークは、ベースとなるデータがリレーショナルであるという事実に依存し、また様々な種類のUIウィジェットを提供することでプログラミングをしないでも簡単にこのデータを表示したり操作できるようになる。

The dark side of these environments is that, while they make display and simple updates ridiculously easy, they have no real facilities in which to place business logic. Any validations beyond "is this a valid date," and any business rules or computations have no good place to go. Either they're jammed into the database as stored procedures or they're mingled with UI code.

こうした状況の悪い面は、データの表示や単純なデータ更新を驚くほど容易にしている一方で、ビジネスロジックを配置するインフラが用意されていない、ということだ。"正しい日付"以上のバリデーションやビジネスルール、計算処理を実行する隙間が用意されていないのだ。そのため、ストアドプロシージャとしてデータベースに埋め込まれるか、あるいはUIコードとごっちゃになってしまうのだ。

The idea of the Record Set is to give you your cake and let you eat it, by pro-viding an in-memory structure that looks exactly like the result of an SQL query but can be generated and manipulated by other parts of the system.

このRecord Setというアイデアは、SQL問い合わせ結果のように正確に見え、システム上の他の部分から生成したり操作したりが可能なメモリ上のデータ構造を提供することでケーキを与え食べてもらおうということなのである。

(translated by money@andore.com)
