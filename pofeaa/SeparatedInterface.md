---
layout: pofeaa
title: SeparatedInterface.md
---

原文: http://www.martinfowler.com/eaaCatalog/separatedInterface.html

*Defines an interface in a separate package from its implementation.*

*実装とは別のパッケージにインタフェースを定義する*

解説の全文は『PofEAA』 **476** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/separatedInterfaceSketch.gif)

As you develop a system, you can improve the quality of its design by reducing the coupling between the system's parts. A good way to do this is to group the classes into packages and control the dependencies between them.You can then follow rules about how classes in one package can call classes in another - for example, one that says that classes in the domain layer may not call classes in the presentation package.

システムの開発を進める中で、システム中の部品どうしの結合性を弱めていくことで設計のクオリティを改善することができる。このためのいい方法は、いくつかのクラスをパッケージにまとめ、依存関係を制御することだ。その際、そのクラスをどうパッケージに分類するかについてのルールに則ること。例えば、ドメインレイヤのクラスはプレゼンテーションパッケージのクラスを呼ばないというものだ。

However, you might need to invoke methods that contradict the general dependency structure. If so, use Separated Interface to define an interface in one package but implement it in another. This way a client that needs the dependency to the interface can be completely unaware of the implementation. The Separated Interface provides a good plug point for Gateway (466).

しかしながら、一般的な依存性の構造とは矛盾するようなメソッド起動が必要になるかもしれない。その場合、Separated Interfaceを使って、実装が別のパッケージにあるようなインタフェースを定義するのだ。この方法でこのインタフェースへの依存性を必要とするクライアントは完全に実装のことを知らないでいられる。このSeparated InterfaceによってGateway(466)に適したプラグポイントが提供される。

(translated by money@andore.com)
