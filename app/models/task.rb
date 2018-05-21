class Task < ApplicationRecord
  validates :name, :poc, :dminuscat, :duedate, :taskstatus, presence: true
end
