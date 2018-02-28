class Rout
  attr_accessor :rout

  def initialize (start,finish) #инициализируем начало и конец маршрута
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
