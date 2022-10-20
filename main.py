import hashlib
import os.path
import sys


def get_path():
    path = sys.argv
    if len(path) <= 1:
        path = input('Введите путь: ').replace('"', '')
    else: 
        path = path[1]
    return path



def get_md5(path=str):
    with open(path, 'rb') as file:
        data = file.read()
        md5 = hashlib.md5(data).hexdigest()
    return md5


def get_size(path=str):
    size = os.path.getsize(path)
    formatted_size = f'{size:,}'.replace(',', ' ')
    return formatted_size


def creat_res_file(path, md5, size):
    path = os.path.split(path)
    path_res_file = os.path.join(path[0], f'{path[1]} - md5 and size.txt')
    with open(path_res_file, 'w') as file:
        file.write(f'MD5 - {md5}\nSize - {size} bytes')


if __name__ == '__main__':
    path = get_path()
    md5 = get_md5(path)
    size = get_size(path)
    creat_res_file(path, md5, size)

