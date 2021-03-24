from PIL import Image
from os import walk
def pic_webp(picpath):
	imagePath = picpath.split(".")[0] #文件名称
	outputPath = imagePath + ".webp" #输出文件名称
	im = Image.open(imagePath) #读入文件
	im.save(outputPath) #保存
for (dirpath,dirname,dirfile) in os.walk("./"):
	if dirfile.split(".")[1] in ["png","jpeg","jpg"]:
		pic_webp(dirpath+"/"+dirfile)