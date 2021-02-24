---
layout: page
title: kdmsnr.com
---

{% include profile.html %}

## 所属

* <a href="http://www.waicrew.com">ワイクル株式会社</a>（代表取締役）
* 東京工業大学 環境・社会理工学院（<a href="http://t2r2.star.titech.ac.jp/cgi-bin/researcherinfo.cgi?q_researcher_content_number=CTT100692413">特任講師</a>）
* 東京工業大学 環境・社会理工学院  イノベーション科学系 イノベーション科学コース（博士後期課程）齊藤滋規研

## 職歴

* 2017年9月-現在｜ワイクル株式会社（代表取締役）
* 2015年6月-現在｜東京工業大学 環境・社会理工学院（特任講師）
* 2008年6月-2017年8月｜ワイクル株式会社（取締役）
* 2005年10月-2008年7月｜株式会社ツインスパーク（プログラマ）
* 2003年11月-2005年10月｜日揮情報ソフトウェア株式会社（エンジニア）
* 2001年4月-2003年10月｜株式会社内田洋行（エンジニア）

{% comment %}
## WORKS

<!-- <span class="label label-default">Default</span> -->
<span class="label label-primary">書籍</span>
<span class="label label-info">雑誌</span>
<span class="label label-success">ウェブ</span>
<span class="label label-danger">講演</span>
<span class="label label-warning"></span>


{% assign hyear = 0 %}
{% assign works = site.data.works | sort:'published' %}

{% for w in works %}
{% if hyear != w.year%}{%assign hyear = w.year %}<h2>{{hyear}}</h2>{%endif%}
{% assign d = w.year | append: "/" | append: w.month | append: "/" | append: w.date %}
{% case w.type %}

{% when 'book' %}
<span class="label label-primary">書籍</span>
{{ w.authorship }}『{{ w.title }}』{{w.publisher}}
{% when 'web' %}
<span class="label label-success">ウェブ</span>
<a href="{{ w.url }}">{{ w.title }}</a>
{% when 'magagine' %}
<span class="label label-info">雑誌</span>
{{ w.title }}

{% endcase %}（{{ d | date: "%Y-%m-%d"}}）
{% endfor %}

{% endcomment %}

## 執筆（書籍）

### 2020

- 共訳『Clean Agile―基本に立ち戻れ』KADOKAWA（2020-10-03）
- 翻訳『モダン・ソフトウェアエンジニアリング』翔泳社（2020-05-29）

### 2019

### 2018
- 共訳『Clean Architecture―達人に学ぶソフトウェアの構造と設計』KADOKAWA（2018-07-27）2刷
- 翻訳『（新版）Clean Coder―プロフェッショナルプログラマへの道』KADOKAWA（2018-07-27）
- 翻訳『アジャイルエンタープライズ』翔泳社（2018-03-19）

### 2017
- 共著『エンジニアのためのデザイン思考入門』翔泳社（2017-12-15）2刷
- 翻訳『図解リーンスタートアップ成長戦略』日経BP社（2017-10-13）
- 共訳『アジャイルコーチング』オーム社（2017-01-17）2刷

### 2016
- 監訳『リーンエンタープライズ―イノベーションを実現する創発的な組織づくり』オライリー・ジャパン（2016-10-15）
- 共訳『カンバン仕事術―チームではじめる見える化と改善』オライリー・ジャパン（2016-03-26）3刷

### 2015
- 翻訳『メタプログラミングRuby 第2版』オライリー・ジャパン（2015-10-10）4刷
- 翻訳『エクストリームプログラミング』オーム社（2015-06-26）3刷
- 翻訳『Lean Analytics―スタートアップのためのデータ解析と活用法』オライリー・ジャパン（2015-01-24）6刷

### 2014
- 共訳『エッセンシャル スクラム：アジャイル開発に関わるすべての人のための完全攻略ガイド』翔泳社（2014-07-08）3刷
- 共訳『Fearless Change―アジャイルに効く アイデアを組織に広めるための48のパターン』丸善出版（2014-01-30）

### 2013
- 翻訳『Team Geek―Googleのギークたちはいかにしてチームを作るのか』オライリー・ジャパン（2013-07-20）12刷
- 共訳『プログラマの考え方がおもしろいほど身につく本―問題解決能力を鍛えよう! 』アスキー・メディアワークス（2013-05-01）
- 共訳『Software in 30 Days―スクラムによるアジャイルな組織変革"成功"ガイド』アスキー・メディアワークス（2013-03-08）
- 翻訳『7つのデータベース 7つの世界』オーム社（2013-02-26）

