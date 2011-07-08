require 'spec_helper'

describe Virtus::Attribute::Weight do
  let(:attribute) { described_class.new(:weight) }

  let(:input_in_lbs) { 1 }
  let(:output_in_kg) { 2.2046226218487757 }

  it 'converts lbs to kg' do
    attribute.typecast(input_in_lbs).should == output_in_kg
  end
end
