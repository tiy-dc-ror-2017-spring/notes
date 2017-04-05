require 'rails_helper'

RSpec.describe CartController, type: :controller do

  describe "GET #add_product" do
    it "returns http success" do
      get :add_product
      expect(response).to have_http_status(:success)
    end
  end

end
