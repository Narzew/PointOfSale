# frozen_string_literal: true

require 'rails_helper'
describe ScannersController do
  describe '[GET] #show' do
    it do
      expect(response).to be_ok
      expect(response).to render_template(:show)
    end
  end

  describe '[POST] #search' do
    it do
      expect(response).to be_ok
    end
  end
end
