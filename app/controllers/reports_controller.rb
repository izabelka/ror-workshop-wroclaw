class ReportsController < ApplicationController
  before_action :authenticate_user! #Iza
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }
end
