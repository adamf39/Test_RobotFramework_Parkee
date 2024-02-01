import random
import string

class RandomUsernameLibrary:
    def generate_random_username(self, name):
        random_numbers = ''.join(random.choices(string.digits, k=3))
        return f"{name}{random_numbers}"