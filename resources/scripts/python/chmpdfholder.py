import sqlite3
import os


def lisfiles(path,files):
    for l in os.listdir(path):
        newpath = path + "/" + l
        if os.path.isdir(newpath) == True:
            lisfiles (newpath,files)
        else:
            if (l.endswith("pdf") or  l.endswith("chm")):
                files.append([l.decode("utf-8")])        



if __name__ == '__main__':
    db = sqlite3.connect("pdfchm.db")
    cursor = db.cursor()

    cursor.execute(""" CREATE TABLE IF NOT EXISTS metainfo(id INTEGER PRIMARY KEY AUTOINCREMENT,
                       last_checked DATETIME) """)

    #delete from metainfo

    
    cursor.execute(""" CREATE TABLE IF NOT EXISTS pdfchms(id INTEGER PRIMARY KEY AUTOINCREMENT,
                       name TEXT,size INTEGER, checksum TEXT ) """)
    
    
    
    pdfs = []
    lisfiles("/home/geegee/Documents",pdfs)

    for row in pdfs:
        print row[0]
        cursor.execute(" SELECT * FROM pdfchms where name = :name ",{"name":row[0]})
        r = cursor.fetchone()
        if not r:
            cursor.execute(""" INSERT INTO pdfchms (name) VALUES(?) """, tuple(row))
            db.commit()
         
         
    cursor.execute(""" SELECT * FROM pdfchms """)

    for row in cursor:
        print row
        
    db.close()
