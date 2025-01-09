# bpmpkg
![test](https://github.com/kurese-ru/bpmpkg/actions/workflows/test.yml/badge.svg)  
※このリポジトリはROS2のパッケージです。  
BPMを60から200の範囲で計算し、その結果をbpm_infoというトピックにパブリッシュします。  
また、BPMに基づいて1秒間の拍数も併せてパブリッシュします。  

## ノード
- bpmcount
- listener(テスト用)

## 使用方法
以下のコマンドをターミナルで実行する。(なにも表示されません。)  
```
ros2 run bpmpkg bpmcount
```

### listenerでのテスト結果
上記のコマンドを実行したまま、以下のコマンドを別のターミナルで実行してテストを行いました。
```
ros2 run bpmpkg listener
```  
結果(一部)  
```
[INFO] [1736069185.678389745] [listener]: Received BPM message: "BPM: 62, Beats per second: 1.03"
[INFO] [1736069186.670157423] [listener]: Received BPM message: "BPM: 63, Beats per second: 1.05"
[INFO] [1736069187.670897907] [listener]: Received BPM message: "BPM: 64, Beats per second: 1.07"
[INFO] [1736069188.671323759] [listener]: Received BPM message: "BPM: 65, Beats per second: 1.08"
[INFO] [1736069189.670958803] [listener]: Received BPM message: "BPM: 66, Beats per second: 1.10"
[INFO] [1736069190.671065015] [listener]: Received BPM message: "BPM: 67, Beats per second: 1.12"
[INFO] [1736069191.671049863] [listener]: Received BPM message: "BPM: 68, Beats per second: 1.13"
[INFO] [1736069192.671391541] [listener]: Received BPM message: "BPM: 69, Beats per second: 1.15"
[INFO] [1736069193.671307075] [listener]: Received BPM message: "BPM: 70, Beats per second: 1.17"
```
## テスト用ファイル,ディレクトリ
- launch  
- test  
- listener.py

## 動作環境
### 必要なソフトウェア
- python

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
