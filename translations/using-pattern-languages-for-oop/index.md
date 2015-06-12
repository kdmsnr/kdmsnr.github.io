---
layout: page
title: オブジェクト指向プログラムのためのパターンランゲージの使用
description: ""
---

<hr />

以下の文章は、Kent Beck、Ward Cunninghamによる「[Using Pattern Languages for Object-Oriented Programs](http://c2.com/doc/oopsla87.html)」の日本語訳である。Ward Cunningham氏の許可を得て、ここに掲載する。

<hr />

*Kent Beck, Apple Computer, Inc.*

*Ward Cunningham, Tektronix, Inc.*

* Technical Report No. CR-87-43
* September 17, 1987
* Submitted to the OOPSLA-87 workshop on the Specification and Design for Object-Oriented Programming. 

## 概要
> オブジェクト指向プログラミングへのパターンランゲージの適合について概説する。ウィンドウベースのユーザーインターフェイス設計時にうまくいった5つのパターンシステムについてまとめたあと、あるパターンについてもう少し詳細に述べる。これは、オブジェクト指向プログラムの完全なパターンランゲージを記録する我々の現在の活動から得られたものだ。 

<!-- The search for an appropriate methodology for object-oriented programming has seen the usual rehash of tired old ideas, but the fact is that OOP is so different that no mere force-fit of structured analysis or entity-relationship methods will provide access to the potential inherent in OOP. In particular, neither of these methods address the user interface design issues that have obviously become of paramount importance. In addition, while E-R seems to be "object-oriented" it is not suited to the dynamic nature of objects as in Smalltalk and encourages the use of a global perspective while designing, a sure lose in object-oriented programming.-->

オブジェクト指向プログラミングのための適切な方法論の探索は、これまで古臭い考えを焼き直したものにすぎなかった。OOPは従来の考え方とは全く異なっており、従来の構造化分析やエンティティリレーションシップ（E-R）の手法をそのままあてはめるだけでは、OOP本来の潜在能力を引き出すことはできない。特に気になるのは、どちらの手法も最も重要な設計事項であるユーザーインターフェイスに重きを置いていない点である。E-Rは一見「オブジェクト指向」のように見えるが、Smalltalkに見られるような動的なオブジェクトに適合していないばかりか、オブジェクト指向プログラミングで取り除かれた、設計時におけるグローバルな視点をも推奨している。

<!-- We propose a radical shift in the burden of design and implementation, using concepts adapted from the work of Christopher Alexander, an architect and founder of the Center for Environmental Structures. Alexander proposes homes and offices be designed and built by their eventual occupants. These people, he reasons, know best their requirements for a particular structure. We agree, and make the same argument for computer programs. Computer users should write their own programs. The idea sounds foolish when one considers the size and complexity of both buildings and programs, and the years of training for the design professions. Yet Alexander offers a convincing scenario. It revolves around a concept called a "pattern language." -->

我々は、設計や実装の負担について急進的な変革を提案する。ここでは、Christopher Alexander氏（建築家、Environmental Structuresセンターの設立者）の業績をアレンジしたコンセプトを使う。Alexander氏は、家やオフィスというものは、最終的にそこに住む（使う）人たちの手によって設計され、作られるべきだと提案している。氏がこう結論付けたのは、ある構造（a particular structure）への要求を一番よく知っているのは、彼ら自身だからだ。我々はこれに賛同し、コンピュータプログラミングにも同じ論旨を展開した。つまり、コンピュータユーザーは、自分自身のプログラムを書くべきなのである。この考えはアホみたいに聞こえるかもしれない。建築とプログラムとの規模や複雑性の違い、設計のプロになるためのトレーニング年数などを考えると、その通りだろう。しかし、Alexander氏が説得力のあるシナリオを提供している。そのシナリオは「パターンランゲージ」と呼ばれるコンセプトを中心に展開されている。

<!-- A pattern language guides a designer by providing workable solutions to all of the problems known to arise in the course of design. It is a sequence of bits of knowledge written in a style and arranged in an order which leads a designer to ask (and answer) the right questions at the right time. Alexander encodes these bits of knowledge in written patterns, each sharing the same structure. Each has a statement of a problem, a summary of circumstances creating the problem and, most important, a solution that works in those circumstances. A pattern language collects the patterns for a complete structure, a residential building for example, or an interactive computer program. Within a pattern language, patterns connect to other patterns where decisions made in one influence the others. A written pattern includes these connections as prologue and epilogue. Alexander has shown that nontrivial languages can be organized without cycles in their influence and that this allows the design process to proceed without any need for reversing prior decisions [Alex77]. -->

パターンランゲージとは、設計過程で発生するあらゆる問題に対し、実際に機能するソリューションを提供することで、設計者を導くというものだ。パターンランゲージは、一連のちょっとした知識が、ある一定のスタイルで記述、整列されており、設計者がその時点で最も適した質問を尋ねる（または答える）ことができるようになっている。Alexander氏は、これらの知識を共通した構造を持つパターンとして記述した。各パターンには、問題、問題が発生する状況の概要、そして（最も重要な）その状況下で有効なソリューションが記述されている。パターンランゲージはそれらのパターンを集めることで、完全なる構造を形成する。たとえば、住居やインタラクティブコンピュータプログラムなどである。パターンランゲージでは、パターンはお互いにつながっており、ある決定が他に影響する。パターンには、このつながりがプロローグとエピローグに記述されている。Alexander氏は、重要なランゲージは相互の影響サイクルがなくとも形成可能である。そのため、設計プロセスは前段階の決定を省みる必要なく進めることができる、と述べている[Alex77]。

<!-- Consider a very small pattern language for designing Smalltalk windows. We suggest the following patterns: -->

それでは、Smalltalkのウィンドウを設計するためのごく小さなパターンランゲージについて考えてみよう。我々は以下のパターンを提案する。 

<!-- 
//1.  Window Per Task
//2. Few Panes Per Window
//3. Standard Panes
//4. Short Menus
//5. Nouns and Verbs 
-->

1. タスクごとのウィンドウ（Window Per Task） 
2. ウィンドウに対してペインはできるだけ少なく（Few Panes Per Window） 
3. 標準ペイン（Standard Panes） 
4. 短いメニュー（Short Menus） 
5. 名詞と動詞(Nouns and Verbs) 

<!-- We presented these patterns to a team of application specialists writing a specification for a special purpose programming environment. Without detailed understanding of any of Smalltalk's interface mechanisms (MVC for example) they were able to specify very reasonable interfaces after one day of practice [Cunn87]. Note that we sorted and numbered the patterns. Pattern 1 must be addressed first. It decides what windows will be available and what will be done in them. Next patterns 2 and 3 divide each window into panes. Finally patterns 4 and 5 determine what selections and actions will do within each pane. This order was derived from the topology of influences between each pattern.  -->

我々は、これらのパターンをある特別な目的のためのプログラミング環境用の仕様書を書いているアプリケーションスペシャリストチームに提供した。Smalltalkのインターフェイスメカニズム（MVCなど）の詳しい理解がなくとも、1日ほどプラクティスを行っただけで、彼らはよくできたインタフェースを記述することができた[Cunn87]。我々がパターンに番号をつけ、順番に並べていることに注意して欲しい。パターン1がまず最初に来なければならない。これは、どのウィンドウが利用可能であり、そこで何が行われるかを決定している。次のパターン2と3は、各ウィンドウをペインに分けている。最後のパターン4と5は、各ペインの中の選択やアクションが何をやるかということを決めている。この順番は、パターン間の影響のトポロジーから決まった。

<!--  We have begun writing a complete pattern language for object-oriented programming. An example from this language is the pattern entitled Collect Low-level Protocol. Here it is in abbreviated form: -->

我々はオブジェクト指向プログラミングの完全なパターンランゲージを記述し始めたばかりだ。たとえば、「Collect Low-level Protocol」（ローレベルプロトコルの収集）と呼ばれるパターンがある。以下にその要約を掲載する。 

<!-- Once you have initially decomposed a system into objects [Objects from the User's World] and refined the objects [Engines and Holders] you need to begin collecting useful functionality that doesn't particularly fit into any single object. Often many objects need to communicate with low-level (bit- or byte-oriented) parts of the system. For example, external files can have complex or highly encoded formats that require substantial byte or even bit manipulation to interpret. Collect all necessary protocol for decoding file formats or any other particular low-level task into an object specifically designed for the purpose. Do so even if you might otherwise spread it around several other objects. Once you have done this you are ready to begin testing and refining your objects [Elegance through Debugging]. -->

> 最初にシステムをオブジェクト[Objects from the User's World] （ユーザーの世界からのオブジェクト）に分解し、オブジェクトを洗練すると[Engines and Holders] （エンジンとホルダー）、ひとつのオブジェクトの中にうまく収まらない便利な機能を集める必要がでてくる。オブジェクトの多くは、ローレベル（ビットやバイトの世界）でコミュニケートする必要がよくある。たとえば、外部ファイルは複雑なフォーマットや高度にエンコードされたフォーマットとなっており、その解釈には相当量のバイト（さらにはビット）操作を必要とする。ファイルフォーマットをデコードするのに必要なすべてのプロトコル、あるいは、その他の特定のローレベルのタスクを、その目的のために特別に設計された一つのオブジェクトの中に集めよ。様々なオブジェクトに散りばめられていたとしても、集めるのだ。これをやりさえすれば、オブジェクトをテストしたり、洗練したりすることができる準備が整うのだ[Elegance through Debugging]（デバッグしてエレガントに）。

<!-- We have completed approximately ten patterns, have sketched out 20-30 more, and expect our finished pattern language to contain about 100-150 patterns. Our initial success using a pattern language for user interface design has left us quite enthusiastic about the possibilities for computer users designing and programming their own applications. -->

我々はおよそ10個のパターンを完成させた。スケッチだと、20から30個を超える。パターンを完成させる頃には、100から150個になると予測している。ユーザーインターフェイス設計におけるパターンランゲージの使用が最初に成功したときは、コンピュータユーザーたちが自分自身のアプリケーションを自らが設計し、プログラミングするという可能性があるのだということに、我々は大変熱狂した。

## 参考文献

* [Alex77] Christopher Alexander et. al., A Pattern Language, Oxford University Press, New York, 1977.
* [Cunn87] Ward Cunningham and Kent Beck, Constructing Abstractions for Object-Oriented Applications, CR-87-25, Computer Research Laboratory, Tektronix, Inc.


## 日本語訳について

* 2010-06-26: 誤訳を修正（青柳龍也さんのご指摘に感謝）
* 2005-11-30: 本家からリンクしてもらいました。http://c2.com/doc/index.html
* 2005-11-30: 初稿アップ
