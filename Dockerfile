# 使用 ubuntu:18.04 作為基礎映像
FROM ubuntu:18.04

# 更新 apt 包管理器並安裝 Nginx
RUN apt update && apt install -y nginx

# 設置工作目錄
WORKDIR /var/www/html

# 暴露端口 80
EXPOSE 80


# 設置容器啟動時運行 Nginx
CMD ["nginx", "-g", "daemon off;"]
