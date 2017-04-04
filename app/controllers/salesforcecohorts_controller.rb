class SalesforcecohortsController < ApplicationController
  include Databasedotcom::Rails::Controller
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @salesforcecohorts = Cohort__c.all
  end

  def all_dates
    @salesforcecohorts = Cohort__c.all
  end

  def show
  end
end
