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
  interface = Interface.new

end
end
