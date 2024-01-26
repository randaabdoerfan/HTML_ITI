#Ass6
list_all = []
num = int(input("enter random number : "))
for i in range(int(num)):
    list_num = []
    for j in range(i+1):
        num1 = int(input("enter a number added to a list : "))
        list_num.append(num1)
    #print((list_num))
    list_all.append(list_num)
print(list_all)

#Ass7
num = 4
space = num
for i in range(0, num):
    line = " "*(space-1) + "*"*(i+1)
    space = space - 1
    print(line)

