# spec/services/robo_spec.rb
require 'rails_helper'

RSpec.describe Robots::Place do
  let(:initial_x){0}
  let(:initial_y){0}
  let(:initial_direction){"N"}
  let(:robot){Robot.new}
  describe '.call' do
    subject(:result) do 
      described_class.call(initial_x, initial_y, initial_direction, robot)
    end

    context 'when inside the board' do

      it {expect { result }.not_to raise_error }
      it 'should update the robot' do
        expect(result.x_coordinate).to eq(initial_x)
      end
    end
  end
end


