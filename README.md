1. В ходе выполнения команды ```cd``` совершаются 2 системных вызова: ```stat()``` и ```chdir()```.

2. База данных имеет следующий путь: /etc/magic
![](screenshots/file_command_db.png)

3. С учётом того, что задача стоит именно в обнулении открытого удалённого файла именно за счёт перенаправления потоков, то самая простая команда: ```> /proc/<PID>/fd/<fd>```.

4. Зомби-процессы практическим не занимают каких-либо ресурсов ОС, за исключением объёма памяти, необходимого для записи о зомби-процессе в таблице процессов. Если в качестве ресурса рассматривать ограниченный пул идентификаторов процессов, то зомби-процесс также его занимает.

5. Если я правильно понял, ответ на этот вопрос предоставляет команда ```sudo opensnoop-bpfcc -d 1```, с помощью которой можно увидеть следующие файлы:
![](screenshots/opensnoop.png). На второй файл приходится около 20 вызовов.

6. Указанная команда совершает системный вызов uname(). Версию ядра и релиз ОС можно узнать из файлов /proc/sys/kernel/version и /proc/sys/kernel/osrelease соответственно. Цитата из man'a: **"Part of the utsname information is also accessible via /proc/sys/kernel/{ostype, hostname, osrelease, version, domainname}"**.

7. Основная разница заключается в том, что команда, следующая за ```;```, выполняется вне зависимости от статуса, возвращенного командой, стоящей перед ```;```. В случае с ```&&``` команде после данных символов для своего выполнения необходим exit code **0** от команды перед ними. Смысла в использовани ```&&``` при установке опции оболочки ```-e``` (```set -e```) нет, т.к. процесс shell будет прерван, если статус завершенной команды будет отличен от нулевого.

8. Установка указанных опций shell позволяет прервать процесс в случае ненулевого кода выхода (-e), в том числе при использовании пайпов (-o pipefail, по умолчанию пайп возвращает код выхода последней своей команды), а также при использовании неустановленных переменных(-u). Опция -x выводит текст команды с аргументами. Данные опции способствуют процессу поиска ошибок в разрабатываемых скриптах.

9. Наиболее часто встречающийся статус у процессов в системе - это S ("прерываемый сон").
