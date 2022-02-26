1. Выполнил по иструкции. Вижу следующее:
![](screenshots/public_router.png)

2. Добавил интерфейс с ip 1.1.1.0/24:
![](screenshots/dummy.png)

3. Для просмотра открытых TCP портов можно использовать, например, команду ```sudo netstat -tulpn | grep LISTEN```:
![](screenshots/opened_ports.png)
Например, порт 3306 использует протокол IPv6 и приложение mysqld:
![](screenshots/mysqld.png).

4. Проверить используемые UDP сокеты можно командой ```ss -l -u -e -p -4```:
![](screenshots/used_UDP_sockets.png)
Данная команда выводит UDP сокеты, использующие только протокол IPv4. Среди используемых приложений присутствует браузер chrome.

5. Примерно так:
![](screenshots/net.drawio.png)
