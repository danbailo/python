#primeiro ele atribui o valor para o index e depois para o item, o item recebe o primeiro
#parametro do enumerate e o index o segundo;

#enumerate retorna uma tupla, logo o index recebe o primeiro valor da tupla e item o segundo
#(a,b)
for index, item in enumerate("abcdefghi", start=1):
    # print('index:',index)
    # print('item:',item)
    print(item, end=' ' if index % 3 else '\n') #hr q chega na 4 linha ele quebra, por ex;

#Enumerate() method adds a counter to an iterable and returns it in a form of enumerate object. 
# This enumerate object can then be used directly in for loops or be converted into a list of 
# tuples using list() method.

# Python program to illustrate 
# enumerate function in loops 
l1 = ["eat","sleep","repeat",'teste','abc','python'] 
  
# printing the tuples in object directly 
for ele in enumerate(l1): 
    print(ele)

print('\n')

# changing index and printing separately 
for count,ele in enumerate(l1,100): 
    print (count,ele)

print('\n')
for count,ele in enumerate(l1,100): 
    print (ele, end=' ' if count % 2==0 else '\n')

lst = [12, 234, 53, 23, 57, 8, 96, 2]
print(list(enumerate(lst)))

for number,item in enumerate(lst):
    print(number,':',item)
