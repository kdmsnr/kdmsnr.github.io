---
layout: page
title: ServiceStub.md
---

原文: http://www.martinfowler.com/eaaCatalog/serviceStub.html

**by David Rice**

*Removes dependence upon problematic services during testing. WSDL*

*WSDLのテスト中に疑わしいサービスへの依存をなくす*

解説の全文は『PofEAA』 **504** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/serviceStubSketch.gif)

Enterprise systems often depend on access to third-party services such as credit scoring, tax rate lookups, and pricing engines. Any developer who has built such a system can speak to the frustration of being dependent on resources completely out of his control. Feature delivery is unpredictable, and as these services are often remote reliability and performance can suffer as well.

企業システムはクレジット認証、税率の参照は値づけエンジンのようなサードパーティ製のサービスへのアクセスに頼っていることがしばしばある。このようなシステムを構築した開発者の中には、自分のコントロールが完全に及ばないリソースに頼っていることによるフラストレーションを口にする人がいる。機能の分配は予測不可能であり、こういったサービスが多くの場合遠隔なので、信頼性とパフォーマンスの点で苦労することになる。

At the very least these problems slow the development process. Developers sit around waiting for the service to come back on line or maybe put some hacks into the code to compensate for yet to be delivered features. Much worse, and quite likely, such dependencies will lead to times when tests can't execute. When tests can't run the development process is broken.

少なくとも、この問題により、開発プロセスは遅くなる。開発者はサービスがオンラインで返ってくるのを待つか、機能が分配されるまでを埋め合わせるようにコードにでっちあげを追加したりする。さらに悪いことに、そういった依存性のためにテストが実行できなくなることもある。テストが実行できない場合、開発プロセスは破綻する。

Replacing the service during testing with a Service Stub that runs locally, fast, and in memory improves your development experience.

テストの間にサービスをローカルのメモリ上で迅速に動くサービススタブに差し替えることによって、あなたの開発経験が改善されるだろう。

(translated by money@andore.com)
