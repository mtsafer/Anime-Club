class Anime < ApplicationRecord
	validates :title, presence: true
	validates :director, presence: true
	validates :year, presence: true
	validates :about, presence: true
end
