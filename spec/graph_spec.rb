require 'spec_helper'

describe Bumpspark::Graph do

  subject do
    Bumpspark::Graph.new(data).send("to_#{format}")
  end
  
  context "generating pngs" do

    let(:format) { 'png' }
    
    context "for an empty bumpspark" do
      let(:data) { [] }
      it { should be_a_valid_png }
    end
    
    context "for a bumpspark with one datapoint" do
      let(:data) { [1] }
      it { should be_a_valid_png }
    end
    
    context "for a bumpspark with multiple datapoints" do
      let(:data) { [1, 2, 3] }
      it { should be_a_valid_png }
    end
    
  end

end
