require 'rails_helper'



describe "Products Views" do

	it "has products listing set to root" do
		visit '/'

		expect(page).to have_content('Welcome, Please browse our INCREDIBLE products')
	end

	it "product details link takes you to show product" do
		FactoryGirl.create :product
		visit '/products'
		within(".product-card") do
			click_link("details", :match => :first)
		end

		expect(page).to have_content('Product Details For:')
	end

end
