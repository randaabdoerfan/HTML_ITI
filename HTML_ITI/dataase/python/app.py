#Ass1
vowels = ['a', 'e', 'i', 'o', 'u']
count=0
for item in vowels:
    count +=1
print(count)

#Ass2
array=[]
for i in range(5):
    item =input("enter names of fruits: ")
    array.append(item)
print(array)
sortable=array.sort()
print(sortable)
reversable = sortable.reverse()
print(reversable)

#Ass3
str="iti mansoura iti creative iti national"
counter=0
splited=str.split(" ")
print(splited)
for ele in splited:
    if ele =='iti':
        counter+=1
result=f'the number of repeated iti is {counter}'
print(result)

#Ass4

voiwls=input("enter a word : ")
v = ['a', 'e', 'i', 'o', 'u']
for i in range(len(voiwls)):
        if voiwls[i] in v:
            voiwls.replace(voiwls[i],"")
print(voiwls)

#Ass5
str3="ITI Mansoura"
for item in str3:
    ind=str3.index(item)
    res=f'{ind} : {item}'
    print(res)

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

    
    

