class RecordsController < ApplicationController
  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.valid? # && 同じ日付がなければ登録できるif文（unless文）
      @record.save
      redirect_to root_path
    else
      flash.now[:alert] ="記録できませんでした" #（1日1回しか記録できません、編集してください）
      render 'new'
    end
  end

  def show
    @record = Record.find(params[:id])
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      redirect_to root_path, notice: "編集しました"
    else
      flash.now[:alert] = "編集できませんでした"
      render 'edit'
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to root_path, notice:"削除しました"
  end

  private
  def record_params
    params.require(:record).permit(:kt, :pulse, :systolic, :diastolic, :bw, :palpitation, :suffocation, :swelling, :fatigue, :start_time)
  end

end
