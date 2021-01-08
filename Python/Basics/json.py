import urllib.request
import json

# code by Joe Marini's course "Learning Python"
def printResults(data):
    print("--------------\n")
    
    # Use the json module to load the string data into a dictionary
    theJSON = json.loads(data)

    # now we can access the contents of the JSON like any other Python object
    if "title" in theJSON["metadata"]:
        print(theJSON["metadata"]["title"])

    # output the number of events, plus the magnitude and each event name
    count = theJSON["metadata"]["count"]
    print(str(count) + " events recorded")

    # for each event, print the place where it occurred
    for i in theJSON["features"]:
        print(i["properties"]["place"])
    print("--------------\n")

    # print the events that only have a magnitude greater than 4
    for i in theJSON["features"]:
        if i["properties"]["mag"] >= 4.0:
            print("%2.1f" % i["properties"]["mag"], i["properties"]["place"])
    print("--------------\n")

    # print only the events where at least 1 person reported feeling something
    print("\n\nEvents that were felt:")
    for i in theJSON["features"]:
        feltReports = i["properties"]["felt"]
        if (feltReports != None):
            if (feltReports > 0):
                print("%2.1f" % i["properties"]["mag"], i["properties"]
                      ["place"], " reported " + str(feltReports) + " times")


if __name__ == "__main__":
    webUrl = urllib.request.urlopen("http://www.google.com")
    print("Google result code: " + str(webUrl.getcode())) # 200: everything is OK; 404: page not found
    data = webUrl.read() # data from the URL, namely, the HTML code for Google Home page

    # List of all earthquakes for the last day larger than Mag 2.5
    urlData = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson"
    webUrl = urllib.request.urlopen(urlData)
    print("Earthquake web result code: " + str(webUrl.getcode()))
    printResults(webUrl.read().decode("utf-8"))