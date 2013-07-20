class VotesController < ApplicationController
  def create
    topic = Topic.find(params[:topic_id])
    vote = topic.votes.new
    vote.save!

    redirect_to(topics_url)

  end
end
