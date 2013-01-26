require 'spec_helper'

require 'bumpspark_helper'

describe BumpsparkHelper do

  let(:object) { Object.new }
  before { object.extend(BumpsparkHelper) }

  context 'generating an image' do
    
    it 'creates an image tag' do
      object.should_receive(:tag) do |name, options|
        expect(name).to eq(:img)
        expect(options[:src]).to include("data:image/png;base64")
      end
      object.bumpspark_tag([1, 2, 3])
    end
  end
  
end
