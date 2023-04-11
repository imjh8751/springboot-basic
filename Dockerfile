# Docker 이미지의 기반이 될 이미지를 지정합니다. OpenJDK 17 버전을 사용합니다.
FROM openjdk:17

# 작업 디렉토리를 설정합니다.
WORKDIR /app

# 호스트의 현재 디렉토리에 있는 JAR 파일을 Docker 이미지 내로 복사합니다.
COPY build/libs/spring-basic-1-0.0.1-SNAPSHOT.jar app.jar

# 애플리케이션의 포트를 노출합니다. 필요에 따라 포트 번호를 변경할 수 있습니다.
EXPOSE 9001

# 애플리케이션을 실행하기 위한 커맨드를 설정합니다.
CMD ["java", "-jar", "app.jar"]
