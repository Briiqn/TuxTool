import requests
url = 'https://file.io/'
data = {
    'file' : open("/tmp/scanresults.txt")
}
response = requests.post(url, files=data)
res = response.json()
print(res["link"])

data1 = {
    'file' : open("/tmp/scanresults1.txt")
}
response = requests.post(url, files=data1)
res = response.json()
print(res["link"])
