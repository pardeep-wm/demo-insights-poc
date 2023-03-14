class ReportsController < ApplicationController

  def index
    assessments = AssessmentResult.includes(:statement_mappings, :rubric_mappings, :group_term, :submitter, :assessor).where(submitter: {first_name: 'sfdgs'})
    render json: { assessments: build_assessment_data(assessments) }
  end

  def build_assessment_data(assessments)
    assessments.each_with_object([]) do |assessment, memo|
      obj = {}
      obj[:assessment_id] = assessment.id
      obj[:student_id] = assessment.submitter.id
      obj[:first_name] = assessment.submitter.first_name
      obj[:last_name] = assessment.submitter.last_name
      obj[:assessor_name] = assessment.assessor.first_name
      memo << obj
    end
  end
end
