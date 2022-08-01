Java роль скачана успешно:   
![](screenshots/java_role_downloaded.png)   
Однако при попытке запуска ```molecule test``` получал примерно следующее:   
![](screenshots/error_without_namespace.png)   
Добавил в файл meta/main.yml с ролью java строку с произвольным namespace и role_name: java. Вижу следующее:   
![](screenshots/java_done.png)   
Переработал role для elasticsearch, чтобы файл загружался на целевой узел с контролирующего узла (по предложенной в задании ссылке получаю 403).   
Результаты прогона:   
![](screenshots/elastic_ubuntu.png)

![](screenshots/elastic_centos7.png)

![](screenshots/elastic_centos8.png)   

С Кибаной тоже всё получилось:   
![](screenshots/kibana_centos8.png)

![](screenshots/kibana_centos7.png)   

![](screenshots/kibana_ubuntu.png)
