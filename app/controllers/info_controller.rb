class InfoController < ApplicationController
  def find
    @hash = {}
    users = User.all
    users.each do |user|
      @hash[user.id] = user.comments
    end
  end
end