### 2012
- 翻訳『Running Lean―実践リーンスタートアップ』オライリー・ジャパン（2012-12-21）11刷
- 共訳『サービスデザインパターン―SOAP/WSDLとRESTful Webサービスの基本的な設計ソリューション』アスキー・メディアワークス（2012-08-24）
- 翻訳『リーダブルコード―より良いコードを書くためのシンプルで実践的なテクニック』オライリー・ジャパン（2012-06-23）20刷
- 翻訳『Clean Coder―プロフェッショナルプログラマへの道』アスキー・メディアワークス（2012-01-27）

### 2011
- 共訳『1日1時間で成功する！ Facebookマーケティング』アスキー・メディアワークス（2011-05-28）
- 翻訳『ウェブオペレーション―サイト運用管理の実践テクニック』オライリー・ジャパン（2011-05-14）

### 2010
- 翻訳『メタプログラミングRuby』アスキー・メディアワークス（2010-08-28）

### 2007
- 翻訳『アジャイルレトロスペクティブズ―強いチームを育てる「ふりかえり」の手引き』オーム社（2007-09）8刷

## 執筆（雑誌）

- Ruby徹底攻略「はじめてのRuby」（2014）
- WEB+DB PRESS Vol.38「はじめてのRuby & Rails」（2007）
- Life Hacks PRESS「はじめてのマインドマップ」（2006）
- 日経ソフトウエア 2006/01号「FreeMind「思考」を記録するマインド・マップ作成ソフト」（2006）

## 執筆（ウェブ）

