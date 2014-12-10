import os
import urllib

location = os.getcwd()
version = raw_input("Please input your version: ")

file_name = "play-" + version +  ".zip"
file_location = location + file_name
download_url = "http://downloads.typesafe.com/play/" + version + "/" + file_name 

urllib.urlretrieve("http://downloads.typesafe.com/play/1.2.5.3/play-1.2.5.3.zip", file_location)

os.system("unzip %s") % (file_name)
os.system("mkdir ~/.bin")
