require_relative 'workout'
require_relative 'sport_timer'
require_relative 'progress'
require_relative 'account'
require_relative 'person'

class Program
  @@person = []
  @@account = []
  @@workout = []

  def initialize
    @program = SportTimer.new
    start

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
      when '4'
        authors
      when '5'
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

  def create_person
    @@person[0] = @program.add_person('Andrzej', 'Rudy', 'Poland')
    @@person[1] = @program.add_person('Marek', 'Nowak', 'Poland')
  end

  def create_account
    @@account[0] = @program.add_account('a.rudy', 'haslo123', @@person[0])
    @@account[1] = @program.add_account('m.nowak', 'password', @@person[1])
  end

  def create_workout
    @@workout[0] = @program.add_workout('2018-01-03 00:00:00', 10, '1:30:20')
    @@workout[1] = @program.add_workout('2018-01-05 00:00:00', 15, '00:15:54')
    @@workout[2] = @program.add_workout('2017-12-25 00:00:00', 3, '00:20:10')
    @@workout[3] = @program.add_workout('2017-12-27 00:00:00', 4, '00:34:05')
  end

  def create_progress
    Progress.new(0, @@account[0], @@workout[0])
    Progress.new(1, @@account[0], @@workout[1])

    Progress.new(1, @@account[1], @@workout[2])
    Progress.new(1, @@account[1], @@workout[3])
  end

  def start
    create_person
    create_account
    create_workout
    create_progress
  end
end
