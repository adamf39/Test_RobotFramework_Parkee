import random
import string

class RandomUsernameLibrary:
    global_random_username = ""

    @classmethod
    def generate_random_username(cls, name):
        random_numbers = ''.join(random.choices(string.digits, k=3))
        cls.global_random_username = f"{name}{random_numbers}"
        return cls.global_random_username
