# 環境構成

## ホスト
- macOS (Apple Silicon)
- bash 5.x (brew install) を使用
- Docker Desktop on Mac（Kali Linux VMは使わない）

## lab環境
- 8つのDockerコンテナ、2つのネットワーク
  - public: 172.16.10.0/24
  - corporate: 10.1.0.0/24（internal）
- p-jumpbox-01が両ネットワークを橋渡し（ピボットポイント）
- `sudo make deploy` でビルド・起動（初回は数GBのダウンロードあり）

## shebang
- `#!/usr/bin/env bash` に統一（macOS標準の bash 3.2 を回避するため）
- 変更済みファイル: run.sh, provision.sh, init.sh, backup_data.sh, execute.sh
