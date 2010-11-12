require 'spec_helper'

describe ActiveRecord::Random do

  describe "Class Methods" do

    it "returns a random instance of the invoked ActiveRecord Model" do
      10.times { |n| Factory.create(:question) }
      Question.random.should be_an_instance_of Question
    end

    it "returns nil when no records are found" do
      Question.random.should be_nil
    end

  end # Class Methods

  describe "Random finder" do

    it "Question.find(:random) returns a random instance of Question" do
      10.times { |n| Factory.create(:question) }
      Question.find(:random).should be_an_instance_of Question
    end

    it "also returns nil when no records are found by the random finder" do
      Question.find(:random).should be_nil
    end

  end # Random finder

end # ActiveRecord::Random
