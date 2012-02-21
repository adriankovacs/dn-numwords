# -*- coding: utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    render
  end

  def get_numwords
    @result = "Ez az eredmény."
    render "application/index"
  end

end
