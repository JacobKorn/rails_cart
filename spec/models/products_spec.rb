require 'rails_helper'

RSpec.describe Product, :type => :model do

	describe "Product validity" do
	
		it "recognises when the product is valid" do
			p1 = Product.new
			expect(p1).not_to be_valid
		end

		it "recognises when the proudct is not valid" do
			p1 = Product.new(
				name: "bobs incredible Shovel",
				price: 333000000,
				description: "Words can not describe.")

			expect(p1).to be_valid
		end

	end

end