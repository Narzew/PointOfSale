# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  cd
class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :code, :price
end
