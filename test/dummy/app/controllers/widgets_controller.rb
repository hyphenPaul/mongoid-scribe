class WidgetsController < ApplicationController
  def show_by_foo
    @widget = Widget.find_by(foo: params[:foo])
    render :show
  end

  def show_by_bar
    @widget = Widget.find_by(bar: params[:bar])
    render :show
  end
end
