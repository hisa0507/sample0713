# coding: utf-8
class TopController < ApplicationController

  #-------#
  # index #
  #-------#
  def index
    Tweet.get_tweet( current_user ) unless session[:user_id].blank?
    @tweets = Tweet.all
  end

end