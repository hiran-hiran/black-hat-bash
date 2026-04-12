# 学習進捗

## 完了
- **ch01**: bash基礎
- **ch02**: フロー制御とテキスト処理（テスト演算子、grep/awk/sed）
- **ch03**: lab環境セットアップ（Docker deploy完了、Kali攻撃用コンテナ追加）
- **ch04**: 偵察 - ホスト発見（ping/nmap/arp-scan）、ポートスキャン（nmap/rustscan/nc）、バナーグラビング（nc/curl/nmap NSE/whatweb/jq）

- **ch05**: 脆弱性スキャンとファジング - Nikto Webスキャン、ディレクトリインデックススキャナー構築、robots.txt解析、dirsearch辞書攻撃（/upload・.git発見）、Gitリポジトリ探索（git-dumper）、Nuclei脆弱性スキャン（カスタムテンプレート・FTP匿名アクセス検出）、ファジング（ffuf/wfuzz）、Nmap NSE SSH診断
  - ※ffuf/wfuzzの実行は未完（ネットワーク都合でKaliリビルド未実施）

- **ch06**: Webシェルの取得 - PHPウェブシェル構築・配置、Webシェル用bashクライアント、OSコマンドインジェクション（donate.phpのパイプ注入）、インジェクション用インターフェース構築、制限回避手法（base64エンコード・グロブ）

- **ch07**: リバースシェル - リバースシェルの仕組み（ペイロード・リスナー）、Netcat/pwncatでの接続確立、通信の暗号化（Ncat SSL）、ポートホッピング、擬似端末（TTY）シェル、侵入後のプログラム配置（curl/pwncat/正規サイト経由）、自動再接続スクリプト、SSH辞書攻撃（sshpass）
  - ※リバースシェルの実機実行はdonate.php経由で成功確認済み

- **ch08**: ローカルの情報収集 - FHS（ディレクトリ構造）、シェル環境・環境変数、ユーザー・グループ（/etc/passwd）、プロセス調査（ps・/proc）、OS特定、ネットワーク情報（ip addr・netstat・iptables）、DNS、インストール済みソフトウェア、ストレージ・マウント、ログ、設定ファイル、cronジョブ、仮想化検出、LinEnum
  - ※主要発見: jumpboxマルチホーミング（10.1.0.0/24）、wp-config.phpからDB認証情報、execute.sh・backup_data.shの権限昇格経路、Living off the Land（標準コマンドのみで情報収集）

## 進行中
- **ch09**: （次章）
