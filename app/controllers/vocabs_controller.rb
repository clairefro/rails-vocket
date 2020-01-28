class VocabsController < ApplicationController
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

  def delete
  end
end
