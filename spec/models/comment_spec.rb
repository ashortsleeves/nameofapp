require 'rails_helper'
  describe Comment do

  	context "has comment and rating" do
  	  before { @comment = FactoryGirl.build(:comment)}

  	  it "returns body" do
  	    expect(@comment.body).to eq "Sample Comment"
  	  end
  	  it "returns rating" do
  	    expect(@comment.rating).to eq 5
  	  end
  	end
  end