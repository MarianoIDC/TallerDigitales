from os import terminal_size


def validateString(text, n):
    for i in range(n):
        number = ord(text[i].lower())
        print(number)
        if (96<number<123 or number==32 or number==241 or number==44 or number==46 or number==59):
            print("caracter valido en la posicion: "+str(i))
        else:
            print("caracter "+text[i]+" no valido en la posicion: "+str(i))
            return False
    return True
            
def string2asc(text):   
    text2ascii = []
    n = len(text)
    if(validateString(text, n)):
        file2 = open(".\code.txt", "w")
        file = open(".\memory_data.mif", "w")
        file.write("WIDTH=32;\n")
        file.write("DEPTH=2048;\n")
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
        file.write("    ["+str(mem_count)+"..2047]    :    0;\n")
        file.write("END;\n")
        file2.write("]")
        file2.close()    
        for i in range(len(text2ascii)):
            print(chr(text2ascii[i]))
        print(text2ascii)
    else:
        print("La Frase Ingresada tiene caracteres no Validos")





string2asc("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer. Purus semper eget duis at tellus. Morbi leo urna molestie at elementum eu. Praesent tristique magna sit amet purus gravida quis blandit. In ante metus dictum at tempor commodo. Nunc mi ipsum faucibus vitae. Diam quis enim lobortis scelerisque fermentum dui faucibus. Sed odio morbi quis commodo odio aenean sed. Maecenas accumsan lacus vel facilisis volutpat est velit egestas dui. Faucibus in ornare quam viverra orci sagittis eu volutpat odio. Mattis pellentesque id nibh tortor id aliquet lectus proin. Aliquet eget sit amet tellus cras. Pharetra diam sit amet nisl. Ultricies leo integer malesuada nunc vel risus commodo. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim. Porta lorem mollis aliquam ut porttitor leo a diam. Aliquet sagittis id consectetur purus. Vel orci porta non pulvinar neque. Quam viverra orci sagittis eu volutpat. Nisl suscipit adipiscing bibendum est ultricies integer. Ipsum a arcu cursus vitae congue mauris rhoncus aenean. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Vel orci porta non pulvinar neque laoreet suspendisse interdum consectetur. Integer enim neque volutpat ac tincidunt vitae semper quis. Tincidunt id aliquet risus feugiat. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet. Urna cursus eget nunc scelerisque viverra mauris in. In massa tempor nec feugiat nisl. Augue ut lectus arcu bibendum at varius vel. Nisl vel pretium lectus quam id leo in vitae. Nibh tellus molestie nunc non blandit massa enim nec. In massa tempor nec feugiat. Neque egestas congue quisque egestas diam. Eget est lorem ipsum dolor sit amet consectetur adipiscing. Habitant morbi tristique senectus et.")
