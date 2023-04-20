class GroupsController < ApplicationController

  def new
    @group = Group.new()
  end

  def index
    @groups = Group.all()
    @book = Book.new()
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to group_path(@group.id)
    else
      render :edit
    end
  end

  def show
    @group = Group.find(params[:id])
    @book = Book.new()
  end

  def create
    @group = Group.new(group_params)
    @group.owner_id = current_user.id
    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end

  private
  def group_params
    params.require(:group).permit(:name, :introduction, :image)
  end

end
