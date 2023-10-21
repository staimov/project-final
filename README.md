[![My Skills](https://skillicons.dev/icons?i=java,maven,spring,hibernate,postgresql,html,bootstrap,js,jquery,docker&theme=light)](https://skillicons.dev)
# project-final
### JiraRush

Финальный проект JavaRush:

https://javarush.com/quests/lectures/jru.module5.lecture02

## Запуск
```
docker run -p 5432:5432 --name postgres-db -e POSTGRES_USER=jira -e POSTGRES_PASSWORD=JiraRush -e POSTGRES_DB=jira -e PGDATA=/var/lib/postgresql/data/pgdata -v ./pgdata:/var/lib/postgresql/data -d postgres
docker run -p 5433:5432 --name postgres-db-test -e POSTGRES_USER=jira -e POSTGRES_PASSWORD=JiraRush -e POSTGRES_DB=jira-test -e PGDATA=/var/lib/postgresql/data/pgdata -v ./pgdata-test:/var/lib/postgresql/data -d postgres
```

- Если нет бд jira на prod-сервере и бд jira-test на test-сервере, то создать вручную.

- Структура бд jira-test и тестовые данные на test-сервере создаются при ребилде/тестировании проекта.

- Структура бд jira и справочники на prod-сервере создаются при запуске приложения.

- src/main/resources/data4dev/data.sql нужно применить вручную к бд на prod-сервере для наполнения данными для демонстрации.

```
mvn clean install -DskipTests
docker build -t javarush-jira .
docker run -p 8080:8080 --name javarush-jira -d javarush-jira
```
http://localhost:8080/

http://localhost:8080/swagger-ui/index.html

Учетная запись администратора JiraRush:

admin@gmail.com

admin

## Список выполненных задач

1. Разобраться со структурой проекта (onboarding).
2. Удалить социальные сети: vk, yandex.
3. Вынести чувствительную информацию в отдельный проперти файл (логин, пароль БД, идентификаторы для OAuth регистрации/авторизации, настройки почты). Значения этих проперти должны считываться при старте сервера из переменных окружения машины.
4. Переделать тесты так, чтобы во время тестов использовалась in-memory БД (H2), а не PostgreSQL.
5. Написать тесты для всех публичных методов контроллера ProfileRestController.
6. Сделать рефакторинг метода com.javarush.jira.bugtracking.attachment.FileUtil#upload.
7. Добавить новый функционал: добавления тегов к задаче (REST API + реализация на сервисе).
8. --
9. Написать Dockerfile для основного сервера.
10. --
11. --
12. --
