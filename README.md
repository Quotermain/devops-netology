1. Согласно выводу команды ```type cd```, команда ```cd``` относится к типу *builtin*. Предположу, что по аналогии с командой ```echo```, команда ```cd``` могла бы быть реализована в виде бинарного файла. Однако встроенная версия предполагает максимальную эффективность выполнения.

2. Альтернативой будет команда ```grep -c <some_string> <some_file>```.

3. Речь о процессе ***systemd***:
![](screenshots/systemd.png)

4. Предположим, что PID сессии терминала, куда нам необходимо перенаправить поток ошибок команды ```ls```, **392557**. Тогда мы можем использовать следующую команду:```ls asdgsdhfgh 2> /proc/392557/fd/1```, где **asdgsdhfgh** - например, несуществующая директория. На адресуемой вкладке получаем:
![](screenshots/stder_redirection.png)
