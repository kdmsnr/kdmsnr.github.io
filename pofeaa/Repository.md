---
layout: page
title: Repository.md
---

原文: http://www.martinfowler.com/eaaCatalog/repository.html

**by Edward Hieatt and Rob Mee**

*ドメインオブジェクトにアクセスするためのコレクション ライクなインターフェースを使って、ドメイン—データ マッピングレイヤ間の仲介を行う。*

解説の全文は『PofEAA』 **322** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/repositorySketch.gif)

複雑なドメインモデルのあるシステムは、ドメイン オブジェクトをデータベースアクセスコードから分離するDataMapper(165)などのレイヤの恩恵を受けやすい。
そのようなシステムでは、クエリ構文を構築するマッピングレイヤ上にもうひとつ抽象的なレイヤを設けると良い。
ドメインのクラスやクエリが膨大になれば、このことは重要になってくる。
特にこの場合、レイヤを追加することでクエリロジックの重複が最小化される。
