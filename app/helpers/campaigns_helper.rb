module CampaignsHelper

  def youtube_id
    YouTubeAddy.extract_video_id(@campaign.video_url)
  end
  
end
