# frozen_string_literal: true

puts 'Для начала игры "Угадай число от 1 до 100. с 10 попыток."'
puts 'Введите пожалуйста ваше имя:'
name = gets.chomp
puts "Здравствуйте #{name}"
number = rand(100)
balance = 10
used = 1

loop do
  if balance.zero?
    puts "Вы потратили все попытки. Заказданное число: #{number}"
    break
  end

  puts 'Угадайте загаданное число.'
  input = gets.chomp.to_i
  if input == number
    puts "Good job, #{name}! Вы угадали загаданное число! Потрачено попыток #{used} из 10"
    break
  elsif input < number
    balance -= 1
    used += 1
    puts "Упс, ваше число меньше загаданного. Осталось #{balance} попыток."
  elsif input > number
    balance -= 1
    used += 1
    puts "Упс. ваше число больше загаданного. Осталось #{balance} попыток."
  end
end
