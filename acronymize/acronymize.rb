def acronymize(sentence)
  #Receber uma sentença
  #word_array << Split the setence
  #Map each word getting the first letter of each item into the new_array
  #Store map resulto in a letter_array
  #letter_array join
  #upcase
  #return
  word_array = sentence.split
  letter_array = word_array.map { |word| word[0] }
  return letter_array.join.upcase
end

