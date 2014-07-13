require 'rails_helper'

RSpec.describe "domains/edit", :type => :view do
  before(:each) do
    @domain = assign(:domain, Domain.create!(
      :hostname => "MyString",
      :origin_ip_address => "MyString"
    ))
  end

  it "renders the edit domain form" do
    render

    assert_select "form[action=?][method=?]", domain_path(@domain), "post" do

      assert_select "input#domain_hostname[name=?]", "domain[hostname]"

      assert_select "input#domain_origin_ip_address[name=?]", "domain[origin_ip_address]"
    end
  end
end
