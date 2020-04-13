# a chaque fois que les seconde

def time_string(sec)
  hour = 0
  min = 0
#on omplémente les minutes tant les secondes sont supérieurs à 60
  while sec >= 60
    min += 1
    sec -= 60
  end
#on omplémente les heures tant les minutes sont supérieurs à 60
  while min >= 60
    hour += 1
    min -= 60
  end

#On veux la notation 00 si sec min ou hour inférieur à 10
  if sec < 10
    sec = "0#{sec}"
  end
  if min < 10
    min = "0#{min}"
  end
  if hour < 10
    hour = "0#{hour}"
  end

  return "#{hour}:#{min}:#{sec}"
end
