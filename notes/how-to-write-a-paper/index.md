---
layout: page
title: "論文やレポートの書き方"
description: ""
---

当たり前だけどLaTeXで書こう。
Markdownで書いてからPandocでTeXファイルに変換しても構わない。
細かいところは奥村先生の『LaTeX2e 美文書作成入門』を参照のこと。

でも、そういう「書き方」の話ではない。
どういう構成にすればいいのか、という意味での「書き方」だ。
基本的に分野によって書き方が違う。大雑把に言えば、文系と理系でもぜんぜん違う。
なので、自分が書きたい分野の「書き方」を把握する必要がある。

とはいえ、広く一般的には、[IMRaD](https://ja.wikipedia.org/wiki/IMRAD)の形がよいとされる。

1. Introduction
2. Methods
3. Results
4. Discussion

もちろんこれらの他に、最初にTitleとAbstract、最後にConculusionが入る。
こんな感じで一般的な話から具体的な研究、具体的な結論から一般的な話に回帰する構造のことを「ワイングラスモデル」と呼ぶ。研究が「一般的に価値のあること」であり「研究そのものが適切であること」の2つを説明することになる。
また、その他に謝辞、参考文献なども必要になる。

詳しくはWikipediaを見ておくれ。

https://ja.wikipedia.org/wiki/IMRAD

## リサーチの前に論文を書く

Haskellの開発者として有名なSimon Peyton Jonesの「[PhD: How to write a great research paper](http://research.microsoft.com/apps/video/default.aspx?id=168649)」によれば、リサーチする前に論文を書くべきだそうな。そうするとわかっていないところが事前に明確になるし、周囲に意見を求めることができる。それに、リサーチに時間がかかって論文の締め切りに間に合わなくなることもない。いいことだらけだ。

スライドを翻訳してみた↓

<iframe src="//www.slideshare.net/slideshow/embed_code/key/u591JexyK3mOXr" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

### 論文の構成

10 pages くらいの場合:

1. Abstract（4 sentences）
2. Instruction（1 page）
3. The problem（1 page）
4. My idea（2 pages）
5. The details（5 pages）
6. Related work（1-2 pages）
7. Conclusions and further work（0.5 pages）

機械的に区分けするのではなく、きちんとナラティブになっていることが大切。

関連研究をあとまわしにしているところも特徴。

### 7つのヒント

1. Don't wait
2. Identify your key idea
3. Tell a story
4. Nail your contributions
5. Related work: later
6. Put your readers first (examples)
7. Listen to your readers

## 論文の読み方

書き方の参考にもなるので、おさえておきたい。

http://www.slideshare.net/Ochyai/1-ftma15

> アブスト→結論→実験→関連研究

読み終わったら、以下をまとめる。

1. どんなもの？
2. 先行研究とくらべてどこがすごい？
3. 技術や手法のキモはどこ？
4. どうやって有効だと検証した？
5. 議論はある？
6. 次に読むべき論文は？

## 参考文献

→ [参考文献](/bib/how-to-write-a-paper)


