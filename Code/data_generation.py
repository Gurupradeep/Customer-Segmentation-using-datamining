import pandas as pd
import numpy as np
from random import randint
data = pd.DataFrame()


A = []
B = []
C = []
D = []
E = []
F = []
G = []
H = []
I = []
J = []
K = []
L = []
M = []



for i in range(30000):
	temp = randint(0,1)
	if temp == 0 :
		A.append('F')
		B.append('F')
		C.append('F')
	else :
		A.append('T')
		B.append('T')
		C.append('T')

for i in range(2561):
	temp = randint(0,1)
	if temp == 0 :
		A.append('F')
	else :
		A.append('T')
for i in range(2561):
	temp = randint(0,1)
	if temp == 0 :
		B.append('F')
	else :
		B.append('T')
for i in range(2561):
	temp = randint(0,1)
	if temp == 0 :
		C.append('F')
	else :
		C.append('T')



for i in range(32561):
	temp = randint(0,1)
	if temp == 0 :
		D.append('F')
	else :
		D.append('T')
for i in range(32561):
	temp = randint(0,1)
	if temp == 0 :
		E.append('F')
	else :
		E.append('T')
for i in range(32561):
	temp = randint(0,1)
	if temp == 0 :
		F.append('F')
	else :
		F.append('T')
		

for i in range(32561):
	temp = randint(0,1)
	if temp == 0 :
		G.append('F')
	else :
		G.append('T')

for i in range(32561):
	temp = randint(0,1)
	if temp == 0 :
		H.append('F')
	else :
		H.append('T')
		
for i in range(32561):
	temp = randint(0,1)
	if temp == 0 :
		I.append('F')
	else :
		I.append('T')
for i in range(32561):
	temp = randint(0,1)
	if temp == 0 :
		J.append('F')
	else :
		J.append('T')
for i in range(32561):
	temp = randint(0,1)
	if temp == 0 :
		K.append('F')
	else :
		K.append('T')
		
for i in range(32561):
	temp = randint(0,1)
	if temp == 0 :
		L.append('F')
	else :
		L.append('T')
		
for i in range(32561):
	temp = randint(0,1)
	if temp == 0 :
		M.append('F')
	else :
		M.append('T')

data['milk'] = A
data['Bread'] = B
data['Butter'] = C
data['Honey'] = D
data['Jam'] = E
data['peanut'] = F
data['Badam'] = G
data['Cashew'] = H
data['pista'] = I
data['Tea'] = J
data['Coffee'] = K
data['Biscuits'] = L
data['Nuts'] = M


data.to_csv("train.csv")



