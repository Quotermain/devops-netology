1. -

2. Учитывая тот факт, что в Linux уникальным идентификатором файла является не его имя, а inode, файлы, являющиеся жесткой ссылкой на один объект, не могут иметь разные права доступа и владельца, т.к. у них один inode на всех.

3. -

4. Разбил:
![](screenshots/fdisk_first_partition.png)

5. Использовал команду ```sfdisk -d /dev/sdb | sfdisk /dev/sdc```. Получил:
![](screenshots/fdisk_second_partition.png)

6. -

7. Собрал:
![](screenshots/mdadm.png)

8. -

9. Создал:
![](screenshots/vg_created.png)

10. Создал:
![](screenshots/lv_created.png)

11. Создал:
![](screenshots/ext4_created.png)

12. Смонтировал:
![](screenshots/mounted.png)

13. Файл поместил:
![](screenshots/test_file_downloaded.png)

14. Вывод ```lsblk```:
![](screenshots/lsblk_output.png)

15. Целостность файла проверил:
![](screenshots/file_is_ok.png)

16. Переместил:
![](screenshots/moved_from_md1_to_md0.png)

17. Сделал:
![](screenshots/fail_on_raid1.png)

18. Вывод ```dmesg```:
![](screenshots/dmesg_output.png)

19. Протестировал:
![](screenshots/file_test.png)
