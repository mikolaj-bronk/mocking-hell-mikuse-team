require_relative 'workout'
require_relative 'sport_timer'
require_relative 'progress'
require_relative 'account'
require_relative 'person'

class Program
  def initialize
    logo
    loop do
      menu
      input = gets.chomp
      case input
      when '1'
        puts 'Uzytkownicy'
      when '2'
        puts 'Aktywnosc'
      when '3'
        puts 'Szczegoly zawodnika'
      when '5'
        authors
      when '6'
        exit
      else
        puts 'Nie rozpoznano komendy!'
      end

      puts ' '
      puts ' '

      next_step
      break if input.chomp == '6'
    end
  end

  def next_step
    puts 'Co chcesz teraz zrobic?'
  end

  def logo
    puts '------------------------------------------------'
    puts '|                                              |'
    puts '|                Sport Timer                   |'
    puts '|                                              |'
    puts '| -------------------------------------------- |'
    puts '|                      /// 6|                  |'
    puts '|                     //  _|                   |'
    puts "|                     /,-'                     |"
    puts "|               _.-/'/   \   ,/;,               |"
    puts "|             ,-' /'  \_   \ / _/                |"
    puts "|             `\ /     _/\  ` /                  |"
    puts "|               |     /,  `\_/                  |"
    puts "|               |     \'                        |"
    puts "|   /\_        /`      /\                        |"
    puts "| /' /_``--.__/\  `,. /  \                       |"
    puts "||_/`  `-._     `\/  `\   `.                     |"
    puts "|      `-.__/'     `\   |                       |"
    puts "|                        `\  \                   |"
    puts "|                          `\ \                  |"
    puts "|                            \_\__               |"
    puts "|                             \___)             |"
    puts '------------------------------------------------'
    puts ' '
  end

  def menu
    puts '---   Menu   ---'
    puts '1 -> Uzytkownicy '
    puts '2 -> Aktywnosc'
    puts '3 -> Szczegoly zawodnika'
    puts '4 -> Autorzy'
    puts '5 -> Koniec'
  end

  def authors
    puts 'Autorzy:'
    puts 'Jakub Ronkiewicz'
    puts 'Seweryn Rutkowski'
    puts 'Dominik Rynko'
    puts 'Mikolaj Bronk'
  end

  def start
    puts 'Dane initializacyjne'
  end
end