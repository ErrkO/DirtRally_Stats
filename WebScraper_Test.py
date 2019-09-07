import requests
from bs4 import BeautifulSoup

# The site we will navigate into, handling it's session
#URL = 'https://accounts.codemasters.com/auth/login?client_id=kMSKmBY4R3pY&redirect_uri=https%3A%2F%2Fdirtrally2.com%2Foauth&skin=Clean&state=CfDJ8FghCukLQ7dFoAC1DgPf_Twgypafv-e0AKsNpxiCrOtMQVlgbYonjbELHFenxhuLpNY_rb5Pa0EaKLZdru3-uaEPlGoV5GQcNFcFAskf_sSJouYgDQh1uW9iV-SD1UyN5Z4uV-nWDF6OlLCRRG-BFKFlDA7XjO3RS5i5LKX4vXTki_aXvQVOeIjJvpqmLLMdFTs0UOlhk_T80PI5bzcgB4k&reauthenticate=0&grant_type=code&flow=ext&idw=0&auth_hash=p%2B6has1YhoGjsardvZYz2uWYQW4%3D')
URL = 'https://en.wikipedia.org/wiki/Face_Stabber'
data = requests.get(URL)
soup = BeautifulSoup(data.text,'html.parser')

tracklist = soup.find('table', {'class': 'tracklist'})
tbody = tracklist.find('tbody')

tdData = []
i = 0

no = ''
title = ''
length = ''

for tr in tbody.find_all('tr'):

    for td in tr.find_all('td'):
        
        if (i % 3 == 0):
            no = td.text

        elif (i % 3 == 1):
            title = td.text

        elif (i % 3 == 2):
            length = td.text

        i += 1

    tdData.append('#' + no + ' ' + title + ' ' + length)

tdData.pop(0)

for i in range(0,len(tdData)):
    print(tdData[i])
