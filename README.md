# qmkbuild

qmk_firmware のコンパイルを行う為の dockerコンテナ

## 初回
qmk_firmware のpullを同一ディレクトリにて行う。

```
cd <当プロジェクトパス>
git clone git@github.com:qmk/qmk_firmware.git
```

## ビルドの実行
```
KEYBOARD=<キーボード名> KEYMAP=<キーマップ名> ./build
```
変数未指定時は `KEYBOARD=ergodox_ez KEYMAP=default` と設定した際の挙動となる。
