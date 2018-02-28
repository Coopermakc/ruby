class Station


attr_accessor :trains, :name

  def initialize (name)
   @name = name
  end

  def add_train(train)
   trains.push(train)
  end

  def show_trains
   trains.each {|t| puts t}
  end


  def go_train(train)
   trains.delete(train)
  end

end
