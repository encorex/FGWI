yi = 76548    	# define y0
a  = 601     	# define parameters
r  = 999     	# define parameters
m  = 1024   	# define parameters
wM = 0.48		# difine probability of "not ideal coin flipping"

20.times do |i|

  #Berechnung yi

  yi = ( yi * a + r) % m

  #Berechnung Zufalszal

  zu = yi.to_f / m.to_f

  #Berechnung von Laplace (Idealer Würfel)

  la = (6*zu).floor + 1

   # Ideale Münze

	  if zu <= 0.5
	  	ausgabe = "Zahl"
	  else
	  	ausgabe = "Kopf"
	  end

  # Nicht Ideale Münze


  if wM <= 0.5
  	ausgabe = "Zahl"
  else
  	ausgabe = "Kopf"
  end


  puts "Iteration #{i}:\t Yi is now #{yi} und Zufalszahl #{zu}, Laplace #{la}, #{ausgabe}"



end