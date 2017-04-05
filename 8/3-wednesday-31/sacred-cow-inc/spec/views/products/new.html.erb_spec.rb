require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :unit_price_in_cents => 1,
      :name => "MyString",
      :description => "MyText",
      :picture_url => "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_unit_price_in_cents[name=?]", "product[unit_price_in_cents]"

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "textarea#product_description[name=?]", "product[description]"

      assert_select "input#product_picture_url[name=?]", "product[picture_url]"
    end
  end
end
