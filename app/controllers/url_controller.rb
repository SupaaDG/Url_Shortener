class UrlController < ApplicationController

  def home

  end

  def dealwith
    @rand = (0...4).map { (65 + rand(26)).chr }.join
    @url = Url.new(full: params[:entry], short: @rand)
      if @url.save
        pointless_var = 0
      else
        redirect_to oops_path
      end
  end

  def invalid

  end

  def shortened
    redirect_to Url.find_by_short(params[:id]).full
  end

end
