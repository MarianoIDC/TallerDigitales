def KMPSearch(pat, txt):
    M = len(pat)
    N = len(txt)
  
    # create lps[] that will hold the longest prefix suffix 
    # values for pattern
    lps = [0]*M
    j = 0 # index for pat[]
  
    # Preprocess the pattern (calculate lps[] array)
    computeLPSArray(pat, M, lps)
  
    i = 0 # index for txt[]
    while i < N:
        if pat[j] == txt[i]:
            i += 1
            j += 1
  
        if j == M:
            print ("Found pattern at index " + str(i-j))
            j = lps[j-1]
  
        # mismatch after j matches
        elif i < N and pat[j] != txt[i]:
            # Do not match lps[0..lps[j-1]] characters,
            # they will match anyway
            if j != 0:
                j = lps[j-1]
            else:
                i += 1
  
def computeLPSArray(pat, M, lps):
    len = 0 # length of the previous longest prefix suffix
  
    lps[0] # lps[0] is always 0
    i = 1
  
    # the loop calculates lps[i] for i = 1 to M-1
    while i < M:
        if pat[i]== pat[len]:
            len += 1
            lps[i] = len
            i += 1
        else:
            # This is tricky. Consider the example.
            # AAACAAAA and i = 7. The idea is similar 
            # to search step.
            if len != 0:
                len = lps[len-1]
  
                # Also, note that we do not increment i here
            else:
                lps[i] = 0
                i += 1
  
txt = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer. Purus semper eget duis at tellus. Morbi leo urna molestie at elementum eu. Praesent tristique magna sit amet purus gravida quis blandit. In ante metus dictum at tempor commodo. Nunc mi ipsum faucibus vitae. Diam quis enim lobortis scelerisque fermentum dui faucibus. Sed odio morbi quis commodo odio aenean sed. Maecenas accumsan lacus vel facilisis volutpat est velit egestas dui. Faucibus in ornare quam viverra orci sagittis eu volutpat odio. Mattis pellentesque id nibh tortor id aliquet lectus proin. Aliquet eget sit amet tellus cras. Pharetra diam sit amet nisl. Ultricies leo integer malesuada nunc vel risus commodo. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim. Porta lorem mollis aliquam ut porttitor leo a diam. Aliquet sagittis id consectetur purus. Vel orci porta non pulvinar neque. Quam viverra orci sagittis eu volutpat. Nisl suscipit adipiscing bibendum est ultricies integer. Ipsum a arcu cursus vitae congue mauris rhoncus aenean. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Vel orci porta non pulvinar neque laoreet suspendisse interdum consectetur. Integer enim neque volutpat ac tincidunt vitae semper quis. Tincidunt id aliquet risus feugiat. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet. Urna cursus eget nunc scelerisque viverra mauris in. In massa tempor nec feugiat nisl. Augue ut lectus arcu bibendum at varius vel. Nisl vel pretium lectus quam id leo in vitae. Nibh tellus molestie nunc non blandit massa enim nec. In massa tempor nec feugiat. Neque egestas congue quisque egestas diam. Eget est lorem ipsum dolor sit amet consectetur adipiscing. Habitant morbi tristique senectus et."
pat = "Lorem"
KMPSearch(pat, txt)