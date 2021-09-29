# frozen_string_literal: true

describe ProductsController do
  describe '[GET] #index' do
    before do
      create_list(:product, 10)
    end

    it do
      expect(response).to be_ok
      expect(response).to render_template(:index)
    end
  end
end
