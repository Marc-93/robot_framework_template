

def X_Auth_ContentType(DeviceId, contentType='application/json'):
    return {'Content-Type': contentType, 'X-Bling-Device-Id': DeviceId}

def X_Auth_ContentType_Token(Token, DeviceId, contentType='application/json'):
    return {'Content-Type': contentType, 'Authorization': Token, 'X-Bling-Device-Id': DeviceId}