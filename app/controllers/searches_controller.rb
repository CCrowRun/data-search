class SearchesController < ApplicationController
  def index
  end

  def org_search
    @search_terms = params(org_params)
    redirect_to org_search_path
    # search_file = File.read('organizations.json')
    # search_hash = JSON.parse(file)
    # render json: search_hash[:_id].first

  end
private
  def parse_json
    #helper method to parse the three files before search
  end

  def org_params
    params.require(:organization).permit(:org_criteria, :org_value)
  end
end
