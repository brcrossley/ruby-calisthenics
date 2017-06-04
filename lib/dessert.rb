class Dessert
  attr_accessor :name
  attr_accessor :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    @calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  attr_reader :calories
  def initialize(flavor)
    @flavor = "#{flavor} jelly bean"
    @calories = 5
  end

  def delicious?
    return false if @flavor == "licorice jelly bean"
    true
  end
end
