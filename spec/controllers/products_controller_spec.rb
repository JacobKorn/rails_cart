require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
	
	describe "#index" do
		describe "response" do

			before :each do
				get :index
			end

			it "returns an HTTP ok status" do
				expect(response).to have_http_status(:ok)
			end

			it "renders the index template" do
				expect(response).to render_template(:index)
			end

		end

		it "makes all products available in an instance variable " do
			FactoryGirl.create :product
			get :index
			expect(assigns(:products)).to eq(Product.all)
		end

	end

end