# 70. Jenkins와 Docker를 이용한 배포 자동화하기

## 학습목표

- Jenkins와 Docker를 이용하여 배포를 자동화 할 수 있다.

## 요구사항

- 애플리케이션 배포를 자동화 하라.

## 실행 결과

- 이전과 같다.

## 작업

- 배포 파일 생성 및 실행 확인
  - build.gradle 변경
  - $ java -jar myapp.jar 
- 스프링부트 설정 파일을 개발과 운영으로 분리
  - application-dev.properties (개발)
  - application-prod.properties (운영)
  - 실행 옵션
    - JVM 아규먼트: `-Dspring.profiles.active=dev`
      - 예) $ java -Dspring.profiles.active=prod -jar myapp.jar
      - 예) Gradle: 환경변수를 통해 설정
        - $ export SPRING_PROFILES_ACTIVE=dev
        - $ gradle bootRun
      - 예) IntelliJ : 환경변수를 통해 설정한다.
        - bootRun -> 구성 -> 편집: spring.profiles.active=dev
    - 프로그램 아규먼트: `--spring.profiles.active=dev`
      - 예) $ java -jar myapp.jar --spring.profiles.active=prod
      - 예) $ gradle bootRun --args='--spring.profiles.active=dev'


  
## 소스 파일

