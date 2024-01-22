#!/usr/bin/python3
def safe_print_list(my_list=[], x=0):
    try:
        my_list = ['Kevin', True, 'Vinnie', False, 'Dee', 2405, 2.30]
        print(my_list)
    except ValueError:
        print(f"List is empty: {[]}", my_list)
safe_print_list(['Kevin'], 2)
