require "test_helper"

describe CompaniesController do

  let(:company) { companies :one }

  it "gets index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  it "gets new" do
    get :new
    assert_response :success
  end

  it "creates company" do
    assert_difference('Company.count') do
      post :create, company: { description: @company.description, email: @company.email, industry_id: @company.industry_id, location: @company.location, logo_large: @company.logo_large, logo_small: @company.logo_small, size: @company.size, subdomain: @company.subdomain }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  it "shows company" do
    get :show, id: company
    assert_response :success
  end

  it "gets edit" do
    get :edit, id: company
    assert_response :success
  end

  it "updates company" do
    put :update, id: company, company: { description: @company.description, email: @company.email, industry_id: @company.industry_id, location: @company.location, logo_large: @company.logo_large, logo_small: @company.logo_small, size: @company.size, subdomain: @company.subdomain }
    assert_redirected_to company_path(assigns(:company))
  end

  it "destroys company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: company
    end

    assert_redirected_to companies_path
  end

end
