# DO NOT REMOVE THIS LINE
require 'cli/ui'

require_relative 'lib/farm'

@farm = Farm.new

def farming(action)
  case action
  when 1
    CLI::UI::Frame.open('🌽 Crop Corn') do
      @farm.corn.crop!
    end
  when 2
    CLI::UI::Frame.open('🌾 Crop Rice') do
        @farm.rice.crop!
    end
  when 3
    CLI::UI::Frame.open('💦 Water') do
      @farm.water!
      puts "Your plants are now watered (-5 in Water Quantity)"
    end
  when 4
    exit
  else 
    puts "Invalid Farm Option!"
  end
end

def main
  loop do
    CLI::UI::Frame.open('🐷 Farming Game') do
    puts "Current Status: 🌽 #{@farm.corn.quantity} | 🌾 #{@farm.rice.quantity} | 💦 #{@farm.water.quantity}"
    CLI::UI::Prompt.ask('What language/framework do you use?') do |handler|
        handler.option('🌽 Crop Corn')  { |selection| farming(1) }
        handler.option('🌾 Crop Rice')  { |selection| farming(2) }
        handler.option('💦 Water')      { |selection| farming(3) }
        handler.option('❌ QUIT')       { |selection| farming(4) }
      end
    end
  end
end

main