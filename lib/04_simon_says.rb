def echo(s)
  return s
end

def shout(s)
  return s.upcase
end

def repeat(s, n=2)
  return s + (" "+ s) *(n-1)
end

def start_of_word(s, length)
  return s.split('').first(length).join('')
  #ou
  #return s[0..length-1]
end

def first_word(s)
  return s.split(' ').first(1).join('')
  #ou
  #return s.split(' ')[0]
end

def titleize(s)
  #Séparer les mots
  words = s.split(' ')
  #On capitalize chaque mot sauf "and" et "the"
  words = words.map do |s|
    if (s == "and" || s == "the")
      s
    else
      s.capitalize
    end
  end
  #On s'assure que le 1er mot est toujours capitalizé
  words[0] = words[0].capitalize
  #On réassemble avec le join
  return words.join(' ')
#pas optimum mais ça marche...
end
