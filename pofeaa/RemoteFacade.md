---
layout: page
title: RemoteFacade.md
---

原文: http://www.martinfowler.com/eaaCatalog/remoteFacade.html

*Provides a coarse-grained facade on fine-grained objects to improve efficiency over a network.*

*ネットワーク越しのレスポンスを改善するための細かい粒度のオブジェクトに対して荒い粒度のファサード(門)を提供する*

解説の全文は『PofEAA』 **388** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/distributedFacadeSketch.gif)

Remote Facade In an object-oriented model, you do best with small objects that have small methods. This gives you lots of opportunity for control and substitution of behavior, and to use good intention revealing naming to make an application easier to understand. One of the consequences of such fine-grained behavior is that there's usually a great deal of interaction between objects, and that interac-tion usually requires lots of method invocations.

オブジェクト指向モデルにおけるリモートファサードは小さなメソッドを持っている小さなオブジェクトがいっぱいある時に使うのがベストだ。これで、振る舞いを制御したり代用したり、またアプリケーションを分かりやすくするような命名規則を使う機会が多く得られる。きめ細かい動作のために、通常オブジェクト間のインタラクションが多数あると、そのようなインタラクションは通常多くのメソッド起動を必要とする、ということだ。

Within a single address space fine-grained interaction works well, but this happy state does not exist when you make calls between processes. Remote calls are much more expensive because there's a lot more to do: Data may have to be marshaled, security may need to be checked, packets may need to be routed through switches. If the two processes are running on machines on opposite sides of the globe, the speed of light may be a factor. The brutal truth is that any inter-process call is orders of magnitude more expensive than an in-process call - even if both processes are on the same machine. Such a perfor-mance effect cannot be ignored, even for believers in lazy optimization.

単一のアドレス空間内であれば、きめ細かいインタラクションはちゃんと動くが、これがプロセス間を跨いだ呼び出しを行うとそうとは限らない。リモート呼び出しは、データをマーシャリングしないといけないし、セキュリティもチェックしないといけない。パケットをスイッチ間でちゃんとルーティングしないといけないのでコストがとても高くなる。2つのプロセスがそれぞれ地球の裏側のマシンで走っているとすると、光の速度自体が要因となるかもしれないのだ。残念な真実は、どんなプロセス間呼び出しはプロセス内呼び出しよりも、かなりコストがかかる、ということだ。それはたとえ、2つのプロセスが同じマシン上で動作していても、である。このようなパフォーマンスの影響はたとえ遅延最適化の信仰者に対してであっても無視することはできないのだ。

As a result any object that's intended to be used as a remote objects needs a coarse-grained interface that minimizes the number of calls needed to get some-thing done. Not only does this affect your method calls, it also affects your objects. Rather than ask for an order and its order lines individually, you need to access and update the order and order lines in a single call. This affects your entire object structure. You give up the clear intention and fine-grained control you get with small objects and small methods. Programming becomes more dif-ficult and your productivity slows.

結果、リモートオブジェクトとして使うよう意図されているオブジェクトは、何かを取得するのに必要となる呼び出し回数を最小にする粒度の荒いインタフェースが必要だ。この影響は、メソッド呼び出しだけではなく、オブジェクトにも影響がある。個々のオーダやオーダラインを求めるのではなく、1回の呼び出しでオーダやオーダラインにアクセスし、更新を実施する必要がある。これは、オブジェクトの構造全体に影響する話だ。小さなオブジェクト小さなメソッドで実現していた、明確な意図、きめ細かい制御を放棄するのだ。プログラミングは難しくなるし、生産性も低下するだろう。

A Remote Facade is a coarse-grained facade [Gang of Four] over a web of fine-grained objects. None of the fine-grained objects have a remote interface, and the Remote Facade contains no domain logic. All the Remote Facade does is translate coarse-grained methods onto the underlying fine-grained objects.

リモートファサードはウェブ上のきめ細かいオブジェクトの、粒度の荒いファサード(Gang of Four)だ。細かいオブジェクトにはリモートインタフェースを持たせず、リモートファサードにもドメインロジックは含めない。リモートファサードがすることは、粗いメソッド呼び出しを細かいオブジェクトへ翻訳することだけだ。

translated by money@andore.com
