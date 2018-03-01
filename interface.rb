require_relative 'main'

class Interface

  def text
    puts "1 - Create Station, 2 - Create Train,  3 - Add Wagon, 4 - del Wagon,
      5 - add Train to station, 6 - List Station, 7 - List Train on Station, 0 - exit"
  end


  def start
    loop do

      text

        key = gets.chomp
        case key

        when "1"
          puts "Enter station name"
          station_name = gets.chomp
          console.create_station(station_name)

        when "2"
          puts "1 - passtrain 2 - cargotrain"
          type = gets.chomp
          cbrake if (type != 1) || (type != 2)
          console.create_train(type)

        when "3"
          puts "VVedite nomer poezda"
          nomer = gets.chomp
          console.add_wagon(nomer)

        when "4"

        when "5"

        when "6"

        when "7"

        when "0"
          brake
    end
  end
end
end
