class Campaign < ActiveRecord::Base
	belongs_to :user
	has_many :shortblurbs

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	validates :image, presence: true
	validates :description, presence: true
	validates :blurb, presence: true
end
