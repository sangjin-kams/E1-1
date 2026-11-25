# E1-1
<img width="2000" height="625" alt="image" src="https://github.com/user-attachments/assets/442abbf3-f4ee-4d94-b19c-e2875d2589c0" />

# 🚀 프로젝트 E1-1: [내 컴퓨터에 개발자용 '작업실' 꾸미기]

## 1. 프로젝트 개요
- **과제 목표**
  - 절대 경로와 상대 경로의 차이를 예시를 들어 설명할 수 있다.
  - 파일 권한의 의미(r/w/x)와 755, 644 같은 표기가 어떤 규칙으로 해석되는지 설명할 수 있다.
  - 기존 Dockerfile을 기반으로 “커스텀 이미지”를 만들 수 있다.
  - 포트 매핑이 필요한 이유를 설명할 수 있다.
  - Docker 볼륨(영속 데이터)을 설명할 수 있다.
  - Git과 GitHub의 역할 차이(로컬 버전관리 vs 원격 협업 플랫폼)를 설명할 수 있다.
  
- **핵심 요약**: 본 프로젝트는 로컬 환경에서 Docker 컨테이너를 생성하고, 볼륨 마운트 및 포트 포워딩을 설정하여 외부 접속이 가능한 환경을 구축하는 것을 목표로 합니다.

---

## 2. 실행 환경
| 항목 | 상세 내용 |
| :--- | :--- |
| **OS** | [Windows 11] |
| **쉘/터미널** | [PowerShell] |
| **Docker 버전** | [Docker version 29.9.3] |
| **Git 버전** | [git version 2.56.0] |

---

## 3. 수행 항목 체크리스트
- [ ] **터미널/권한**: 사용자 권한 설정 및 터미널 접속 확인
- [ ] **Docker**: Docker 엔진 설치 및 상태 확인
- [ ] **Dockerfile**: 이미지 빌드를 위한 Dockerfile 작성
- [ ] **포트(Port)**: 호스트와 컨테이너 간 포트 포워딩 설정
- [ ] **마운트/볼륨**: 데이터 보존을 위한 볼륨 설정 및 바인드 마운트
- [ ] **Git/GitHub**: 로컬 저장소 초기화 및 원격 저장소 푸시(Push)

---

## 4. 검증 방법 및 결과
### ✅ 주요 검증 절차
1. **컨테이너 실행 확인**: `docker ps` 명령을 통해 컨테이너가 정상 동작하는지 확인
2. **네트워크 접속**: 브라우저에서 `localhost:[포트번호]` 접속 확인
3. **데이터 동기화**: 로컬 파일 수정 시 컨테이너 내부 반영 여부 확인

### 🔗 결과 위치 및 증거
- **결과물 위치**: `/src` 폴더 내 소스 코드
- **증거 링크**: [스크린샷 또는 관련 이슈 링크]

---

## 5. 기술 문서 (명령 및 출력)

### 5.1 Docker 이미지 빌드 및 실행

## 🛠 수행한 작업
1. **환경 구성**: `my-docker-test` 폴더 생성 및 PowerShell 실습
2. **웹 페이지 제작**: `index.html` 작성 (Nginx 서버용)
3. **Dockerfile 작성**: 
   - 베이스 이미지: `nginx:latest`
   - 파일 복사: `index.html`을 컨테이너 내 `/usr/share/nginx/html/`로 복사
4. **도커 실행**:
   - 이미지 빌드: `docker build -t my-web-site .`
   - 컨테이너 실행: `docker run -d -p 8080:80 --name my-web-container my-web-site`
5. **버전 관리**: Git을 초기화하고 GitHub(`E1-1`) 저장소에 푸시 완료
6. **Docker 볼륨 영속성**:
   - 컨테이너 실행: docker run -d -p 8888:80 --name vol-test -v my-vol:/usr/share/nginx/html nginx
   - 데이터 생성: 컨테이너 내부에 test.txt 파일 생성, docker exec vol-test sh -c "echo 'Hello, Volume!' > /usr/share/nginx/html/test.txt"
   - 컨테이너 삭제 : docker rm -f vol-test
   - 새 컨테이너 실행 : docker run -d -p 9999:80 --name vol-test-new -v my-vol:/usr/share/nginx/html nginx

