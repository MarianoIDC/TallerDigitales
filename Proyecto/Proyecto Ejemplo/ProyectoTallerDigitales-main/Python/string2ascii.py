from os import terminal_size


def validateString(text, n):
    for i in range(n):
        number = ord(text[i].lower())
        print(number)
        if (96<number<123 or number==32 or number==241):
            print("caracter valido en la posicion: "+str(i))
        else:
            print("caracter "+text[i]+" no valido en la posicion: "+str(i))
            return False
    return True
            
def string2asc(text):   
    text2ascii = []
    n = len(text)
    if(validateString(text, n)):
        file2 = open("Python\code.txt", "w")
        file = open("Procesador\memory_data.mif", "w")
        file.write("WIDTH=8;\n")
        file.write("DEPTH=256;\n")
        file.write("ADDRESS_RADIX=UNS;\n")
        file.write("DATA_RADIX=UNS;\n")
        file.write("CONTENT BEGIN\n")
        
        mem_count = 0
        for i in range(n):
            if (i==0):
                text2ascii.append(ord(text[i].lower()))
                file.write("    "+str(mem_count)+"    :    "+str(text2ascii[i])+";\n")
                mem_count+=1
                file2.write("["+str(text2ascii[i]))
            else:
                text2ascii.append(ord(text[i].lower()))
                file.write("    "+str(mem_count)+"    :    "+str(text2ascii[i])+";\n")
                mem_count+=1
                file2.write(","+str(text2ascii[i]))
        file.write("    ["+str(mem_count)+"..255]    :    0;\n")
        file.write("END;\n")
        file2.write("]")
        file2.close()    
        for i in range(len(text2ascii)):
            print(chr(text2ascii[i]))
        print(text2ascii)
    else:
        print("La Frase Ingresada tiene caracteres no Validos")





string2asc("Jason es el profe de Taller")
