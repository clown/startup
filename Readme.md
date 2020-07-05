startup
====

ホストに OS をインストール後、最初に root でログインした際に実行するスクリプト。
OS は CentOS 7 を想定している。

```
# git clone https://github.com/clown/startup.git
# sh startup/startup.sh
```

### 関連処理

スタートアップ (startup.sh) 実行後に何らかのユーザを作成し、終了する。

```
# useradd -m username
# passwd username
# chmod 755 /home/username
# usermod -aG docker username
# service docker restart
# visudo
# su - username
$ mkdir -m 700 .ssh
$ curl https://github.com/clown.keys >> .ssh/authorized_keys
$ chmod 600 .ssh/authorized_keys
$ exit
```
