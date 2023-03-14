ActiveAdmin.register AssessmentResult do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :submitter_id, :assessor_id, :course_id, :section_id, 
                :group_term_id, :activity_name, :group_term_name, statement_mappings_attributes: [:assessment_result_id, :statement_id, :met],
                rubric_mappings_attributes: [:assessment_result_id, :rubric_id, :performance]
  #
  # or
  #
  # permit_params do
  #   permitted = [:submitter_id, :assessor_id, :course_id, :section_id, :group_term_id, :activity_name, :group_term_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs 'Assessment Results' do
      f.input :submitter
      f.input :assessor
      f.input :course
      f.input :section
      f.input :group_term
      f.input :group_term_name
      f.inputs 'Statement Mappings' do
        f.has_many :statement_mappings do |sm|
          sm.input :statement
          sm.input :met
        end
      end

      f.inputs 'Rubric Mappings' do
        f.has_many :rubric_mappings do |rm|
          rm.input :rubric
          rm.input :performance
        end
      end
      f.actions
    end
  end
end
