require 'rails_helper'

RSpec.describe IngredientsController, type: :controller do
  describe "GET #index" do
    it "should return success 200" do
      get :index

      #3 ways to write 'expect' code
      expect(response.code).to eq("200")
      expect(response).to be_success
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it "shows an ingredient" do
      ingredient = Ingredient.create(name: "Carrot", calories: "62")
      get :show, {id: ingredient.id}
      expect(response).to be_success
      expect(response).to render_template(:show)
      ingredient.destroy
    end

    it "returns 404 when ingredient doesnt exist" do
      get :show, {id: -1}
      expect(response).to have_http_status(404)
    end
  end

  describe "POST #create" do
    it "creates a new ingredient" do
      expect {
      # ingredient = Ingredient.create(name: "Carrot", calories: "62")
      post :create, {ingredient: {name: "Carrot", calories: "62"}}
    }.to change(Ingredient, :count).by(1)

    expect(Ingredient.last.name).to eq("Carrot")
    # ingredient.destroy
    end
  end

  describe "DELETE #destroy" do
    it "deletes an ingredient" do
      ingredient = Ingredient.create(name: "Carrot", calories: "32")
        # delete :destroy, {id: ingredient.id}

        expect {
          delete :destroy, {id: ingredient.id}
        }.to change(Ingredient, :count).by(-1)
        # expect(response).to be_success
    end
  end



# describe "GET /ingredients" do
#   it "returns a list of ingredients" do
#     get ingredients_path(format: :json)
#     data = JSON.parse(response.body)
#
#     expect(response).to have_http_status(200)
#   end
# end

end
