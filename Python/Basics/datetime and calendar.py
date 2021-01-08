from datetime import date
from datetime import time
from datetime import datetime
from datetime import timedelta

import calendar

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
    print("today is: " + str(now))
    print("one year from now it will be: " + str(now + timedelta(days=365)))

    t = datetime.now() - timedelta(weeks=1)
    s = t.strftime("%A %B %d, %Y")
    print("one week ago it was " + s)

    today = date.today()
    afd = date(today.year, 12, 25)
    print("It's ", (afd - today).days, "days until next Christmas!")

    # calendar
    c = calendar.TextCalendar(calendar.SUNDAY)
    str = c.formatmonth(2020, 1, 0, 0)
    print(str)

    hc = calendar.HTMLCalendar(calendar.SUNDAY) # HTML format
    str = hc.formatmonth(2017, 1)
    print(str)

    print([i for i in c.itermonthdays(2020, 1)]) # zeroes mean that the day of the week is in an overlapping month
    print([month for month in calendar.month_name])
    print([day for day in calendar.day_name])
