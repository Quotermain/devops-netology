1. Docker-файл выглядит [так](Dockerfile). Образ находится по [ссылке](https://hub.docker.com/repository/docker/quotermain/elastic-netology). Ответ elasticsearch на запрос пути / в json виде выглядит [так](output.json).   

2. Состояние кластера:   
![](screenshots/cluster_state.png)   
Состояние yellow обусловлено тем, что количество реплик у некоторых индексов превышает количество узлов в кластере, что препятствует распределению реплик по кластеру для обеспечения отказоустойчивости.   

3. Запрос для регистрации директории как snapshot repository и ответ на него выглядят так:   
![](screenshots/create_backup_repo.png). Файл json для запроса выглядит [так](create_backup.json).   
Список индексов после создания индекса test:   
![](screenshots/indexes_after_test_creation.png)   
Список файлов в директории со snapshotами:   
![](screenshots/first_snap.png)   
Список индексов после удаления test и создания test-2:   
![](screenshots/test_2_index.png).   
Запрос для восстановления индекса:   
![](screenshots/index_restored.png)   
Итоговое состояние кластера:   
![](screenshots/list_of_indices.png)
