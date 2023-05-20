# Task

До вас звернувся колега QA з проханням допомогти у підготовці коду до тестування на різних платформах.

Результатом завдання буде посилання на збережений у репозиторії вихідний код файлів Makefile та Dockerfile.

## Description

Привіт!

Прохання допомогти у підготовці Makefile та Dockerfile для тестування коду продукту на різних платформах та архітектурах, включаючи Linux, arm, macOS та Windows.

Ось що мені потрібно:

1. Мені потрібен Makefile, який дозволить зібрати код на різних платформах та архітектурах. Наприклад, якщо я хочу зібрати код для Linux, я повинен змогти запустити команду "make linux", яка збере код для Linux. Те саме повинно бути зроблено для arm, macOS та Windows.

2. Також для автоматизації тестів, мені потрібен Dockerfile, який дозволить запустити тестовий набір на різних платформах та архітектурах. Наприклад, якщо я хочу запустити тестовий набір на MacOs arm, я хочу Docker-контейнер із бінарним файлом саме в arm, без Qemu та Rosetta. Те саме повинно бути зроблено для Windows.

3. Використай будь ласка альтернативний container registry, щоб уникнути проблем з dockerhub ліцензуванням та лімітами.

Я був би вдячний, якщо ви можете допомогти мені з цим завданням. Якщо у вас є будь-які запитання або потрібні додаткові відомості, будь ласка, дайте мені знати. Таску в jira, якщо треба, я заведу.

З повагою,
QA інженер

## Details

Dockerfile: базовий образ quay.io/projectquay/golang:1.20

Makefile: clean повинен містити видалення новоствореного образу docker rmi <IMAGE_TAG>