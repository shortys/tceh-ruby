# Дана строка слов, разделённых пробелами. Вывести длиннейшее слово

string = "Дана строка слов, разделённых пробелами. Вывести длиннейшее слово"

array_of_words = string.split(" ")
array_of_sizes = []

array_of_words.each do |word|
	puts "word #{word} with size #{word.size}"
	array_of_sizes << word.size
end

puts array_of_sizes.max