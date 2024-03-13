class UserAnswersController < ApplicationController
    def create
        UserAnswer.create(user_answer_params)
        redirect_to next_question_path
    end

    private
        def user_answer_params
            params.require(:user_answer).permit(:user_id, :question_id, :answer_id)
        end
end
