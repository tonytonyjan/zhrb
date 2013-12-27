# 紅寶石

「紅寶石」是一個用於教學的中文程式語言。

## 安裝

```
gem install zhrb
```

## 使用

```
$ ls
dog.zhrb  hello_world.zhrb
$ cat hello_world.zhrb 
印出 "哈囉，世界"
$ zhrb hello_world.zhrb 
哈囉，世界
$ cat dog.zhrb 
類 狗
  定義 初始化 名字
    @名字 = 名字
  結束
  定義 吃 食物
    印出 "狗狗#{@名字}，吃掉了#{食物}"
  結束
結束

史努比 = 狗.生成 "史努比"
史努比.吃 "查理布朗"

$ zhrb dog.zhrb 
狗狗史努比，吃掉了查理布朗
```
