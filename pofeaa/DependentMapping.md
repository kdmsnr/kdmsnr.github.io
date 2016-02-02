---
layout: pofeaa
title: DependentMapping.md
---

原文: http://www.martinfowler.com/eaaCatalog/dependentMapping.html

*Has one class perform the database mapping for a child class.*

解説の全文は『PofEAA』 **262** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/dependentObjectSketch.gif)

Some objects naturally appear in the context of other objects. Tracks on an album may be loaded or saved whenever the underlying album is loaded or saved. If they aren't referenced to by any other table in the database, you can simplify the mapping procedure by having the album mapper perform the map-ping for the tracks as well - treating this mapping as a dependent mapping.
