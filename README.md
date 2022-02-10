1. Создал такой unit-файл:
![](screenshots/node_exporter_unit_file.png).
Кажется, работает:
![](screenshots/node_exporter_ps_output.png)
При обращении вижу примерно следующее:
![](screenshots/node_exporter_url.png)

2. Для базового мониторинга предлагаю следующие опции (пишу без ```--collector.``` для экономии): cpu, cpufreq, diskstats, filesystem, infiniband, ipvs, loadavg, meminfo, netclass, netdev, netstat.
