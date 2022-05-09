require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'validates name' do
      record = Product.new
      record.name=''
      record.validate
      expect(record.errors[:name]).to include("can't be blank")
    end
  end
end
