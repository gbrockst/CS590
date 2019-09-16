#!/usr/bin/env python
# coding: utf-8

# In[1]:


#mostly, things are the same in Python as they are in R for the arthimatic functions


# In[3]:


15 + 32


# In[4]:


241-92


# In[6]:


8 * 13


# In[10]:


#Exponents are different: the carrot doesn't work
3^7
#so have to use the double asterisk convention **
3 **7


# In[12]:


(45 * 3) - (42/4)


# In[14]:


my_dogs =2


# In[16]:


#In python, one equals sign defines what the variable is, rather than <- as it is in R


# In[17]:


#lists in python is a vector, lists in r are dictionaries in python


# In[19]:


my_dogs


# In[22]:


my_dogs = ['Bille','Birdie']


# In[24]:


my_dogs


# In[36]:


#variables name = expression
variable = 50


# In[37]:


variable


# In[38]:


variable = variable + 10


# In[44]:


variable


# In[45]:


variable += 10


# In[47]:


variable 


# In[49]:


variable *2 


# In[51]:


#to check which kind of data
type(variable)


# In[55]:


#int means an integer, float means a decimal, whereas in R, they would just be numeric


# In[56]:


type(2.3)


# In[58]:


fl=2.3


# In[60]:


type(fl)


# In[62]:


s ='text'


# In[64]:


s


# In[66]:


type(s)


# In[67]:


#str means string


# In[69]:


#Booleans = TRUE or FALSE in R(TRUE OR FALSE)


# In[73]:


t = True
f = False


# In[75]:


type(t)


# In[76]:


#bool means boolian or logical


# In[78]:


#strings single or double quotes
'hello'


# In[80]:


"this is also a string"


# In[82]:


#define number of characters in a string, use len (for length)
len('Hello World')


# In[84]:


#print is the same in both languages
print ('this is printed text using print')


# In[88]:


# in r it was sprintf, in python. Within print, there is a module called format
print('The class {} begins at {}'.format('CS590','1:30PM'))


# In[89]:


#the {} let you leave room for something


# In[91]:


string1 = 'CS590'
string2= '1:30PM'
print('The class %s begins at %s' %(string1,string2))


# In[93]:


#list - variable = []
my_list = [1,2,3]


# In[94]:


#don't need a C in Python because we're using brackets, which defines a list


# In[96]:


type(my_list)


# In[98]:


my_list = 'String',15,100.23,'Text'


# In[123]:


my_list


# In[102]:


len(my_list)


# In[104]:


#in R, indexing begins at 1, in Python, indexing begins at 0
my_list[0]


# In[106]:


my_list[1]


# In[108]:


#take everything after the second element
my_list[1:]


# In[110]:


#to grab everything
my_list[:]


# In[113]:


my_list[:-1]
#gives you everything except for the last number


# In[115]:


my_list[-1]
#this only pulls out the last number


# In[117]:


#for a stepwise thing first colon says you want everything/where you want to start, the second colon says how much you want to skip b
my_list[::2]


# In[120]:


my_list[::-1]
#reverses the order of the elements


# In[128]:


#to add another element to the list


# In[133]:


my_list += [new item']


# In[134]:


#method .format using print function


# In[135]:


my_list


# In[138]:


list1 = [1,2,3]
list1.append('append me!')


# In[140]:


list1


# In[145]:


new_list = ['a','x','c','z','b']
new_list.sort()


# In[149]:


ls1 = [1,2,3]
ls2= [4,5,6]
ls3= [7,8,9]


# In[151]:


matrix = [ls1,ls2,ls3]


# In[154]:


matrix[0]


# In[156]:


matrix[0][2]


# In[158]:


#the above function is going to the first list (0) and the second number is going to the 3rd place in the list (2 in python)


# In[160]:


#dictionaries to define a dictionary, use {} 
my_dict = {'key1':'value1','key2':'value2','key3':'value3'}


# In[162]:


my_dict


# In[164]:


#to call a specific dictionary iten
my_dict['key1']


# In[168]:


my_dict = {'key1':123,'key2':[12,23,33],'key3':['item0','item1','item2']}


# In[170]:


my_dict


# In[173]:


my_dict['animal'] = "Dog"


# In[175]:


my_dict


# In[177]:


d={'key1':{'nestedkey':{'subnestedkey''value_sub'}}}


# In[179]:


d


# In[181]:


#keys 
my_dict.keys()


# In[184]:


my_dict.values()


# In[187]:


my_dict.items()
#shows you everything in there


# In[189]:


t = (1,2,3)


# In[191]:


type(t)


# In[193]:


t=('one',2)


# In[198]:


#define a tuple with a parenthesis vs a list with brackets
#a touple cannot be changed; immutable. can't do .append, etc, but it can 
#be sorted


# In[200]:


s = 'Hello World'
s[0] = 'x'
#gives an error because you can't change? strings


# In[202]:


s + 'Again'


# In[205]:


s.upper()


# In[207]:


s.lower()


# In[211]:


s.split(' ')


# In[213]:


x.add(1)


# In[215]:


x


# In[217]:


x.add(2)


# In[219]:


x


# In[221]:


list1= [1,2,3,2,3,4,5,6,7,3,4,5]


# In[223]:


#set function pulls out the unique things. Add is considered the module
set(list1)


# In[224]:


#function() goes at the beginning or .add is a module that goes at the end because we said x=set()
#if we just said x=2, if we put x.add(2), it wouldn't work, it needs to be previously designed as x=set()


# In[ ]:




