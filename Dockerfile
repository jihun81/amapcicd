# 기반이 될 이미지 선택
FROM node:latest

ARG VERSION

# 작업 디렉토리 생성 및 설정
WORKDIR /usr/src/app

# 앱 의존성 설치
COPY package*.json ./
RUN npm install

# 앱 소스 코드 복사
COPY . .

# 앱 실행
CMD ["npm","run", "start"]
