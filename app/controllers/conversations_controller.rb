class ConversationsController < ApplicationController
# before_action :skip_authorization
def index
  @users = User.where.not(id: current_user.id)
  @conversations = policy_scope(Conversation).where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
end

def create
  if Conversation.between(params[:sender_id], params[:receiver_id]).present?
    @conversation = Conversation.between(params[:sender_id], params[:receiver_id]).first
    authorize @conversation
  else
    @conversation = Conversation.create!(conversation_params)
    authorize @conversation
  end
  redirect_to conversation_messages_path(@conversation)
  authorize @conversation
end

private
def conversation_params
  params.permit(:sender_id, :receiver_id)
end
end
