require 'action_view'

class Cat < ApplicationRecord
include ActionView::Helpers::DateHelper
  CAT_COLORS = ['black', 'brown', 'orange', 'white', 'grey']

  validates :name,  presence: true
  validates :birth_date,  presence: true
  validates :color,  presence: true, inclusion: CAT_COLORS
  validates :sex, inclusion: ['M', 'F']
  validate :birth_date_cannot_be_future


  def birth_date_cannot_be_future
    return unless birth_date.present? && birth_date > Date.today
      errors.add(:birth_date, "can't be in the future")
  end

  def age
    time_ago_in_words(birth_date)
  end
end
