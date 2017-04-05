require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :unit_price_in_cents => 2,
        :name => "Name",
        :description => "MyText",
        :picture_url => "Picture Url"
      ),
      Product.create!(
        :unit_price_in_cents => 2,
        :name => "Name",
        :description => "MyText",
        :picture_url => "Picture Url"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Picture Url".to_s, :count => 2
  end
end
