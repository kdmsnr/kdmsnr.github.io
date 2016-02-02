---
layout: page
title: OS
---

## P1L1: Course Overview

* CS 6210 (Advanced OS) のつなぎ
* 学習ゴール
  * OSとは何か？
  * なぜOSが必要なのか？
  * OSの設計と実装
* コーストピックス
  * プロセス
  * スレッド
  * リソース管理
  * サービス（通信とI/O）
  * 分散サービス
  * データセンターやクラウド

### 推薦図書

* Operating System Concepts
* Operating System Concepts: Essentials
* Modern Operating Systems
* Operating Systems: Three Easy Pieces

## P1L2: Introduction to Operating Systems

### OSのシンプルな定義：

「コンピュータシステムの利用を抽象化および仲介する特別なソフトウェア」

### OSはおもちゃ屋のマネージャ：

* オペレーショナルリソースの管理（CPUやメモリの使用）
* ポリシーの徹底（リソースアクセスの制限）
* 複雑な作業の軽減（ハードウェアの抽象化……システムコール）

### OSの要素（それぞれ独立している）：

1. 抽象化（プロセス、スレッド、ファイル、ソケット……）
2. メカニズム（create, schedule, open, write, allocate……）
3. ポリシー（LRF, EDF）

### ユーザーレベルからカーネルレベル：

* トラップインストラクション
* システムコール
* シグナル

### モノリシックOS

ぜんぶがまとまってる反面、カスタマイズが難しい。

### モジュラーOS

保守やカスタマイズが易しい反面、パフォーマンスに悪影響。

### マイクロカーネル

プロセス間通信。組み込み用。

## P2L1: Processes and Process Management


## P2L2: Threads and Concurrency

 
## P2L3: Threads Case Study: PThreads


== Problem Set 1 ==

## P2L4: Thread Design Considerations

 
## P2L5: Thread Performance Considerations

 
== Sample Midterm Questions ==

## P3L1: Scheduling

 
## P3L2: Memory Management

 
## P3L3: Inter-Process Communication

 
## P3L4: Synchronization Constructs

 
## P3L5: I/O Management

 
## P3L6: Virtualization

 
## P4L1: Remote Procedure Calls

 
## P4L2: Distributed File Systems

 
## P4L3: Distributed Shared Memory

 
## P4L4: Datacenter Technologies

 
== Sample Final Questions ==
