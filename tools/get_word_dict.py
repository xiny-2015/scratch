#!/usr/local/bin/python3
import os
from os.path import join

word_set = set()

def parse_data(data_path):
    """
    @data_path 
    """
    if not os.path.exists(data_path):
        print("%s" % (data_path,":not exists"))
        return

    for root, dirs, files in os.walk(data_path):
        if '~' in dirs:
            dirs.remove('~')  # don't visit ~ directories
        print("parsing",root,":total",len(files) ,"file")
        for sample_data_file in files:
            sample_data_path = join(root,sample_data_file)
            print(sample_data_path)
            for line in open(sample_data_path):
                for word in line:
                    print(word,end="")
                    word_set.add(word)
#        print(sum([getsize(join(root, name)) for name in files]), end="")
#        print("bytes in", len(files), "non-directory files")
#        if 'CVS' in dirs:
#            dirs.remove('CVS')  # don't visit CVS directories

    pass

if __name__ == '__main__':
    parse_data("../data")
    print(word_set)
