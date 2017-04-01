class SalesforcecohortsController < ApplicationController
  include Databasedotcom::Rails::Controller

  def index
    @salesforcecohorts = Cohort__c.all
  end

  def all_dates
    @salesforcecohorts = Cohort__c.all
  end

  def show
  end
end
