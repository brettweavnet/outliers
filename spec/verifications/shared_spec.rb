require 'spec_helper'

describe Outliers::Verifications::Shared do
  subject { Object.new.extend Outliers::Verifications::Shared }

  before do
    logger_stub = stub 'logger', :debug => true
    subject.stub :logger => logger_stub
  end

  context "#none_exist?" do
    it "should be true if no resources returned" do
      subject.stub :all => []
      expect(subject.none_exist?).to be_true
    end

    it "should be false if  resources returned" do
      subject.stub :all_by_key => ['test']
      subject.stub :all => ['test']
      expect(subject.none_exist?).to be_false
    end
  end

  context "#equals?" do
    it "should verify the list of resources equals the list of keys" do
      subject.stub :all_by_key => ['test'], :all => ['test_resource']
      expect(subject.equals?(:keys => ['test'])).to be_true
    end

    it "should verify the list of resources equals the single key" do
      subject.stub :all_by_key => ['test'], :all => ['test_resource']
      expect(subject.equals?(:keys => 'test')).to be_true
    end
  end
end
