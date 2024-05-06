import base58
import random
from time import time


def generate_id():
    return base58.b58encode(str(time()))
