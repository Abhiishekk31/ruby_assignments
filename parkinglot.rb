# positions = {position1: nil, position2: nil, position3: nil}
# park(car) call --> iterate in positions ; if empty/nil , assign car ,break;
# called 3 times , then full
# if unpark(car) called , iterate in positions ; if car found , assign nil , break;

class Parking_system
    def initialize
        @positions = {position1: nil, position2: nil, position3: nil}
    end
    def park(car)
        @positions.each do |position, park_car|
            if park_car.nil?
                @positions[position] = car;
                puts "parked"
                return
            end
        end
        puts "Parking lot full"
    end
    def unpark(car)
        @positions.each do |position, parked_car|
            if parked_car == car
                @positions[position] = nil
                puts "#{car} unparked from #{position}"
                return
            end
        end
        puts "Car not found in the parking lot"
    end
end

# system = Parking_system.new
# system.park("car1")
# system.park("car2")
# system.park("car3")
# system.park("car4")
# system.unpark("car1")
# system.unpark("car2")
# system.unpark("car3")
# system.unpark("car4")

