class MarkController < ApplicationController
  skip_before_action :verify_authenticity_token
  def add

   Mark.find_or_create_by! left: params[:left], top: params[:top], context: params[:body_map], uid: params[:uid]

   head :ok
  end
  def remove
    mark = Mark.find_by! uid: params[:uid]
    mark.delete
    head :ok
  end
end
