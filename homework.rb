class Main

	class Station
		def initialize (name)
		 @name = name
		 @statios = []
		 @trains=[]
		end

		def add_train(train)
			stations.push(train)
		end

		def show_trains
			trains.each {|t| puts t}
		end

		def show_trains_by_type(type)

			trains.each do |t|
			if t.type == type
			puts t
			end
			end

		end

		def go_train(train)
			trains.delete(train)
		end


	end

	class Rout

		attr_accessor :rout

		def initialize (start,finish)	#инициализируем начало и конец маршрута
			@rout = [start, finish]
		end

		def add_point(point)
			rout.insert(-2,point)
		end

		def del_point(point)
			rout.delete(point)
		end

		def show_all_points
			puts rout
		end

	end

	class Train

		attr_reader :number, :type_train, :wagons, :current_point, :speed, :rout

		def initialize (number,type_train,wagons)

			@number = number
			@type_train = type_train
			@wagons = wagons
			@speed = 0
			@rout = []

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

		def take_wagon(count)
			if speed == 0
			@wagons += count
			end
		end

		def takeoff_wagon(count)
			if speed == 0
			@wagons -=count
			end
		end

		def take_rout(rout1)
			@rout = rout1
			current_point = 0
		end

		def show_current_point
			puts @rout[current_point]
		end

		def show_previous_point
			puts @rout[curent_point-1]
		end

		def show_next_point
			puts @rout[curent_point+1]
		end


	end


rout1 = Rout.new("Lipetsk","Voronezh")
rout1.add_point("Usmanb")
rout1.show_all_points

tr = Train.new(7,"Pass",10)
tr.take_rout(rout1)
tr.take_wagon(2)
tr.show_current_point
end
