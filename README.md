# BPM_counter
※このリポジトリはROS2のパッケージです。
ROS2でbpmcountというノードがbpmcountというトピックを通じてBPMを60から200までをカウントし、それに伴う1秒間の拍数を表示するというものです。

## このリポジトリで使用可能なノード
* bpmcount

## 使用準備
以下のコマンドを順にターミナルで実行してください。  
リポジトリをクローン。
- gitがある方用  
```
git clone git@github.com:kurese-ru/BPM_counter.git
``` 
- gitが無い方用   
```
git clone https://github.com/kurese-ru/BPM_counter.git
```
  
クローンしたリポジトリに移動する。  
```
cd BPM_counter/bpmpkg
```  
実行権限を付与する。  
```
chmod +x bpmcount.py
```  
## 使用方法
以下のコマンドをターミナルで実行する。  
```
ros2 run bpmpkg bpmcount
```  
実行結果  
```

```
## テスト用ファイル,ディレクトリ
* a  
* b  
* c

## 動作環境
### 必要なソフトウェア
* python
  * テスト済み：3.7~3.11

### テスト環境
* ubuntu LTS
  * ROS2 Humble

### テストに使用したコンテナ  
上田教授の[コンテナ](https://hub.docker.com/repository/docker/ryuichiueda/ubuntu22.04-ros2)を使用させていただきました。

## ライセンス
- このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布及び使用が許可されます
- このパッケージのコードの一部は、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを、本人の許可を得て自身の著作としたものです。
  - [ryuichiueda/slides_marp/robosys2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)
- © 2024 Yasuhara Hiroto
