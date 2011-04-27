import os
import glob



def lisfiles(path,files):
    for l in os.listdir(path):
        newpath = path + "/" + l
        if os.path.isdir(newpath) == True:
            lisfiles (newpath,files)
        else:
            if (l.endswith("pdf") or  l.endswith("chm")):
                files.append(l)

                

def treelist(path, j): 
  for l in os.listdir(path):
      if os.path.isdir(l) == True:
          treelist(l,j+1)
      else:
          printwithspace(j,l,path)

          
          


def printwithspace(j,name,path):    
    for i in range(0,j):
        print "--"
    print name






if __name__ == '__main__':
    files=[]
    lisfiles("/home/geegee/Documents",files)
    for j in files:
        print j

