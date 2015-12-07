# ベースイメージの指定
FROM centos:latest

# 作成者情報
MAINTAINER 0.1 mitsuhide@hi-enta.com

# Apache httpdのインストール
RUN ["yum", "-y", "install", "httpd"]

# Webコンテンツの配置
ONBUILD ADD website.tar /var/www/html/

# httpdの実行
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
