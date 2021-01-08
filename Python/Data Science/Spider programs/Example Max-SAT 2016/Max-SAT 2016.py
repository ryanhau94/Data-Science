'''
Recently, I have been working the Max-SAT problem and use the Max-SAT 2016
to do a proper benchmark, which requires the known best solution to different
test sets. There are thousands test sets so I wrote the following program to
fetch the data I need.
'''
import numpy as np

import requests
import urllib.request
from bs4 import BeautifulSoup

def get_opt_ans(url, split_row):
    headers = {'User-Agent': 'Mozilla/5.0'}
    response = requests.get(url, headers=headers)
    soup = BeautifulSoup(response.content, 'html.parser')
    all_string = []
    for item in soup.find_all('font'):
        for string in item.stripped_strings:
            all_string.append(string)
    opt_ans = [item[0].split(' ')[-1] for item in np.array(all_string[6:]).reshape(-1,split_row*2)]
    for ii in range(len(opt_ans)):
        if opt_ans[ii] == 'N/A':
            opt_ans[ii] = '9999999999'
    return np.array(list(map(int,opt_ans)))

if __name__ == '__main__':
    opt_ans = get_opt_ans('http://maxsat.ia.udl.cat/detailed/incomplete-ms-random-table.html', 15)
    print(opt_ans)

    opt_ans = get_opt_ans('http://maxsat.ia.udl.cat/detailed/incomplete-wpms-random-table.html', 14)
    print(opt_ans)