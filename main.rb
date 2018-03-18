require 'digest'

# Программа 'Шифрование фразы'. Soldatkin™Lab 2018. v.2.0

puts "Введите слово или фразу для шифрования:"
frase = STDIN.gets.chomp

puts "Каким способом зашифровать:
1. MD5
2. SHA1"

method = STDIN.gets.to_i

until method.between?(1, 2)
  puts "Введите 1 или 2"
  method = STDIN.gets.to_i
end

if method == 1
  puts "Результат шифрования: #{Digest::MD5.hexdigest frase}"
else
  puts "Результат шифрования: #{Digest::SHA1.hexdigest frase}"
end
