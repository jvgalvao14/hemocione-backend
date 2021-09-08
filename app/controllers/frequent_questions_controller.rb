# frozen_string_literal: true

class FrequentQuestionsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def current_ability
    @current_ability ||= FrequentQuestionAbility.new(current_user)
  end

  def index
    frequent_questions = paginate Faq::ReadService.call
    render json: serialized_frequent_questions(frequent_questions)
  end

  def show
    frequent_questions = Faq::ReadService.call(params.permit(:id))
    return head :not_found if frequent_questions.blank?

    render json: serialized_frequent_questions(frequent_questions).first
  end

  def create
    authorize!(:create, FrequentQuestion)

    frequent_question = Faq::CreateService.call(parameters)
    render json: frequent_question, status: :created
  end

  def update
    authorize!(:update, FrequentQuestion)

    frequent_question = Faq::UpdateService.call(params.require(:id), parameters)
    return head :not_found if frequent_question.blank?

    render json: Faq::FrequentQuestionSerializer.new(frequent_question).serializable_hash
  end

  def destroy
    authorize!(:destroy, FrequentQuestion)

    Faq::DeleteService.call(params.require(:id))

    head :no_content
  end

  private

  def serialized_frequent_questions(frequent_questions)
    frequent_questions.map do |frequent_question|
      Faq::FrequentQuestionSerializer.new(frequent_question).serializable_hash
    end
  end

  def parameters
    params.require(:frequent_question).permit(:question, :answer)
  end
end
