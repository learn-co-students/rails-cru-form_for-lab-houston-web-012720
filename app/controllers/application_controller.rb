class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_instance, only: [:show, :edit, :update, :destroy]

  def main
    render 'main'
  end

  def show
  
  end

  def edit
  
  end

  def index
    @instances = get_class.all
  end

  def new
    @instance = get_class.new
  end

  def create
    @instance = get_class.create(strong_params)
    redirect_to get_path(@instance)
  end


  def update
    @instance.update(strong_params)
    redirect_to get_path(@instance)
  end


  def destroy
    @instance.destroy
    redirect_to get_path
  end

  private

  def get_class
    Object.const_get(controller_path.classify)
  end

  def class_name
    
  end

  def current_instance
    @instance = get_class.find(params[:id])
  end



  def get_path(where=nil)
    if where
      return "/#{get_class.name.downcase.pluralize(2)}/#{where.id}"
    else
      return "/#{get_class.name.downcase.pluralize(2)}"
    end
  end

end
