class YamalogsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @yamalogs = Yamalog.search(params[:search])
  end

  def show
    @yamalog = Yamalog.find(params[:id])
  end

  def new
    #インスタンス変数にからのオブジェクトを入れておく。
    @yamalog = current_user.yamalogs.build
  end

  def create
    @yamalog = current_user.yamalogs.build(yamalog_params)
    if @yamalog.save
      redirect_to @yamalog, notice: '作成しました'
    else
      render :new
    end
  end

  def edit
    @yamalog = current_user.yamalogs.find(params[:id])
  end

  def update
    @yamalog = current_user.yamalogs.find(params[:id])
    if @yamalog.update(yamalog_params)
      redirect_to @yamalog, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    @yamalog = current_user.yamalogs.find(params[:id])
    @yamalog.destroy!
    redirect_to root_path, notice: '削除しました'
  end

  private

  def yamalog_params
    params.require(:yamalog).permit(
      :yama_date, :yama_name, :weather, :member, :route, :gpslog
    )
  end
end