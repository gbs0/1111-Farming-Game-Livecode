require_relative 'corn'
require_relative 'rice'
require_relative 'water'

class Farm
    attr_accessor :corn, :rice, :water

    def initialize
      @corn = Corn.new
      @rice = Rice.new
      @water = Water.new
    end

    def water!
      @corn.quantity += 5
      @rice.quantity += 2
      @water.quantity -= 5
    end
end