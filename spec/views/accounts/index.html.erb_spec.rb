require 'rails_helper'

RSpec.describe "accounts/index", :type => :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(:name => "Test Name")
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", :text => "Test Name".to_s
  end
end
