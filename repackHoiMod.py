import os
import re
import shutil


def onDeleteError(func, path, exc_info):
    import stat

    if not os.access(path, os.W_OK):
        os.chmod(path, stat.S_IWUSR)
        func(path)
    else:
        raise


class RepackHoiMod:
    def __init__(self):
        self.help = "Place this script or built exe to root folder of your mod project."
        self.helpCN = "将该脚本或者打包后的exe文件放到你的mod工程的根目录"
        self.describe = "Create a repacked HOI4 mod within your working space."
        self.describeCN = "在你的工作空间目录中创建一个打包好可以发布的mod."
        self.currentDirectory = os.getcwd()
        self.currentProjectName = os.path.basename(self.currentDirectory)
        self.repackFolder = os.path.join(self.currentDirectory, "repack")
        self.resultDirectory = os.path.join(self.repackFolder, self.currentProjectName)

    def cleanRepackFolder(self) -> bool:
        if os.path.exists(self.repackFolder):
            shutil.rmtree(self.repackFolder, onexc=onDeleteError)
            return True
        return False

    def createCopy(self) -> bool:
        shutil.copytree(self.currentDirectory, self.resultDirectory)
        return True

    def createModInfo(self) -> bool:
        descriptorFile = os.path.join(self.currentDirectory, "descriptor.mod")
        if os.path.exists(descriptorFile):
            copiedToPath = os.path.join(
                self.repackFolder, self.currentProjectName + ".mod"
            )
            shutil.copy2(descriptorFile, copiedToPath)

    def deleteDevelopmentFilesFromOutput(self, extensionsToDelete: tuple[str]) -> bool:
        files = os.listdir(self.resultDirectory)
        for file in files:
            if file.endswith(extensionsToDelete):
                filePath = os.path.join(self.resultDirectory, file)
                os.remove(filePath)

    def deleteDevelopmentFoldersFromOutput(self, folderNames) -> bool:
        folders = os.listdir(self.resultDirectory)
        for folder in folders:
            if os.path.isdir(os.path.join(self.resultDirectory, folder)):
                if folder in folderNames:
                    shutil.rmtree(
                        os.path.join(self.resultDirectory, folder),
                        onexc=onDeleteError,
                    )
        return True

    def readProjectNameFromDescriptor(self) -> bool:
        if os.path.exists("descriptor.mod"):
            with open("descriptor.mod", "r") as f:
                descriptorContent = f.read()
                match = re.search(r'name="([^"]+)"', descriptorContent)
                if match:
                    self.currentProjectName = match.group(1)
                    self.resultDirectory = os.path.join(
                        self.repackFolder, self.currentProjectName
                    )
                    return True
                else:
                    return False
        else:
            return False


# initialize the repacker
program = RepackHoiMod()
# prepare the repack folder
program.cleanRepackFolder()
# read project name if descriptor exists
program.readProjectNameFromDescriptor()
# create a copy of current project
program.createCopy()
program.createModInfo()
# delete development files that not suitable for release
fileExtensionsToDelete = (".exe", ".py", ".gitignore",".gitattributes")
program.deleteDevelopmentFilesFromOutput(fileExtensionsToDelete)
program.deleteDevelopmentFoldersFromOutput([".vscode", ".git"])
