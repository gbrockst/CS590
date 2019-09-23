#!/usr/bin/env python
# coding: utf-8

# In[7]:


import numpy as np


# In[6]:


my_list = [1,2,3]
my_list


# In[9]:


np.array(my_list)
#calling library of np or numpy and the method of array


# In[11]:


my_matrix = [[1,2,3],[4,5,6],[7,8,9]]


# In[13]:


my_matrix


# In[16]:


np.array(my_matrix)


# In[19]:


###ways to generate an arry arange() #gives us 0 up to 10, but not including 10
np.arange(0,10)


# In[22]:


np.arange(0,10,2)
##step by 2


# In[24]:


#zeros()
np.zeros(3)


# In[26]:


np.zeros((5,5))


# In[28]:


#ones()
np.ones(3)


# In[30]:


np.ones((3,3))


# In[32]:


###linspace()
##total of three numbers spaced evenly from 0-10
np.linspace(0,10,3)


# In[36]:


##array of 50 numbers spaced evenly from 0-10
np.linspace(0,10,50)


# In[37]:


#eye() to create an identity matrix eye(diag)
np.eye(4)


# In[39]:


###use a random generator np.random()
##. rand follows a uniform disrribution
np.random.rand(2)


# In[42]:


np.random.rand(5,5)


# In[45]:


#standard normal distribution randn()
np.random.randn(2)


# In[48]:


##only use integers random integers from low(inclusive) to high (exclusive) range
np.random.randint(1,100,10)
###generates numbers from 1-100 for 10 values


# In[50]:


arr = np.arange(25)
ranarr = np.random.randint(0,50,10)


# In[52]:


arr


# In[54]:


ranarr


# In[56]:


###reshape something into new matrix dimensions
arr.reshape(5,5)
###already defined arr as np.arrange


# In[58]:


ranarr.max()


# In[60]:


ranarr.argmax()
###prints off the location of the largest element (element +1 is the actual position)


# In[63]:


ranarr.argmin()


# In[65]:


arr.shape
###this prints (25,), meaning it's just an array


# In[67]:


arr.reshape(1,25)


# In[69]:


arr.reshape(1,25).shape


# In[74]:


arr.reshape(25,1).shape


# In[75]:


arr


# In[77]:


arr = np.arange(25).reshape(5,5)


# In[79]:


np.mat(arr)


# In[82]:


arr.dtype


# In[85]:


arr =np.arange(25)


# In[87]:


arr


# In[89]:


arr[8]


# In[91]:


arr[1:5]


# In[93]:


##broadcasting says this range is equal to ... and this is a 
#PERMANENT change, use == for temporary
arr[0:5] = 100
arr


# In[95]:


slice_arr = arr[0:6]


# In[97]:


slice_arr


# In[103]:


slice_arr[:] = 99
###keeps the changes in the original array


# In[104]:


slice_arr


# In[105]:


arr


# In[107]:


arr_copy = arr[0:6].copy()


# In[109]:


arr


# In[111]:


###indexing in matrices
arr2d = np.array(([5,10,15], [20,25,30],[35,40,45]))


# In[116]:


np.arange(5,46,5).reshape(3,3)

#index the first column
arr2d[0]
# In[117]:


arr2d[1]


# In[119]:


arr2d[0]


# In[120]:


###array[row,col]; array[row][col]


# In[122]:


arr2d[1,0]


# In[124]:


arr2d


# In[126]:


###everything up to the last row, and the last column
arr2d[:2,:2]


# In[128]:


###fancyindexing
arr2d = np.arange(1,101).reshape(10,10)


# In[130]:


arr2d


# In[132]:


arr2d[[0,3,4,6,8]]
###double brackets only grabs those rows


# In[134]:


arr2d[[1,7,3,2,8]]
###can also pull them out of order


# In[142]:


###grab all the diagonal elements
arr2d
arr2d[[0,1,2,3,4,5,6,7,8,9],[0,1,2,3,4,5,6,7,8,9]]


# In[143]:


arr2d


# In[145]:


arr2d > 30
###shows you booleans


# In[147]:


arr2d * arr2d


# In[149]:


np.max(arr2d)


# In[151]:


A= np.arange(1,5).reshape(2,2)


# In[153]:


A*A


# In[155]:


a= np.mat(A)


# In[156]:


a*a

