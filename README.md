# BPM_counter
![test](https://github.com/kurese-ru/bpmpkg/actions/workflows/test.yml/badge.svg)  
※このリポジトリはROS2のパッケージです。  
ROS2でbpmcountというノードがbpm_infoというトピックにBPMを60から200までと、それに伴う1秒間の拍数をパブリッシュするというものです。

## このリポジトリで使用可能なノード
- bpmcount

## 使用準備
以下のコマンドを順にターミナルで実行してください。  
リポジトリをクローン。
```
git clone https://github.com/kurese-ru/BPM_counter.git
```
  
クローンしたリポジトリに移動する。  
```
cd bpmpkg/bpmpkg
```  
実行権限を付与する。  
```
chmod +x bpmcount.py
```  
## 使用方法
以下のコマンドをターミナルで実行する。(なにも表示されません。)  
```
ros2 run bpmpkg bpmcount
```
別の端末で以下のコマンドをターミナルで実行する。
```
ros2 topic echo /bpm_info
```
実行結果(一部)  
```
data: 'BPM: 160, Beats per second: 2.67'
---
data: 'BPM: 161, Beats per second: 2.68'
---
data: 'BPM: 162, Beats per second: 2.70'
---
data: 'BPM: 163, Beats per second: 2.72'
---
data: 'BPM: 164, Beats per second: 2.73' 
```
## テスト用ファイル,ディレクトリ
- launch  
- test  
- listener.py

## 動作環境
### 必要なソフトウェア
- python
  - テスト済み：3.7~3.11

### テスト環境
- ubuntu 22.04.2 LTS
  - ROS2 Humble

### テストに使用したコンテナ  
上田教授の[コンテナ](https://hub.docker.com/repository/docker/ryuichiueda/ubuntu22.04-ros2)を使用させていただきました。

## ライセンス
- このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布及び使用が許可されます
- このパッケージのコードの一部は、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを、本人の許可を得て自身の著作としたものです。
  - [ryuichiueda/slides_marp/robosys2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)
- © 2024 Yasuhara Hiroto
