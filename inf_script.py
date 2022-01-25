import time

f = open('log_file.txt', 'w')

while True:
    cur_time = time.localtime()
    print(
        time.strftime("%H:%M:%S", cur_time),
        'some stuff', file=f
    )
    f.flush()
    time.sleep(10)
