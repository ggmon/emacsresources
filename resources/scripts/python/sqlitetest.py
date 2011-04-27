import sqlite3

pdfs = [[ "one.pdf", 12222, "aefffffffffffffff4"]]

if __name__ == '__main__':
    db = sqlite3.connect("pdfchm.db")
    cursor = db.cursor()
    
    cursor.execute(""" CREATE TABLE pdfchms(id INTEGER PRIMARY KEY AUTOINCREMENT,
                       name TEXT,size INTEGER, checksum TEXT)""")

    for row in pdfs:
        cursor.execute(""" INSERT INTO pdfchms VALUES(name,size,checksum) """, tuple(row))
        


    cursor.execute(""" SELECT * FROM pdfchms """)

    for row in cursor:
        print row


