# Newton 


z = 1.5 # target loan
n = 10 	# number of iteration

a = 800 # invest in period t0
b = 550	
c = 128
d = 312
e = 100

n.times do |i|


f 	= (a*z**4)-(b*z**3)-(c*z**2)-(d*z**1)-e
ff  = (a*4*z**3)-(b*3*z**2)-(c*2*z**1)-d

test = z -  ( f / ff )
 

puts test

end