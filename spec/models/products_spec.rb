require 'rails_helper'

RSpec.describe Product, :type => :model do

	describe "Product validity" do


		it "recognises when the product is not valid" do
			@product = Product.new
			expect(@product).not_to be_valid
		end

		it "recognises when the proudct is valid" do
			@product = FactoryGirl.build :product

			expect(@product).to be_valid
		end

	end

end