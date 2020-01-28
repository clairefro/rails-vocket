class VocabsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @vocabs = Vocab.order('created_at DESC')
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def vocab_params
    params.require(:vocab).permit(:french, :native_translation, :starred)
  end
end
