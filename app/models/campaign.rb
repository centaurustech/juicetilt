class Campaign < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	validates :image, presence: true
	validates :video_url, presence: true
	validates :description, presence: true
	validates :blurb, presence: true
	validates :project_title, presence: true
	validates :funding_goal, presence: true
	validates :funding_duration, presence: true

	auto_html_for :video_url do
	    html_escape
	    image
	    youtube(:width => 500, :height => 375, :autoplay => true)
	    link :target => "_blank", :rel => "nofollow"
	    simple_format
  	end
end
 