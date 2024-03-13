class QuizzesController < ApplicationController
    def show
        @quiz = Quiz.find(params[:id])
        @questions = @quiz.questions.includes(:answers)
    end
end
