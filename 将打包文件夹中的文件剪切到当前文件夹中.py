import os

# 指定要删除的文件夹  
source_folder = '打包'

# 将文件夹内的所有文件剪切到当前文件夹  
files_and_dirs = os.listdir(source_folder)  
for item in files_and_dirs:  
    source_file = os.path.join(source_folder, item)  
    destination_file = os.path.join('', item)  
    os.rename(source_file, destination_file)

# 删除空文件夹  
os.rmdir(source_folder)

print("特定文件夹已成功删除。")  
