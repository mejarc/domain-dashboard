require 'rails_helper'

RSpec.describe DomainsController, :type => :controller do
  before { @test_account = Account.create!({ name: 'My Test Account' }) }
  let(:valid_attributes) {
    { hostname: 'www.example.com',
      origin_ip_address: '111.11.1.11',
      account_id: @test_account['id']
    }
  }

  let(:invalid_attributes) { { hostname: ''} }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all domains as @domains" do
      domain = Domain.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:domains)).to eq([domain])
    end
  end

  # describe "GET show" do
  #   it "assigns the requested domain as @domain" do
  #     domain = Domain.create! valid_attributes
  #     get :show, {:id => domain.to_param}, valid_session
  #     expect(assigns(:domain)).to eq(domain)
  #   end
  # end

  # describe "GET new" do
  #   it "assigns a new domain as @domain" do
  #     get :new, {}, valid_session
  #     expect(assigns(:domain)).to be_a_new(Domain)
  #   end
  # end

  # describe "GET edit" do
  #   it "assigns the requested domain as @domain" do
  #     domain = Domain.create! valid_attributes
  #     get :edit, {:id => domain.to_param}, valid_session
  #     expect(assigns(:domain)).to eq(domain)
  #   end
  # end

  # describe "POST create" do
  #   describe "with valid params" do
  #     it "creates a new Domain" do
  #       expect {
  #         post :create, {:domain => valid_attributes}, valid_session
  #       }.to change(Domain, :count).by(1)
  #     end

  #     it "assigns a newly created domain as @domain" do
  #       post :create, {:domain => valid_attributes}, valid_session
  #       expect(assigns(:domain)).to be_a(Domain)
  #       expect(assigns(:domain)).to be_persisted
  #     end

  #     it "redirects to the created domain" do
  #       post :create, {:domain => valid_attributes}, valid_session
  #       expect(response).to redirect_to(Domain.last)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns a newly created but unsaved domain as @domain" do
  #       post :create, {:domain => invalid_attributes}, valid_session
  #       expect(assigns(:domain)).to be_a_new(Domain)
  #     end

  #     it "re-renders the 'new' template" do
  #       post :create, {:domain => invalid_attributes}, valid_session
  #       expect(response).to render_template("new")
  #     end
  #   end
  # end

  # describe "PUT update" do
  #   describe "with valid params" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }

  #     it "updates the requested domain" do
  #       domain = Domain.create! valid_attributes
  #       put :update, {:id => domain.to_param, :domain => new_attributes}, valid_session
  #       domain.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "assigns the requested domain as @domain" do
  #       domain = Domain.create! valid_attributes
  #       put :update, {:id => domain.to_param, :domain => valid_attributes}, valid_session
  #       expect(assigns(:domain)).to eq(domain)
  #     end

  #     it "redirects to the domain" do
  #       domain = Domain.create! valid_attributes
  #       put :update, {:id => domain.to_param, :domain => valid_attributes}, valid_session
  #       expect(response).to redirect_to(domain)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns the domain as @domain" do
  #       domain = Domain.create! valid_attributes
  #       put :update, {:id => domain.to_param, :domain => invalid_attributes}, valid_session
  #       expect(assigns(:domain)).to eq(domain)
  #     end

  #     it "re-renders the 'edit' template" do
  #       domain = Domain.create! valid_attributes
  #       put :update, {:id => domain.to_param, :domain => invalid_attributes}, valid_session
  #       expect(response).to render_template("edit")
  #     end
  #   end
  # end

  # describe "DELETE destroy" do
  #   it "destroys the requested domain" do
  #     domain = Domain.create! valid_attributes
  #     expect {
  #       delete :destroy, {:id => domain.to_param}, valid_session
  #     }.to change(Domain, :count).by(-1)
  #   end

  #   it "redirects to the domains list" do
  #     domain = Domain.create! valid_attributes
  #     delete :destroy, {:id => domain.to_param}, valid_session
  #     expect(response).to redirect_to(domains_url)
  #   end
  # end

end
