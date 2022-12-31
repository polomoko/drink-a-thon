import os
path = '/Users/alexandre/WorkSpace/drink-a-thon/lib/assets/images_meme'
files = os.listdir(path)


for index, file in enumerate(files):
    os.rename(os.path.join(path, file), os.path.join(path, ''.join([str(index), '.jpg'])))