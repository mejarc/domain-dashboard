require 'rails_helper'

RSpec.describe "domains/index", :type => :view do
  before(:each) do
    assign(:domains, [
      Domain.create!(
        :hostname => "Hostname",
        :origin_ip_address => "Origin Ip Address"
      ),
      Domain.create!(
        :hostname => "Hostname",
        :origin_ip_address => "Origin Ip Address"
      )
    ])
  end

  it "renders a list of domains" do
    render
    assert_select "tr>td", :text => "Hostname".to_s, :count => 2
    assert_select "tr>td", :text => "Origin Ip Address".to_s, :count => 2
  end
end
