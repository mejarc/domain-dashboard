require 'rails_helper'

RSpec.describe "domains/new", :type => :view do
  before(:each) do
    assign(:domain, Domain.new(
      :hostname => "MyString",
      :origin_ip_address => "MyString"
    ))
  end

  it "renders new domain form" do
    render

    assert_select "form[action=?][method=?]", domains_path, "post" do

      assert_select "input#domain_hostname[name=?]", "domain[hostname]"

      assert_select "input#domain_origin_ip_address[name=?]", "domain[origin_ip_address]"
    end
  end
end
