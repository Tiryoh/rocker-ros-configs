# rocker-ros-configs

Dockerfile for ROS Workspace

## インストール方法

### osrf/rockerをインストール

以下のコマンドでrockerをインストールします

```
python3 -m pip install rocker
```

詳しくは公式ドキュメントを参照してください  
https://github.com/osrf/rocker

### 本ツールをダウンロード

ROS用ワークスペースを作成し、本リポジトリをダウンロードします  
`~/ros`以外で作成しても問題ありません

```
mkdir -p ~/ros/
cd ~/ros/
git clone https://github.com/Tiryoh/rocker-ros-configs.git
```

### Dockerイメージをビルドしてワークスペースを初期化

```
cd ~/ros/rocker-ros-configs
./build.sh
```

## 使用方法

Dockerコンテナを起動

```
./launch.sh
```

## License

```
(C) 2022 Daisuke Sato <tiryoh@gmail.com>
```

This repository is licensed under the MIT License, see [LICENSE](./LICENSE).  
Unless attributed otherwise, everything in this repository is licensed under the MIT license.
