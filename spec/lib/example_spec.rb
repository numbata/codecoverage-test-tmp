# frozen_string_literal: true

RSpec.describe Example do
  let(:subject) { described_class.new }

  describe "#foo" do
    it "returns result" do
      expect(subject.foo).to eq("bar")
    end
  end
end
