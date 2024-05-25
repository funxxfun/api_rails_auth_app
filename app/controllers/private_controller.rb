# frozen_string_literal: true
class PrivateController < ApplicationController
  before_action :authorize

  def private
    # スコープの検証に成功した場合の処理
    render json: 'Hello from a private endpoint! You need to be authenticated to see this.'
  end

  def private_scoped
    validate_permissions ['read:messages'] do
      # スコープの検証に成功した場合の処理
      render json: { message: 'Hello from a private endpoint! You need to be authenticated and have a scope of read:messages to see this.' }
    end
  end
end
