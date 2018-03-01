require_relative 'train'
require_relative 'cargotrain'
require_relative 'cargowagon'
require_relative 'passengertrain'
require_relative 'passwagon'
require_relative 'rout'
require_relative 'station'
require_relative 'wagon'
require_relative 'interface'
require 'pry'

class Main
#passtrain = PassengerTrain.new(15)
#passwagon = PassWagon.new
#passtrain.take_wagon(passwagon)
#cargowag = CargoWagon.new
#passtrain.take_wagon(cargowag)
#puts passtrain

  class Console
    attr_accessor :stations, :poezda

    def initialize
    @stations = []
    @poezda = []
    end
example =3
    def create_station(name)
      station = Station.new(name)
      stations.push(station)
    end

    def create_train(type)
      puts "Vvedite nomer poezda"
        train_number = gets.chomp
        if type == "1"
          poezd = PassengerTrain.new(train_number)
          poezda.push(poezd)
        elsif type == "2"
          poezd = CargoTrain.new(train_number)
          poezda.push(poezd)
        else
          "Wrong type!"
        end
    end

    def add_wagon(nomer)
      poezda.each do |t|
        if t.number == nomer
          add_wagon!(t)
        end
      end
    end



    def del_wagon(nomer)
     flag = 0
        trains.each do |t|
          if t.number == nomer
            t.takeoff_wagon
            flag +=1
          end
          if flag == 0
            puts "Wrong number!"
          end
        end
    end

    private

    def add_wagon!(train)
      if train.class == PassengerTrain
         t.take_wagon(PassWagon.new)
       else
        t.take_wagon(CargoWagon.new)
    end

  end
  console = Console.new
loop do

        puts "1 - Create Station, 2 - Create Train,  3 - Add Wagon, 4 - del Wagon,
      5 - add Train to station, 6 - List Station, 7 - List Train on Station, 0 - exit"

        key = gets.chomp
        case key

        when "1"
          puts "Enter station name"
          station_name = gets.chomp
          console.create_station(station_name)

        when "2"
          puts "1 - passtrain 2 - cargotrain"
          type = gets.chomp
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