## 🚀 실행 결과
- 터미널 명령 실행
  1. 현재위치 확인
   <img width="421" height="233" alt="스크린샷 2026-11-18 200437" src="https://github.com/user-attachments/assets/542a7f57-f367-4e35-8d03-cc36f5c6842b" />

  2. 목록 확인 (숨김 파일 포함)
   <img width="409" height="253" alt="image" src="https://github.com/user-attachments/assets/68e42a28-73b4-46a7-a35b-da9a9ebd9032" />

  3. test 디렉토리 생성
   <img width="330" height="139" alt="image" src="https://github.com/user-attachments/assets/5da2cb31-3b69-4352-9f42-dd5057b54803" />

  4. 디렉토리 이동
   <img width="238" height="56" alt="image" src="https://github.com/user-attachments/assets/943e7bf1-6498-4b6d-8d8f-ecca763ad97f" />

  5. 파일 생성
   <img width="400" height="130" alt="image" src="https://github.com/user-attachments/assets/8a05fbd1-ce03-4bcc-b252-1498c0ec6ac9" />

  6. 파일 복사
   <img width="427" height="167" alt="image" src="https://github.com/user-attachments/assets/f91a1998-66f9-4c8c-aa79-e33c659250bf" />

  7. 파일 이동
   <img width="388" height="300" alt="image" src="https://github.com/user-attachments/assets/9623fc8f-069d-42d8-b12a-3a35b6d7b876" />
  
  8. 파일 이름변경
   <img width="454" height="142" alt="image" src="https://github.com/user-attachments/assets/d4bd960e-38a2-45a9-af5f-f12841ac35b6" />

  9. 파일 삭제
   <img width="359" height="53" alt="image" src="https://github.com/user-attachments/assets/ccdf4ef8-2dae-45ff-aae1-8aaf1ff8998c" />

  10. 파일 내용 확인
   <img width="339" height="26" alt="image" src="https://github.com/user-attachments/assets/8811fb2c-53a3-41d6-ba6d-f77aec988dbf" />


- 권한 실습 및 증거 기록
  1. 권한 실습용 디렉토리와 파일 생성
   <img width="497" height="279" alt="image" src="https://github.com/user-attachments/assets/c5a99075-41f0-4f45-88be-af9139f0236c" />

  2. 변경 전 권한 확인
   파일 권한
   <img width="386" height="82" alt="image" src="https://github.com/user-attachments/assets/28e74470-d460-4639-a3de-6cf85e742d5e" />
   디렉토리 권한
   <img width="344" height="81" alt="image" src="https://github.com/user-attachments/assets/2e11d630-93e7-40ae-b890-c4a80e2f65cc" />

  3. 파일 권한 변경 후 확인
   <img width="521" height="129" alt="image" src="https://github.com/user-attachments/assets/9992f3b2-36ef-45e5-b5e0-5610a5c96141" />
 
  4. 디렉토리 권한 변경 후 확인
   <img width="472" height="135" alt="image" src="https://github.com/user-attachments/assets/cbbe23b1-7e67-4841-9b74-944197d3d95f" />

- Docker 설치 및 기본 점검
  1. 도커 버전 
   <img width="620" height="149" alt="image" src="https://github.com/user-attachments/assets/ae498d75-184b-479e-857c-56029da7e1ca" />

  2. 도커 인포
   <img width="624" height="718" alt="image" src="https://github.com/user-attachments/assets/8a9760f1-845e-44a8-8ee5-9d42ad207588" />

  3. 도커 hello-world
   <img width="740" height="631" alt="image" src="https://github.com/user-attachments/assets/590133f1-6a42-404d-b435-0a04e1f3b187" />

