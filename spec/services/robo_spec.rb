# spec/services/robo_spec.rb
require 'rails_helper'

RSpec.describe Robo do
  describe '.call' do
    subject(:result) { described_class.call }

    it 'executes without raising an error' do
      expect { result }.not_to raise_error
    end
  end
end
