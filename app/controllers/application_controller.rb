# -*- coding: utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  include Linguistics::EN

  def index
    render
  end

  def get_numwords
    @result = params[:number].to_s + " => "
    if params[:number] && !(params[:number] =~ /^\d+$/).nil?
      @result += number_to_words(params[:number], {:group => 0, :comma => ", ", :and => " and ", :zero => "zero"}).join(" ")
    else
      @result += "Error: empty, not numeric or not integer."
    end
    render "application/index"
  end

end
