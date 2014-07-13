require 'rails_helper'

RSpec.describe "domains/show", :type => :view do
  before(:each) do
    @domain = assign(:domain, Domain.create!(
      :hostname => "Hostname",
      :origin_ip_address => "Origin Ip Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Hostname/)
    expect(rendered).to match(/Origin Ip Address/)
  end
end
