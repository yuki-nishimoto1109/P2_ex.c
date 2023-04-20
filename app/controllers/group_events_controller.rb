class GroupEventsController < ApplicationController

  def show
    @event = GroupEvent.find(params[:id])
  end

  def new
    @event = GroupEvent.new()
  end

  def create
    @event = GroupEvent.new(event_params)
    @event.group_id = params[:group_id]
    if @event.save
      members = GroupUser.where(group_id: params[:group_id])
      members.each do |member|
        puts member.user.email
      end
      redirect_to group_group_event_path(@event.id)
    else
      render :new
    end
  end

  private
  def event_params
    params.require(:group_event).permit(:title, :content)
  end

end
