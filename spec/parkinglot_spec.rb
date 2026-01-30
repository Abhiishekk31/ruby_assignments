require 'rspec'
require_relative '../parkinglot.rb'

RSpec.describe Parking_system do
  describe '#park' do
    context 'when there is available space' do
      it 'parks the car successfully' do
        parking_lot = Parking_system.new
        expect { parking_lot.park('car1') }.to output("parked\n").to_stdout
      end
    end
    context 'when the parking lot is full' do
      it 'informs that the parking lot is full' do
        parking_lot = Parking_system.new
        parking_lot.park('car1')
        parking_lot.park('car2')
        parking_lot.park('car3')
        expect { parking_lot.park('car4') }.to output("Parking lot full\n").to_stdout
      end
    end
  end

  describe '#unpark' do
    context 'when the car is found in the parking lot' do
      it 'unparks the car successfully' do
        parking_lot = Parking_system.new
        parking_lot.park('car1')
        expect { parking_lot.unpark('car1') }.to output("car1 unparked from position1\n").to_stdout
      end
    end
    context 'when the car is not found in the parking lot' do
      it 'informs that the car is not found' do
        parking_lot = Parking_system.new
        expect { parking_lot.unpark('car1') }.to output("Car not found in the parking lot\n").to_stdout
      end
    end
  end
end