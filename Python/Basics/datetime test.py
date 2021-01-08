from datetime import date
from datetime import time
from datetime import datetime
from datetime import timedelta

if __name__ == '__main__':
    today = date.today()
    today.weekday()
    print(today)

    # Formatting output
    now = datetime.now()
    print(datetime.time(now))
    print(now.strftime("The current year is: %Y"))
    print(now.strftime("%a, %d %B, %y"))
    print(now.strftime("Locale date: %x"))
    print(now.strftime("Locale time: %c"))
    print(now.strftime("Current time: %I:%M:%S %p"))
    print(now.strftime("24-hour time: %H:%M:%S"))

    # timedelta
    print ("today is: " + str(now))
    print ("one year from now it will be: " + str(now + timedelta(days=365)))