# Mattermostプラグインの作り方

[Mattermostプラグインの作り方 \- Qiita](https://qiita.com/kaakaa_hoe/items/f65e995eca8a1eff39c7)の記事のサンプルコードです。

## 事前準備
下記の実行環境が必要です。

* [Go言語](https://golang.org/)
  * [golang/dep](https://github.com/golang/dep) (Go言語の依存関係管理)
* [Node.js / npm](https://nodejs.org/ja/)
* git
* make

## [Step 1: プラグイン開発・アップロード](https://qiita.com/kaakaa_hoe/items/f65e995eca8a1eff39c7#step-1-%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E9%96%8B%E7%99%BA%E3%82%A2%E3%83%83%E3%83%97%E3%83%AD%E3%83%BC%E3%83%89)

ビルド方法

```
$ go get https://github.com/kaakaa/mattermost-plugin-first
$ cd $GOPATH/src/github.com/kaakaa/mattermost-plugin-first
$ git reset --hard 50dc4fa
$ make build
```

## [Step 2: サーバーサイドプラグインの実装](https://qiita.com/kaakaa_hoe/items/f65e995eca8a1eff39c7#step-2-%E3%82%B5%E3%83%BC%E3%83%90%E3%83%BC%E3%82%B5%E3%82%A4%E3%83%89%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E3%81%AE%E5%AE%9F%E8%A3%85)


ビルド方法

```
$ go get https://github.com/kaakaa/mattermost-plugin-first
$ cd $GOPATH/src/github.com/kaakaa/mattermost-plugin-first
$ git reset --hard 14c870b
$ 
$ cd server
$ dep ensure
$ cd ..
$ 
$ make build
```


## [Step 3: フロントエンドプラグインの実装](https://qiita.com/kaakaa_hoe/items/f65e995eca8a1eff39c7#step-3-%E3%83%95%E3%83%AD%E3%83%B3%E3%83%88%E3%82%A8%E3%83%B3%E3%83%89%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E3%81%AE%E5%AE%9F%E8%A3%85)

ビルド方法

```
$ go get https://github.com/kaakaa/mattermost-plugin-first
$ cd $GOPATH/src/github.com/kaakaa/mattermost-plugin-first
$ git reset --hard cf6491f
$ 
$ cd server
$ dep ensure
$ cd ..
$
$ cd webapp
$ npm install
$ cd ..
$ 
$ make build
```
