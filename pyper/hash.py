import base58
from time import time


def generate_id():
    return base58.b58encode(str(time()))
