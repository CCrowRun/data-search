class SearchesController < ApplicationController
  def index
  end

  def org_search
    @search_terms = org_params
    search_file_contents = File.read('/app/assets/javascripts/JSON_data/organizations.json')
    # search_hash = JSON.parse(search_file_contents)
    render json: @search_terms

  end
private

  def org_params
    params.permit(:org_criteria, :org_value)
  end
end
