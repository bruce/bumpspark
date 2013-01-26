require "spec_helper"

describe ApplicationHelper do
  describe "#bumpspark_tag" do
    it 'is an image tag' do
      expect(helper.bumpspark_tag([1, 2, 3])).to include("<img")
    end
    it 'contains a data uri' do
      expect(helper.bumpspark_tag([1, 2, 3])).to include("data:image/png")
    end
  end
end
