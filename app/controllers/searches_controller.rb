class SearchesController < ApplicationController
  def index
  end

  def org_search
    @search_terms = { org_params[:org_criteria] => org_params[:org_value] }
    # search_file = File.read('/app/assets/javascripts/JSON_data/organizations.json')
    # search_hash = JSON.parse(file)
    # render json: search_hash

  end
private

  def org_params
    params.permit(:org_criteria, :org_value)
  end
end
