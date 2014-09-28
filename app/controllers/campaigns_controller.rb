class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @campaigns = Campaign.all
  end

  def show
    @perks = @campaign.perks
  end

  def new
    @campaign = current_user.campaigns.build
  end

  def edit
  end

  def create
    @campaign = current_user.campaigns.build(campaign_params)   
      if @campaign.save
        redirect_to @campaign, notice: 'Campaign was successfully created.' 
      else
        render :new  
    end
  end

  def update  
      if @campaign.update(campaign_params)
        redirect_to @campaign, notice: 'Campaign was successfully updated.' 
      else
        render :edit   
    end
  end

  def destroy
    @campaign.destroy
    redirect_to campaigns_url, notice: 'Campaign was successfully destroyed.'    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    def correct_user
      @campaign = current_user.campaigns.find_by(id: params[:id])
      redirect_to campaigns_path, notice: "Not authorized to edit this campaign" if @campaign.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_params
       params.require(:campaign).permit(:project_title, 
                                       :video_url, 
                                       :description, 
                                       :image, 
                                       :blurb, 
                                       :funding_duration, 
                                       :funding_goal, 
                                       :legal_first_name, 
                                       :legal_last_name, 
                                       :birthday, 
                                       :phone_number, 
                                       :street_address, 
                                       :country, 
                                       :zip_code, 
                                       perks_attributes: [:name, :amount, :number_available, :description, :id, :_destroy])
    end
end
