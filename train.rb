class Train

  attr_reader :number, :type_train, :wagons, :current_point, :speed, :rout
  attr_accessor :current_point, :wagons

  def initialize (number)

   @number = number
   @speed = 0
   @rout = nil
   @wagons = []

  end

  def forsage
   @speed +=1
  end

  def current_speed
   puts @speed
  end

  def brake(comand)

   if comand != "stop"
   @speed -=1
   elsif
   @speed == 0
   puts "Train stopped"
   end
  end

  def take_wagon(wagon)
   if speed == 0
   wagons.push(wagon)
   end
  end

  def takeoff_wagon
   if speed == 0
   wagons.pop
   end
  end

  def take_rout(rout1)
   @rout = rout1
   current_point = 0
  end

  def show_current_point
   puts @rout.rout[0]
  end

  def show_previous_point
   puts @rout[curent_point-1]
  end

  def show_next_point
   puts @rout[curent_point+1]
  end
  private

  def start_train!
    puts "Choo Choo"
  end

end
