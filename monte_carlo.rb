yi = 52781    	# define y0
a  = 81    	# define parameters
r  = 99     	# define parameters
m  = 1024   	# define parameters
wM = 0.51	# difine probability of "not ideal coin flipping"

5.times do |i|

  #Calculation yi
  yi = ( yi * a + r) % m

  #Berechnung Zufalszal
  zu = yi.to_f / m.to_f

  #Berechnung von Laplace (Idealer Würfel)
  la = (6*zu).floor + 1

   # Ideale Münze
	  if zu <= 0.5
	  	ideal_coin = "Zahl"
	  else
	  	ideal_coin = "Kopf"
	  end

  # Nicht Ideale Münze
	  if wM <= 0.5
	  	nideal_coin = "Zahl"
	  else
	  	nideal_coin = "Kopf"
	  end

  puts "Iteration #{i}:\t Yi is now #{yi} und Zufalszahl #{zu}, Laplace #{la}"
  puts "Münzwurf:\t Ideale Münze: #{ideal_coin}, Nicht Ideal: #{nideal_coin}"

end