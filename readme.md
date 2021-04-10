### Пример базового приложения на Laravel

- Базовый пример создан с помощью докер образа composer командой из документации:

```
composer create-project laravel/laravel example-app
```

- В центральную страницу примера: resources/views/welcome.blade.php добавлена проверка БД и кеша
- В config/logging.php добавлено логирование в stdout - создан отдельный channel и он выставлен в stack единственным каналом (сделано для того, чтобы нормально поддержать логирование сервиса в k8s).
- Dockerfile состоит из двух частей: build зависимостей через composer и далее запуск в runtime с поддержкой memcached.
- Инструкции по запуску и деплою можно найти здесь: https://github.com/IsieIam/laravel_deploy
- Jenkinsfile - пример pipeline для Jenkins для билда образа
