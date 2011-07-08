require 'spec_helper'

describe 'Using Weight' do
  before(:all) do
    class Package
      include Virtus

      attribute :weight, Weight, :input_unit => :lbs, :output_unit => :kg
    end
  end

  let(:input_in_lbs) { 1 }
  let(:output_in_kg) { 2.2046226218487757 }

  let(:package) { Package.new }

  before do
    package.weight = input_in_lbs
  end

  it 'converts input in lbs to kg' do
    package.weight.should == output_in_kg
  end
end
