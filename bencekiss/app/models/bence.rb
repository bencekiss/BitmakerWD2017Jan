class Bence < ApplicationRecord
  has_many :edus
  has_many :works
  has_many :projects

  # accepts_nested_attributes_for :edus, reject_if: :all_blank, allow_destroy: true
  # accepts_nested_attributes_for :works, reject_if: :all_blank, allow_destroy: true
  # accepts_nested_attributes_for :projects, reject_if: :all_blank, allow_destroy: true

end
