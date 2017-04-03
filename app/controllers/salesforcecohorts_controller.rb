class SalesforcecohortsController < ApplicationController
  include Databasedotcom::Rails::Controller
  client = Databasedotcom::Client.new :host => "https://na24.salesforce.com/"

  def index
    @salesforcecohorts = Cohort__c.all
  end

  def all_dates
    @salesforcecohorts = Cohort__c.all
  end

  def show
  end
end
