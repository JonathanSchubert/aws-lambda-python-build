import os
import sys
CWD = os.path.dirname(os.path.realpath(__file__))
sys.path.insert(0, os.path.join(CWD, "../build/python"))

import requests


def lambda_handler(event, context):

    version = 10
    joke    = None

    try:
        response = requests.get('http://api.icndb.com/jokes/random')
        joke = response.json()['value']['joke']
    except:
        raise Exception('No jokes left...')

    return {'joke': joke, 'version': version}