- 컨테이너 실행연습      
  1. 도커 ubuntu 실행
   <img width="782" height="187" alt="image" src="https://github.com/user-attachments/assets/6b01b848-4e4a-4f6f-9232-71cd1bfd5018" />

  2. 도커 ubnutu 안에서 명령어 실행(ls, echo "Hello Docker Ubuntu", pwd)
   <img width="937" height="467" alt="image" src="https://github.com/user-attachments/assets/61cb7bd9-03f1-4a38-90d7-4a1fff2fe076" />

  3. 브라우저에서 `localhost:8080` 접속 시 커스텀 HTML 페이지 확인 완료
    <img width="942" height="259" alt="image" src="https://github.com/user-attachments/assets/14e7138c-0a08-45ba-a25d-e41a0eecdd4f" />
 
  4. Docker에서 attach는 컨테이너의 기존 메인 프로세스에 연결하는 방식이고, exec는 실행 중인 컨테이너 내부에 새로운 프로세스를 생성하는 방식

  5. 브라우저에서 `localhost:9999` 접속 시 커스텀 HTML 페이지 확인 완료
    <img width="221" height="62" alt="image" src="https://github.com/user-attachments/assets/84fa3825-c80b-4616-9455-374eb641ef1b" />

  6. 도커 영속성
     1) 볼륨 생성 및 test.txt 파일 생성
    <img width="917" height="227" alt="image" src="https://github.com/user-attachments/assets/d26c27e7-ffec-4536-aea6-fd528a2e1e1b" />

     2) 기존 볼륨 삭제 후 신규 볼륨 생성하여 test.txt 파일 확인
    <img width="1045" height="307" alt="image" src="https://github.com/user-attachments/assets/29b41f00-da2d-4bcc-a973-a3507f4f89a3" />

  7. 도커 바인드 마운트
     1) test.txt 파일에 "before update" 작성
    <img width="965" height="192" alt="image" src="https://github.com/user-attachments/assets/626e9907-d3db-4475-9bca-4a17f4306df1" />

     2) "After Update"로 test.txt 파일 내 내용 변경 후 도커에 반영
    <img width="840" height="135" alt="image" src="https://github.com/user-attachments/assets/07c463a0-f981-4c33-8091-461df867d3b1" />

     3) 볼륨과 바인드 마운트 차이 : 볼륨(Volume)은 Docker가 관리하는 저장 공간에 데이터를 보존하는 방식이고, 바인드 마운트(Bind Mount)는 로컬 PC의 파일이나 디렉터리를 컨테이너와 직접 연결하여 공유하는 방식
 
- git과 github 연결      
    <img width="456" height="107" alt="image" src="https://github.com/user-attachments/assets/cb9fe992-dbcd-4d39-bb7c-c194ca57cfe4" />

- Docker 운영 로그
    <img width="1055" height="551" alt="image" src="https://github.com/user-attachments/assets/44fa7013-2e75-4ba1-8cf2-c9ba38a00af2" />

- Git 설정
    <img width="796" height="181" alt="image" src="https://github.com/user-attachments/assets/a7fd098e-994d-45d6-914b-0b4963f9e4a8" />

- vs code 연동
    1) 도커, git 버전 확인
   <img width="1642" height="892" alt="image" src="https://github.com/user-attachments/assets/f57fe72e-5453-4eef-93d8-41fb1cf17f5f" />

    2) 도커 container 설치
   <img width="402" height="617" alt="image" src="https://github.com/user-attachments/assets/93c37a6e-2a9e-4641-b16b-e11066c5a343" />

    3) git 연동
    연동을 위한 명령어 작성
   <img width="787" height="267" alt="image" src="https://github.com/user-attachments/assets/264ab24e-c30a-4f1d-8a97-ece7c4dba3ec" />


    연동결과
   <img width="1790" height="952" alt="image" src="https://github.com/user-attachments/assets/0e7577e8-890a-4807-b126-2c5f2f2797de" />


- 트러블 슈팅 1 (Git은 설치되어 있지만 path 연결이 안되어 있어서 발생)
  <img width="1092" height="192" alt="image" src="https://github.com/user-attachments/assets/723d8898-f9b7-4a8f-b9ea-62bca4d6353a" />
  해결방법 : path 설정 후 터미널 재실행
  검증방법 : git --vsersion  재실행
  해결상태 : 정상 버전 출력 후 완료 처리

- 트러블 슈팅 2(Docker에 같은 이름으로 컨테이너 생성 실시)
  <img width="891" height="250" alt="image" src="https://github.com/user-attachments/assets/0b1ed8b3-b664-4b4d-9da7-067c70a1ae44" />
  해결방법 : 새로운 컨테이너 이름 지정
  검증방법 : docker ps 실행
  해결상태 : 새로운 컨테이너 정상 실행 확인
