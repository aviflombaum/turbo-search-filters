# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  category    :string
#  location    :string
#  remote      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Job < ApplicationRecord
  enum commitment: [:full_time, :part_time, :contract, :internship]
end
