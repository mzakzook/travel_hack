class FollowsController < ApplicationController
    def index
        @active_relationships = current_user.active_relationships
        @passive_relationships = current_user.passive_relationships
    end

    def create
        # byebug
        @follow = current_user.active_relationships.new(followed_id: params[:user_id])
        if @follow.save
            flash[:message] = "Follow Successful"
            redirect_to user_path(params[:user_id])
        else
            flash[:message] = "Follow Unsuccessful"
            redirect_to user_path(params[:user_id])
        end
    end

    def destroy
        follow = Follow.find(params[:id])
        user_id = follow.followed_id
        follow.destroy
        flash[:message] = "Unfollowed"
        redirect_to user_path(user_id)
    end

    private

    def already_followed?
        Follow.where(followed_id: params[:id], follower_id: current_user.id).exists?
    end


    def ar_params
        params.permit(:user_id)
    end
end