class Book < ActiveRecord::Base
  def finished?
    finished_on.present?
  end
end
