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
# systemctl restart docker
# visudo
# su - username
$ mkdir -m 700 .ssh
$ curl https://github.com/clown.keys >> .ssh/authorized_keys
$ chmod 600 .ssh/authorized_keys
$ rbenv install 3.1.2
$ rbenv global 3.1.2
$ exit
```

### その他

#### docker-compose v1 の削除

docker-compose v2 への移行に伴い、v1 を削除する。

```
# rm -f /usr/local/bin/docker-compose
```
