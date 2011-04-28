import sqlite3
import os
from Tkinter import *
import tkMessageBox
import Tkinter


def lisfiles(path,files):
    for l in os.listdir(path):
        newpath = path + "/" + l
        if os.path.isdir(newpath) == True:
            lisfiles (newpath,files)
        else:
            if (l.endswith("pdf") or  l.endswith("chm")):
                files.append([l.decode("utf-8")])        



def searchlist():
    global listbox, entryWidget

    if entryWidget.get().strip() == "":
        tkMessageBox.showerror("Tkinter Entry Widget", "Enter a text value")
    else:
        listbox.delete(0,END)
        populateList(entryWidget.get().strip(), listbox)


def populateList(searchTerm, listbox):
    db = sqlite3.connect("pdfchm.db")
    cursor = db.cursor()
    searchTerm = "%" + searchTerm + "%"
    cursor.execute(""" SELECT name FROM pdfchms where name like :like """, {"like":searchTerm})    
    for row in cursor:
        listbox.insert(END, row)
    db.close()
     

        
    

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
        cursor.execute(" SELECT * FROM pdfchms where name = :name ",{"name":row[0]})
        r = cursor.fetchone()
        if not r:
            cursor.execute(""" INSERT INTO pdfchms (name) VALUES(?) """, tuple(row))
            db.commit()         
         
    cursor.execute(""" SELECT name FROM pdfchms """)

    main = Tk()
    main.title(" Collection of Pdf and chms")
    main["padx"] = 10
    main["pady"] = 10
    textFrame = Frame(main)
    
    entryLabel = Label(textFrame)
    entryLabel["text"] = "Search:"
    entryLabel.pack(side=LEFT)

     # Create an Entry Widget in textFrame
    entryWidget = Entry(textFrame)
    entryWidget["width"] = 50
    entryWidget.pack(side=LEFT)

    button = Button(textFrame, text="search", command=searchlist)
    button.pack(side=LEFT)

    textFrame.pack()

    listbox  = Listbox(main)

    

    for row in cursor:
        listbox.insert(END, row)
        
    db.close()
    listbox.pack(fill=BOTH, expand=1)
    main.mainloop()