- [羽生章洋『はじめよう！システム設計』刊行記念特別インタビュー～角征典から見た2018年の上流工程とカスタマーエクスペリエンスの時代](http://gihyo.jp/news/interview/01/getting-started)（2018/03）
- [デザイン思考の教育分野における活用事例：東京工業大学がエンジニアリングとデザインで「曖昧さと踊る」!?](https://edtechzine.jp/article/detail/741)（2018/03/01）
- [Rubyist Hotlinks 【第 36 回】 須藤功平さん](http://magazine.rubyist.net/?0053-Hotlinks)（2016-04）
- [「アジャイルサムライの見積りと計画づくり」はどうやってうまれたのか？](https://codezine.jp/article/detail/7462)（2013-10-25）

## 記事掲載

- [スタートアップに「方法論」は必要か？ 大企業にも浸透を始める「リーンスタートアップ」最新トレンドを追う : HRナビ by リクルート](http://hrnabi.com/2018/03/29/16900/)（2018-03-29）
- [天才でなくていい！『Team Geek』訳者・角 征典と考える、チームに貢献するエンジニアの気配り力 - エンジニアHub｜若手Webエンジニアのキャリアを考える！](https://employment.en-japan.com/engineerhub/entry/2017/12/20/110000)（2017-12-20）
- [「教わるのではなく学び取る」、子供向けプログラミング道場「CoderDojo」が全国で急増中](http://itpro.nikkeibp.co.jp/atcl/interview/14/262522/102600287/)（2016-10-28）
- [受賞作品発表！「ITエンジニアに読んでほしい！ 技術書・ビジネス書大賞 2015」](https://codezine.jp/article/detail/8612)（2015-04-14）
- [「いいプロダクトを作りたい」人に有効な「リーン＋アジャイル」な開発とは？](https://enterprisezine.jp/bizgene/detail/5050)（2013-08-21）
- [「LEGOブロックで街づくり」 実体験型スクラム入門をのぞいてみた](http://www.atmarkit.co.jp/ait/articles/1305/28/news059.html)（2013-05-28）
- [森下・アジャイル研究所 第5回 アジャイルな要求定義に求められるもの](http://itpro.nikkeibp.co.jp/article/COLUMN/20100309/345488/)（2010-03-10）
- [「マインドマップ」でモヤモヤ解消](http://www.nikkeibp.co.jp/article/nba/20080329/151626/)（2008-04-01）

## 翻訳

<ul>
{% for page in site.pages %}
{% if page.dir contains 'translations'%}
  {% if page.dir != '/translations/' and page.dir != '/translations/readings/' %}
  <li><a href="{{ page.dir }}">{{ page.title }}</a></li>
  {% endif %}
{% endif %}
{% endfor %}
</ul>

### 外部サイト

* [スクラムガイド](http://www.scrumguides.org/download.html)
* [Nexusガイド](https://www.scrum.org/Resources/The-Nexus-Guide/Downloads)
* [LEGOを使ったスクラムシミュレーション（レゴスクラム）](http://www.lego4scrum.com/translations/)
* [eduScrumガイド](http://eduscrum.nl/en/links)
* [Martin Fowler's Bliki-ja](http://bliki-ja.github.io/)
* [PofEAA-ja](http://bliki-ja.github.io/pofeaa/)
* [Medium](https://medium.com/@kdmsnr)にいろいろと置いてあります
* [Leanpub](https://leanpub.com/u/kdmsnr)にもあります

<iframe src="//www.slideshare.net/slideshow/embed_code/key/u591JexyK3mOXr" width="340" height="290" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> 

<iframe src="//www.slideshare.net/slideshow/embed_code/key/4OrcsQETY2gHZq" width="340" height="290" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

<iframe src="//www.slideshare.net/slideshow/embed_code/key/sF7k64vX83Xq0c" width="340" height="290" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

書籍の翻訳については、[Amazonの著者ページ](http://www.amazon.co.jp/-/e/B00429JIAI)を参照してください。

## ブログ

* [角 征典 (@kdmsnr) – Medium](https://medium.com/@kdmsnr)
* [東京工業大学エンジニアリングデザインプロジェクト – Medium](https://medium.com/titech-eng-and-design)

### 本サイトに残っているブログ

<ul>
  {% for post in site.posts limit:100 %}
    <li>
      <span class="post-meta">{{ post.date | date: "%Y-%m-%d"}}</span>
      <a href="{{ post.url | replace: 'index.html', ''}}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

## 資格

* 1997年12月 中型自動車免許（8t限定）
* 2002年6月 基本情報処理技術（情報処理技術者試験）
* 2005年12月 ソフトウェア開発技術者（情報処理技術者試験）
* 2011年6月 データベーススペシャリスト（情報処理技術者試験）
* 2018年6月 TOEIC 870点（Listening:460, Reading:410）

## 受賞等

- 平成30年度 手島精一記念研究賞（著述賞）（2019/02/21）
- [第22回（2017年度）工学教育賞（業績部門）](https://www.jsee.or.jp/about/award/jsee-prize)（2018/03）
- [翔泳社 デブサミ2014 アワード ベストバリュー賞](https://event.shoeisha.jp/devsumi/20140213/award)（2014/02）
- 2014年「ITエンジニアに読んでほしい！技術書・ビジネス書 大賞」技術書部門大賞『リーダブルコード』（2014/02）

## 論文

- （研究会発表）角征典、金本真左也、Antoine Bossard、秋口忠三「共同プログラミングを実現する初心者向けビジュアルプログラミングツール Jointry の開発と評価」一般社団法人情報処理学会 研究報告コンピュータと教育（2014）

## 学会など

* PDMA (Product Development and Management Association)
* ACM (Association for Computing Machinery)
* Agile Alliance

## 講演（一般向け）

{% include prev-training.md %}

過去に使用したスライドは、[SlideShare](http://www.slideshare.net/kdmsnr/)や[SpeakerDeck](https://speakerdeck.com/kdmsnr)にアップしています。

## 講義（大学）

### 2020年度

- 東京工業大学 エンジニアリングデザインプロジェクト
- 東京工業大学 エンジニアリングデザイン応用
- 東京工業大学 デザイン思考基礎
- [東京大学 FoundX Online Startup School](https://school.foundx.jp/)

### 2019年度

- 産業能率大学 通信研修「[デザイン思考入門](https://www.hj.sanno.ac.jp/cp/distance-learning/course/C1S0-01.html)」監修
- 東京工業大学 エンジニアリングデザインプロジェクトC
- 東京工業大学 エンジニアリングデザインプロジェクトB
- 東京工業大学 エンジニアリングデザインプロジェクトA
- 東京工業大学 デザイン思考基礎

### 2018年度

- 東京工業大学 エンジニアリングデザインプロジェクトC
- 東京工業大学 エンジニアリングデザインプロジェクトB
- 東京工業大学 エンジニアリングデザインプロジェクトA
- 東京工業大学 デザイン思考基礎

### 2017年度

- [産業技術大学院大学 アジャイル開発概論](https://www.fisdom.org/F00000033/)（e-learning）
- 東京工業大学 エンジニアリングデザインプロジェクトC
- 東京工業大学 エンジニアリングデザインプロジェクトB
- 東京工業大学 エンジニアリングデザインプロジェクトA
- 東京工業大学 デザイン思考基礎

### 2016年度

- 東京工業大学 エンジニアリングデザインプロジェクトC
- 東京工業大学 エンジニアリングデザインプロジェクトB
- 東京工業大学 エンジニアリングデザインプロジェクトA
- 東京工業大学 デザイン思考基礎

### 2015年度

- 東京工業大学 エンジニアリングデザインプロジェクトC
- 東京工業大学 エンジニアリングデザインプロジェクトB
- 東京工業大学 エンジニアリングデザインプロジェクトA
- 東京工業大学 デザイン思考基礎

## 企画・運営

### 2018

- エンジニアリングデザイン研究会（第3回）
- エンジニアリングデザイン研究会（第2回）
- エンジニアリングデザイン研究会（第1回）

### 2017

- [Hack U 東京工業大学 2017](https://hacku.yahoo.co.jp/titech2017/)（2017-07）
- [リーンエンタープライズワークショップ](https://waicrew.doorkeeper.jp/events/56440)（2017-05-12）
  - ゲスト：Barry O'Reilly
- [第3回 東京工業大学 エンジニアリングデザインコンペティション](http://www.eng.titech.ac.jp/~cbe/competition2017/)（2017-02-18）
- [TdX講演会#07「チームとアジャイルなソフトウェアづくり」](https://cbec-titech.connpass.com/event/48167/)（2017-01-31）
  - ゲスト：Aki Saarinen、角谷 信太郎
- [レイチェルと学ぶアジャイルコーチングのスキル](https://waicrew.doorkeeper.jp/events/54120)（2017-01-10）
  - ゲスト：Rachel Davies

### 2016

- CoderDojoすぎなみ（2016〜）
- 大企業で実現するリーンスタートアップ（2016-10-27）
  - ゲスト：Barry O'Reilly
- [TdX講演会#06「チームとスタートアップづくり」](https://cbec-titech.connpass.com/event/41269/)（2016-12-07）
  - ゲスト：馬田隆明、澤山陽平
- [プレゼン大学生育成計画](https://cbec-titech.connpass.com/event/42207/)（2016-11-08）
  - ゲスト：長沢智治、馬田隆明
- [TdX講演会#05「チームとゲームづくり」](https://cbec-titech.connpass.com/event/41260/)（2016-10-28）
  - ゲスト：今給黎隆、小林俊仁
- [Autodesk Fusion 360 ハンズオンワークショップ](https://cbec-titech.connpass.com/event/38852/)（2016-10-01）
  - ゲスト：藤村祐爾
- [中高生のための夏休みプログラミング教室](https://cbec-titech.connpass.com/event/34596/)（2016-08-12、14）
- [TdX講演会#04「チームと日本発のIoTプラットフォームづくり」](https://cbec-titech.connpass.com/event/32955/)（2016-07-08）
  - ゲスト：安川健太
- [イノベーション教育学会 第4回年次大会](https://iec2016.sched.com/)（2016-06-18〜19）
- [Hack U 東京工業大学 2016](http://hacku.yahoo.co.jp/titech2016/)（2016-06-11）
- [TdX講演会#03「チームとニコニコ学会βづくり」](https://cbec-titech.connpass.com/event/30229/)（2016-06-17）
  - ゲスト：江渡浩一郎、湯村翼、くとの
- [TdX講演会#02「チームと漫画づくり」](https://cbec-titech.connpass.com/event/28746/)（2016-05-27）
  - ゲスト：うめ（小沢高広・妹尾朝子）、松永肇一
- [TdX講演会#01「チームと開発者Kaigiづくり」](https://cbec-titech.connpass.com/event/28644/)（2016-04-22）
  - ゲスト：高橋征義、日高正博

### 2015
- アジャイルコーチへの道（2015-12-17）
  - ゲスト：Paolo "Nusco" Perrotta
- メタプログラミングRubyトレーニング（2015-12-15）
  - ゲスト：Paolo "Nusco" Perrotta

### 2011
- [アジャイル・チームビルディング・カンファレンス](http://kokucheese.com/event/index/6842/)（2011-01-16）
  - ゲスト：Esther Derby、Johanna Rothman

### 2010
- [平成仮面ライダー勉強会](https://sites.google.com/site/kamenriderbenkyoukai/)（2010-02-22）
  - ゲスト：宇野常寛

## 連絡先

* 会社の<a href="https://www.waicrew.com/form/">問い合わせフォーム</a>からお願いします。
