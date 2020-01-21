class SearchesController < ApplicationController
  def index
  end

  def org_search
    search_file_contents = File.read("#{Rails.root}/app/data/organizations.json")
    data = JSON.parse(search_file_contents)
    result = data.select { |org| org[org_params["org_criteria"]].to_s == org_params["org_value"]}
    byebug
    render json: result

  end
private

  def org_params
    params.permit(:org_criteria, :org_value)
  end
end
