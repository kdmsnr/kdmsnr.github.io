---
layout: page
title: R
description: ""
---

```R
foo <- 10 # 代入
rm(foo)   # 解除

# ベクタ
vec <- c(1, 2, 3, 4)
vec %*% vec # 内積
vec %o% vec # 外積
nvec <- c(one = 1, two = 2, three = 3) # 名前付き
names(nvec) #=> "one" "two" "three"
names(nvec) <- c("uno", "dos", "tres") # 名前の変更

# マトリックス
mat <- matrix(vec, nrow = 2)
t(mat) # 変換

# data frame
data.frame( ... )
```

## データ型

```R
class(1) #=> "numeric"
class("A") #=> "character"
class(TRUE) #=> "logical"

vec <- c(1, TRUE, "R") #=> "1", "TRUE", "R"
lit <- list(1, TRUE, "R") #=> 1, TRUE, "R"

TRUE + TRUE #=> 2
```

* 1次元単一型 → Vector
* 1次元複数型 → List
* 2次元単一型 → Matrix
* 2次元複数型 → Data Frame
* N次元単一型 → Array

## 文字列操作

```R
nchar("hello") #=> 5
# Error: "hello" + "world"
paste("hello", "world") #=> "hello world"
```
