class StaticPagesController < ApplicationController
  def home
    @yamalogs = Yamalog.all
  end

  def help
  end
end
