module Spree
  class ProductPackage < ActiveRecord::Base
    belongs_to :product

    validates :length, :width, :height, :weight,
              numericality: { greater_than: 0,
                                message: Spree.t('validation.must_be_number') }
  end
end
