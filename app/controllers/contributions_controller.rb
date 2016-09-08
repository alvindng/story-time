class ContributionsController < ApplicationController
  def new
    @story = Story.find(params[:story_id])
    @contribution = @story.contributions.new
  end

  def create
    @story = Story.find(params[:story_id])
    @contribution = @story.contributions.new(contribution_params)
    if @contribution.save
      redirect_to story_path(@contribution.story)
    else
      render :new
    end
  end

  def show
    @story = Story.find(params[:story_id])
    @contribution = Contribution.find(params[:id])
  end

  def edit
    @story = Story.find(params[:story_id])
    @contribution = Contribution.find(params[:id])
  end

  def update
    @story = Story.find(params[:story_id])
    @contribution = Contribution.find(params[:id])
    if @contribution.update(contribution_params)
      redirect_to story_contribution_path(@story, @contribution)
    else
      render :edit
    end
  end

  def destroy
    @story = Story.find(params[:story_id])
    @contribution = Contribution.find(params[:id])
    @contribution.destroy
    redirect_to story_path(@story)
  end

private
  def contribution_params
    params.require(:contribution).permit(:sentence, :user)
  end
end
