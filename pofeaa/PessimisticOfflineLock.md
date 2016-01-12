---
layout: page
title: PessimisticOfflineLock.md
---

原文: http://www.martinfowler.com/eaaCatalog/pessimisticOfflineLock.html

**by David Rice**

*Prevents conflicts between concurrent business transactions by allowing only one business transaction at a time to access data.*

*同時にデータにアクセスするビジネストランザクションを1つだけにすることで並行するビジネストランザクションの競合を避ける*

解説の全文は『PofEAA』 **426** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/PessimisticSketch.gif)

Since offline concurrency involves manipulating data for a business transaction that spans multiple requests, the simplest approach would seem to be having a system transaction open for the whole business transaction. Sadly, however, this doesn't always work well because transaction systems aren't geared to work with long transactions. For that reason you have to use multiple system transactions, at which point you're left to your own devices to manage concurrent access to your data.

オフライン並行性により複数のリクエストを跨いだビジネストランザクションによるデータの操作が行われるので、最も簡単なアプローチは、ビジネストランザクション全体で1つのシステムトランザクションを開くことだと思われる。しかし残念ながら、トランザクションシステムはトランザクションが長くなるとうまく動かないのでこれがいつもうまくいくとは限らない。このため、データへの並行アクセスを管理するためのデバイスで複数のシステムトランザクションを使わないといけない。

The first approach to try is Optimistic Offline Lock (416). However, that pattern has its problems. If several people access the same data within a busi-ness transaction, one of them will commit easily but the others will conflict and fail. Since the conflict is only detected at the end of the business transac-tion, the victims will do all the transaction work only to find at the last minute that the whole thing will fail and their time will have been wasted. If this hap-pens a lot on lengthy business transactions the system will soon become very unpopular.

まず最初に試みるべきアプローチは楽観的オフラインロック(416)だ。でもこのパターンには問題がある。何人かが同じビジネストランザクションで同じデータにアクセスするとしよう。一人は簡単にコミットできるが、他はコンフリクトを起こして失敗してしまう。コンフリクトはビジネストランザクションの最後にならないと分からないので
犠牲者(訳注：アボートされるトランザクション)は最後の瞬間にならないと全ての処理が失敗したことが分からないのでトランザクションの処理を全て実行して時間も浪費してしまう。もし、長いビジネストランザクション上でこんなことが起こったら、システムはすぐに閑古鳥が鳴いてしまうだろう。

Pessimistic Offline Lock prevents conflicts by avoiding them altogether. It forces a business transaction to acquire a lock on a piece of data before it starts to use it, so that, most of the time, once you begin a business transaction you can be pretty sure you'll complete it without being bounced by concurrency control.

悲観的オフラインロックではこれらを全て回避することでコンフリクトを防ぐ。悲観的オフラインロックではビジネストランザクションがあるデータ片を使う前に強制的にロックをかけさせる。その結果、通常は、一旦ビジネストランザクションが始まると、並行制御によってつき返されることなくかなり確実にトランザクションを完了することができる。

translated by money@andore.com
