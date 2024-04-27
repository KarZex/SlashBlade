def large(a,b,c):
    if (c==0): return a * b
    elif (c==1): return pow(a,b)
    else:
        t = a
        if(b==1): return t
        
        else:
            for i in range(b-1):
                t = large(a,t,c-1)
            
            return t
        
print(large(3,3,2))