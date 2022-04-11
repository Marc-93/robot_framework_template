import json


def create_user_phone(phone):
    payload = json.dumps(
        {
            "phone": phone
        })
    return payload