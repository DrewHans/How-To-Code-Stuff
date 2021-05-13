#!/usr/bin/env python

def read_file():
    file_path = "filename.txt"
    
    try:
        file_reader = open(file_path, 'r')
        file_contents = file_reader.read()
        print(file_contents)
    except:
        print("Something went wrong when reading the file")
    finally:
        file_reader.close()

def write_file():
    try:
        file_path = "filename.txt"
        file_writer = open(file_path, 'w')
        file_writer.write("some stuff\n")
    except:
        print("Something went wrong when writing to the file")
    finally:
        file_writer.close()
