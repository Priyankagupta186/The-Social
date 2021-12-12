

def v(c):
    if c >= '0' and c <= '9':
        return int(c)
    else:
        return ord(c) - ord('A') + 10

def deci(st, bas):
    llen = len(st)
    power = 1
    num = 0
    for i in range(llen - 1, -1, -1):
        num += v(st[i]) * power
        power = pow * bas
    return num

def mmm(st):
    r = 0
    for j in st:
        r = max(r, (v(j)))
    return r

for _ in range(int(input())):
    base = []
    num = []
    for __ in range(int(input())):
        inp = input()
        a = inp.split(" ")
        base.append(int(a[0]))
        num.append(a[1])
    f = 0
    flag = 0
    s = []
    s1 = []
    for i in range(len(base)):
        n = num[i]
        n1 = base[i]
        if(n1 != -1):
            s1.append(deci(n, n1))
    mn = 0
    for i in range(len(base)):
        n = num[i]
        n1 = base[i]
        if(n1 == -1):
            flag = 1
            s = []
            mm = (mmm(n)+1)
            for j in range(mm, 37):
                nnn = deci(n, j)
                s.append(nnn)
            mn = i
            break
    s = set(s)
    for i in range(mn, len(base)):
        n = num[i]
        n1 = base[i]
        if(n1 == -1):
            flag += 1
            bo = []
            mm = (mmm(n)+1)
            for j in range(mm, 37):
                nnn = deci(n, j)
                bo.append(nnn)
            s = s.intersection(bo)
    s = list(s)
    s.sort()
    f = -1
    if(flag > 0 and len(s1) > 0):
        s = set(s)
        s1 = set(s1)
        s = s.intersection(s1)
        if(len(s) == 0):
            print(f)
        elif(len(s1) == 1 and min(s) <= (10**12)):
            print(min(s))
        else:
            print(f)
    elif((len(s1) == 0 and len(s) == 0) or (len(s) != 0 and s[0]> (10**12)) or (len(s1) == 0 and s[0] > (10**12))):
        print(f)
    elif(flag == 0):
        s1 = list(set(s1))
        if(len(s1) == 1 and s1[0] <= (10 ** 12)):
            print(s1[0])
        else:
            print(f)
    else:
        print(s[0])

    