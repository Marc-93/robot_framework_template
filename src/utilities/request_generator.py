import requests


def request_generator(type, url, headers, payload):
    response = requests.request(type,
                             url,
                             headers=headers,
                             data=payload)
    return response.content