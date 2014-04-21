yi = 5760    # define y0
a  = 801     # define parameters
r  = 123     # define parameters
m  = 4096    # define parameters

20.times do |i|

  #Berechnung yi

  yi = ( yi * a + r) % m

  #Berechnung Zufalszal

  zu = yi.to_f / m.to_f

  #Berechnung von Laplace (Idealer Würfel)

  la = (6*zu).floor + 1

  puts "Iteration #{i}:\t Yi is now #{yi} und Zufalszahl #{zu}, Laplace #{la}"

end