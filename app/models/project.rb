class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy, inverse_of: :project
  accepts_nested_attributes_for :tasks,
                                      reject_if: lambda { |attrs| attrs['title'].blank? },
                                      allow_destroy: true

end
