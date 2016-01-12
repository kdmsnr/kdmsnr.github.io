---
layout: page
title: Mapper.md
---

原文: http://www.martinfowler.com/eaaCatalog/mapper.html

*An object that sets up a communication between two independent objects.*

解説の全文は『PofEAA』 **473** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/mapperSketch.gif)

Sometimes you need to set up communications between two subsystems that still need to stay ignorant of each other. This may be because you can't modify them or you can but you don't want to create dependencies between the two or even between them and the isolating element.
