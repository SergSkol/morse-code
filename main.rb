def decode_char(char)
  r = ''

  case char
    when ".-" 
      r = "a"
    when "-..."  
      r = "b"
    when "-.-."  
      r = "c"
    when "-.."  
      r = "d"
    when "."  
      r = "e"
    when "..-."  
      r = "f"
    when "--."  
      r = "g"
    when "...."  
      r = "h"
    when ".."  
      r = "i"
    when ".---"  
      r = "j"
    when "-.-"  
      r = "k"
    when ".-.."  
      r = "l"
    when "--"  
      r = "m"
    when "-."  
      r = "n"
    when "---"  
      r = "o"
    when ".--."  
      r = "p"
    when "--.-"  
      r = "q"
    when ".-."  
      r = "r"
    when "..."  
      r = "s"
    when "-"  
      r = "t"
    when "..-"  
      r = "u"
    when "...-"  
      r = "v"
    when ".--"  
      r = "w"
    when "-..-"  
      r = "x"
    when "-.--"  
      r = "y"
    when "--.."  
      r = "z"
    when " "  
      r = " "
    else 
      r = "?"
  end

  return r.upcase
end

def decode_word(word)
  w = ''
  chars = word.split(' ')
  chars.each { |c|
    de_c = decode_char(c);
    w = w + de_c
  }
  return w
end

def decode(string)
  words = string.split('   ')
  words.each { |w|
    de_w = decode_word(w);
    print de_w
    print " "
  }
  print "\n"
  
end

decode('-- -.--   -. .- -- .')

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
