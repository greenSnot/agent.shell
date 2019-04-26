apt install shadowsocks -y
wget https://github.com/shadowsocks/shadowsocks-rust/releases/download/v1.7.0/shadowsocks-v1.7.0-nightly.x86_64-unknown-linux-musl.tar.xz && tar -xf ./shadowsocks-v1.7.0-nightly.x86_64-unknown-linux-musl.tar.xz

./ssserver -s "[::]:443" -m "aes-256-cfb" -k "pwd[change me]" &
