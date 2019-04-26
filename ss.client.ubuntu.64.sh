echo '{     
       "server": "xx.xx.xx.xx",
       "server_port": 443,
       "password": "[change me]",
       "local_address": "127.0.0.1",
       "local_port": 1080,
       "timeout": 300,
       "method": "aes-256-cfb"
  }' > ss.client.cfg

wget https://github.com/shadowsocks/shadowsocks-rust/releases/download/v1.7.0/shadowsocks-v1.7.0-nightly.x86_64-unknown-linux-musl.tar.xz && tar -xf ./shadowsocks-v1.7.0-nightly.x86_64-unknown-linux-musl.tar.xz

./sslocal -c ./ss.client.cfg
