# 1. 베이스 이미지: 가벼운 웹 서버인 nginx를 사용합니다.
FROM nginx:alpine

# 2. 내 컴퓨터의 index.html을 컨테이너 안의 웹 서버 경로로 복사합니다.
# (상대 경로 사용: 현재 폴더의 index.html -> 컨테이너 내부 경로)
COPY ./index.html /usr/share/nginx/html/index.html

# 3. 80번 포트를 열어줍니다.
EXPOSE 80