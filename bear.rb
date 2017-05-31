class Bear

  attr_reader :name

def initialize (name)

@tummy = [ ]
@name = name
end

def take_a_fish(fish)
@tummy.>> fish
end

  def bear_roar(roar)
    if @tummy.count == 0
      return puts"Bear roar!!"
    elsif @tummy.count >5
      return "Bear happy"
    end
  end
end