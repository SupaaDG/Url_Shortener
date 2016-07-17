class UrlController < ApplicationController
@@exists = nil
  def home

  end

  def dealwith
    @rand = (0...4).map { (65 + rand(26)).chr }.join
    @url = Url.new(full: "#{params[:entry]}", short: @rand)
      if @url.save
        pointless_var = 0
      elsif Url.find_by_full(params[:entry].to_s) != nil
        @@exists = Url.find_by_full("#{params[:entry]}")
        redirect_to alreadyshort_path
      else
        redirect_to oops_path
      end
  end

  def invalid
  end

  def shortened
    @urlrecord = Url.find_by_short(params[:id].to_s).full
    redirect_to @urlrecord
  end

  def alreadyshort
    @itsshort = @@exists.short
    @thisurl = @@exists.full
  end

end
