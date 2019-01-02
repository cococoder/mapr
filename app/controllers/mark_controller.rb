class MarkController < ApplicationController
  skip_before_action :verify_authenticity_token
  def add

   Mark.find_or_create_by! left: params[:left], top: params[:top], context: params[:body_map]

   head :ok
  end
end
