# Kali攻撃用コンテナ

## 概要
macにツールを直接インストールせず、Kali Linuxコンテナから標的コンテナを攻撃する構成。
本の環境（Kali VM → Docker）をコンテナ同士（Kali コンテナ → 標的コンテナ）で再現。

## ネットワーク構成
```
kali (172.16.10.100) ── public (172.16.10.0/24) ── 標的コンテナ群
```

## 使い方
```bash
# labディレクトリで全コンテナ起動
cd lab
sudo make deploy

# kaliコンテナに入る
docker exec -it kali bash

# kali内から攻撃
nmap -sn 172.16.10.0/24
nmap -sV 172.16.10.10
arp-scan -I eth0 172.16.10.0/24
```

## ツールの追加
章が進んで新しいツールが必要になったら `lab/machines/kali/Dockerfile` に追記してリビルド。

```bash
# リビルド
docker compose build kali
docker compose up -d kali
```

## インストール済みツール
- nmap
- netcat-openbsd
- curl, wget
- dnsutils (dig, nslookup)
- arp-scan
- iputils-ping
- iproute2
- vim-tiny
- whatweb, jq
- nikto
- tree
- dirsearch
- ffuf, wfuzz (Dockerfile追記済み、未リビルド)
- nuclei (手動インストール、リビルドで消える)
- git, git-dumper (手動インストール、リビルドで消える)
- ftp (手動インストール、リビルドで消える)
