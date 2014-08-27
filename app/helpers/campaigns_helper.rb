module CampaignsHelper

  def youtube_id
    YouTubeAddy.extract_video_id(@campaign.video_url)
  end

  def video_url
    "#{Settings.video_embed_url}?" + case Settings.video_embed_url
    when /vimeo/
      'title=0&byline=0&portrait=0&autoplay=0'
    when /youtube/
      'autohide=1&showinfo=0&rel=0&autoplay=0'
    else
      ''
    end
  end

end
