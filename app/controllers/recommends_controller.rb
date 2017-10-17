class RecommendsController < ApplicationController

  def index
    @recommends = Recommend.order('created_at DESC')
  end

  def new
    @recommend = Recommend.new
    @recommend.images.build
  end

  def create
    @recommend = Recommend.new(record_params)
    if @recommend.save
      redirect_to root_path
    else
      flash.now[:alert] = "タイトルを入力してください"
      render :new
    end
    # respond_to do |format|
    #   if recommend.save
    #       format.html { redirect_to @recommend, notice: 画像がアップロードされました }
    #       format.json { render json: @recommend, status: :created, location: @recommend }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @recommend.errors, status: :unprocessable_entity  }
  end

  def show
    @recommend = Recommend.find(params[:id])
    @comment = Comment.new
    @comments = @recommend.comments.order('created_at ASC')
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  end

  def edit
  end

  def delete
  end

  def tag_cloud
    @tags = User.tag_counts_on(:tags).order('count DESC')
  end

  private
  def record_params
    params.require(:recommend).permit(:title, :detail, :recotag_list, images_attributes: [:image]).merge(user_id: current_user.id)
  end
end
