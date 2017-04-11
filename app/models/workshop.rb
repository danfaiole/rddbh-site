class Workshop < ApplicationRecord
    validates :name, presece: true
    validates :day, presence: true
    validates :time, presence: true
    validates :vacancies, presence: true
end
