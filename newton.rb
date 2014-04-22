# Newton 


z = 1.5 	# Start interest rate 
n = 10 		# number of iteration

a = 800 	# invest in period t0
b = 550		# invest in period t1
c = 128		# invest in period t2
d = 312		# invest in period t3
e = 100		# invest in period t4

n.times do |i|


f 	= (a*z**4)-(b*z**3)-(c*z**2)-(d*z**1)-e
ff  = (a*4*z**3)-(b*3*z**2)-(c*2*z**1)-d

i_rate = z - (f/ff)
z = i_rate
puts i_rate
end