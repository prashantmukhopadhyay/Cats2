class Cat < ActiveRecord::Base
  COLORS = ["black","brown","white", "spotted"]
  SEX = ["M","F"]

  attr_accessible :age, :birth_date, :color, :name, :sex

  validates :age, :birth_date, :color, :name, :sex, presence: true
  validates :age, numericality: true
  validates :color, inclusion: { in: COLORS }
  validates :sex, inclusion: { in: SEX }

end
