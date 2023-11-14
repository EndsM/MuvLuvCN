import os
# 指定特定文件夹  
destination_folder = 'repack'
# 创建目标文件夹（如果不存在）  
if not os.path.exists(destination_folder):  
    os.makedirs(destination_folder)
# 获取当前目录下的所有文件和目录  
files_and_dirs = os.listdir()
# 指定特定文件（不包括在此列表中的文件）  
specific_files = ('.vscode','.git')
后缀=('.py','.gitignore')
# 遍历文件和目录列表  
for item in files_and_dirs:  
    # 排除特定文件  
    if item not in specific_files and item!=destination_folder and not item.endswith(后缀):  
        # 获取源文件路径  
        source_file = os.path.join('', item)  
          
        # 获取目标文件路径  
        destination_file = os.path.join(destination_folder, item)  
          
        # 重命名文件  
        os.rename(source_file, destination_file)
print("所有文件（不包括特定文件）已成功剪切到指定文件夹。")  