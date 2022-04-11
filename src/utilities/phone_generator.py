import random

phone_number_country = ['es',
                        'fr',
                        'be']


def __generate_random_phone(max_len):
    num = ""
    while len(num) < max_len:
        num = num + str(random.randint(0, 9))
    return num


def generate_random_country_id():
    random_country_index = random.randint(0, len(phone_number_country) - 1)
    return phone_number_country[random_country_index]


def generate_phone_by_country(user_country=generate_random_country_id()):
    if str(user_country).lower() in phone_number_country:
        if user_country == 'es':
            return "+346" + __generate_random_phone(8)
        if user_country == 'fr':
            pre_num = str(random.randint(6, 7))
            if pre_num == "7":
                num = str(random.randint(3, 9)) + __generate_random_phone(7)
                return "+33" + pre_num + num
            if pre_num == "6":
                num = __generate_random_phone(8)
                return "+33" + pre_num + num
        if user_country == 'be':
            return "+32460" + __generate_random_phone(6)
    else:
        return None
