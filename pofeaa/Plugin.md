---
layout: pofeaa
title: Plugin.md
---

原文: http://www.martinfowler.com/eaaCatalog/plugin.html

**by David Rice and Matt Foemmel**

*Links classes during configuration rather than compilation.*

*コンパイル時ではなく、設定時にクラスをリンクする*

解説の全文は『PofEAA』 **499** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/pluginsSketch.gif)

Separated Interface (476) is often used when application code runs in multiple runtime environments, each requiring different implementations of particular behavior. Most developers supply the correct implementation by writing a fac-tory method. Suppose you define your primary key generator with a Separated Interface (476) so that you can use a simple in-memory counter for unit testing but a database-managed sequence for production. Your factory method will most likely contain a conditional statement that looks at a local environment variable, determines if the system is in test mode, and returns the correct key generator. Once you have a few factories you have a mess on your hands. Establishing a new deployment configuration - say "execute unit tests against in-memory database without transaction control" or "execute in production mode against DB2 database with full transaction control" - requires editing conditional statements in a number of factories, rebuilding, and redeploying. Configuration shouldn't be scattered throughout your application, nor should it require a rebuild or redeployment. Plugin solves both problems by providing centralized, runtime configuration.

アプリケーションコードがそれぞれで求められる特定の振る舞いについて実装が異なる複数のランタイム環境で動く場合、Separated Interface(476)が利用されることがある。多くの開発者はファクトリメソッドを書くことにより正しい実装を提供する。
ユニットテスト用に簡単なインメモリカウンタだが、製品ではデータベース管理のシーケンスが使えるようにプライマリキージェネレータをSeparated Interfaceを使って定義することを想定しよう。ファクトリメソッドにはおそらく条件文が含まれていてそこではローカル環境変数を見てシステムがテストモードで動いているかどうかを判断して正しいキージェネレータを返す。ひとたび2,3のファクトリがあると、手にメスを握っているのだ。新しいデプロイ設定を確立するには、"トランザクション制御なしのインメモリデータベースに対しユニットテストを実行してください”とか"DB2データベースに対しフルトランザクション制御ありで製品モードの試験を実行してください”といって、いっぱいあるファクトリの条件文を編集して、再ビルドして再配備する必要がある。コンフィグレーションをアプリケーション全体に分散させてはだめだし、再ビルド、再配備を求めてもいけない。pluginはランタイムコンフィグレーションを集中管理することでこの両方の問題を解決する。

(translated by money@andore.com)
