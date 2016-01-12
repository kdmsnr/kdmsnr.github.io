---
layout: page
title: SerializedLOB.md
---

原文: http://www.martinfowler.com/eaaCatalog/serializedLOB.html

*オブジェクト同士の関係をシリアライズして、データベースに格納可能なひとつのラージオブジェクト(LOB)にする*

解説の全文は『PofEAA』 **272** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/serializedLobSketch.gif)

オブジェクトモデルは小さなオブジェクトの複雑な集まりになることが多い。この構造のもつ情報のほとんどは、オブジェクト内のデータではなく、これらオブジェクト間のリンクによって表される。例えばすべての顧客の組織階層を格納することを考えると、オブジェクトモデルの場合はコンポジションパターンを用いて自然に組織階層をあらわすことができ、子や兄弟、親を取得するためのメソッドを容易に付け加えることができる。

これを関係スキーマであらわすのは容易なことではない。基本スキーマそのものは簡単で、親への外部参照を持つテーブルだけである。しかし、このスキーマに対する操作は多くの JOIN が必要になり、遅くなって手に負えない。

オブジェクトは必ずしもテーブルの列に格納される必要はない。シリアライズして格納する方法もある。オブジェクト同士の関係(オブジェクトグラフ)の全てをひとつのラージオブジェクト(LOB)として書き出し、テーブルに格納する。このシリアラズされたLOBは、Mement[Gang of Four]の形をとる。

*Saves a graph of objects by serializing them into a single large object (LOB), which it stores in a database field.*

Object models often contain complicated graphs of small objects. Much of the information in these structures isn't in the objects but in the links between them. Consider storing the organization hierarchy for all your customers. An object model quite naturally shows the composition pattern to represent orga-nizational hierarchies, and you can easily add methods that allow you to get ancestors, siblings, descendents, and other common relationships.

Not so easy is putting all this into a relational schema. The basic schema is simple - an organization table with a parent foreign key, however, its manipula-tion of the schema requires many joins, which are both slow and awkward.

Objects don't have to be persisted as table rows related to each other. Another form of persistence is serialization, where a whole graph of objects is written out as a single large object (LOB) in a table this Serialized LOB then becomes a form of memento [Gang of Four].
