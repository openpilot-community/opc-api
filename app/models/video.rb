class Video < ApplicationRecord
  has_many :vehicle_config_videos
  has_many :vehicle_configs, :through => :vehicle_config_videos
  has_many :video_hardware
  validates_uniqueness_of :video_url
  before_save :embed
  # has_many :hardware_items, :through => :video_hardware

  def embed
    # if !self.video_url.blank? && self.html.blank?
      # puts "Has key"
      # puts self.video_url      
      iframely = Iframely::Requester.new api_key: ENV['IFRAMELY_KEY']

      videoResult = iframely.get_iframely_json(self.video_url)

      # puts videoResult.to_yaml

      if self.uploaded_at.blank?
        d = DateTime.parse(videoResult["meta"]["date"])
        self.uploaded_at = d
      end

      if self.title.blank?
        self.title = videoResult['meta']['title']
      end

      if self.html.blank?
        self.html = videoResult['html']
      end
      # puts self.thumbnail_url
      if self.thumbnail_url.blank?
        if videoResult['links']['thumbnail'].is_a? Array
          self.thumbnail_url = videoResult['links']['thumbnail'].first['href']
        else
          self.thumbnail_url = videoResult['links']['thumbnail']['href']
        end
      end

      if self.author_url.blank?
        self.author_url = videoResult['meta']['author_url']
      end

      if self.author.blank?
        self.author = videoResult['meta']['author']
      end

      if self.provider_name.blank?
        self.provider_name = videoResult['meta']['site']
      end

      if self.description.blank?
        self.description = videoResult['meta']['description']
      end
      # puts self.to_yaml     
      # self.save!  
    # end
  end
end