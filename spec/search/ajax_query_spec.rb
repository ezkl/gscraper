require 'pathname'
require Pathname(__FILE__).dirname.join('..','spec_helper').expand_path
require Pathname(__FILE__).dirname.join('..','has_pages_examples').expand_path
require Pathname(__FILE__).dirname.join('..','page_has_results_examples').expand_path

require 'gscraper/search/ajax_query'

describe GScraper::Search::AJAXQuery do

  before(:all) do
    @query = GScraper::Search::AJAXQuery.new(:query => 'Ruby')
    @page = @query.first_page
  end

  it_should_behave_like "has Pages"
  it_should_behave_like "Page has Results"

end
