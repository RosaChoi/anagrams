# expected output = ['dog','rats','god','tsar']

input_list = ['cat','dog','rats','moon', 'god','tsar']
output = []
sorted_words = []

input_list.each do |list_word|
  sorted_words << list_word.downcase.split('').sort.join
end

input_list.each do |word|
  sorted_word = word.downcase.split('').sort.join
  sorted_words.count(sorted_word)
  if sorted_words.count(sorted_word) > 1
    output << word
  end
end

p output

# Using Hash

input_list = ['cat','dog','rats','moon', 'god','tsar']
output = {}

input_list.each do |list_word|
  sorted_words = list_word.downcase.split('').sort.join

  if output.has_key?(sorted_words)
    output[sorted_words] << list_word
  else
    output[sorted_words] = [list_word]
  end
end

output = output.values.select {|value| value.size > 1}
p output
