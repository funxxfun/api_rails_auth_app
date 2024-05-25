# frozen_string_literal: true
class PublicController < ApplicationController
  # こちらには authentication の記述はは必要ない
  def public
    render json: { message: "Hello from a public endpoint! You don't need to be authenticated to see this." }
  end
end
