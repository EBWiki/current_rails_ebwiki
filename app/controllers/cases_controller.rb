# frozen_string_literal: true

# Cases controller
class CasesController < ApplicationController # rubocop:todo Metrics/ClassLength
  def index
    page_size = 12
    @cases = Case.order('incident_date DESC')
  end

  private

  def case_params # rubocop:todo Metrics/MethodLength
    params[:case][:date] ||= []
    params.require(:case).permit(
      :title,
      :age,
      :overview,
      :litigation,
      :community_action,
      :agency_id,
      :cause_of_death,
      :date,
      :state_id,
      :city,
      :address,
      :zipcode,
      :longitude,
      :latitude,
      :avatar,
      :remove_avatar,
      :video_url,
      :summary,
      :blurb,
      links_attributes: %i[id url title _destroy],
      comments_attributes: %i[comment content commentable_id commentable_type],
      subjects_attributes: %i[name age gender_id ethnicity_id unarmed homeless veteran
                              mentally_ill id _destroy],
      agency_ids: []
    )
  end

  # from the tutorial (https://gorails.com/episodes/comments-with-polymorphic-associations)
  # why did they set commentable here?
  def set_commentable
    @commentable = Case.friendly.find(params[:id])
  end

  def set_instance_vars
    @agencies = SortCollectionOrdinally.call(collection: Agency.all)
    @states = SortCollectionOrdinally.call(collection: State.all)
    @genders = SortCollectionOrdinally.call(collection: Gender.all, column_name: 'sex')
    @ethnicities = SortCollectionOrdinally.call(collection: Ethnicity.all, column_name: 'title')
  end
end
