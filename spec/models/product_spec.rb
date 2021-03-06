require 'rails_helper'

describe Product do
    context "when the product has comments" do
        before do
           @product = Product.create!(name: "race bike")
           @user = User.create!(email: "richardnixon@gmail.com", password: "password1")
           @comment = @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
           @comment = @product.comments.create!(rating: 3, user: @user, body: "Bike weren't all bad")
           @comment = @product.comments.create!(rating: 5, user: @user, body: "Bike wernt haf bad!")
        end
        it "returns the average rating of all comments" do
            expect(@product.average_rating).to eq 3
        end
        it "is not valid" do
            expect(Product.new(description: "Nice bike")).not_to be_valid
        end
    end
end