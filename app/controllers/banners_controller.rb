class BannersController < ApplicationController

  def index
  	@banners = Banner.all
  end


  def get_best_banner
  	@banner_with_max_price = Banner.group(:size).maximum('amount')
  	@best_banner = BannerService.new(@banner_with_max_price).get_best
  	render :json => @best_banner
  end

end
