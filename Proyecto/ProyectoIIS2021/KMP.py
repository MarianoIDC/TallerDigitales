def KMPSearch(pat, text):
    N = len(text)
    M = len(pat)
    lps = [0] * M
    j = 0
    computeLPSArray(pat, M, lps)
    i = 0
    c = 0
    while i < N:
        if text[i] == pat[j]:
            i += 1
            j += 1
        else:
            if j != 0:
                j = lps[j - 1]
            else:
                i += 1
        if j == M:
            c += 1
            print(str(c))
            j = lps[j - 1]

def computeLPSArray(pat, m, lps):
    len = 0
    i = 1
    lps[0]
    while i < m:
        if pat[i] == pat[len]:
            lps[i] = len + 1
            i += 1
            len += 1
        else:
            if len != 0:
                len = lps[len - 1]
            else:
                lps[i] = 0
                i += 1

text = "ABABDABACDABABCABAB"
pat = "ABABCABAB"
KMPSearch(pat, text)
