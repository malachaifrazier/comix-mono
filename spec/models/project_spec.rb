# frozen_string_literal: true

# == Schema Information
#
# Table name: projects
#
#  id               :bigint           not null, primary key
#  blurb            :text
#  campaign_ends_at :datetime
#  description      :text
#  funding_goal     :decimal(, )
#  funds_raised     :decimal(, )
#  slug             :string           not null
#  status           :integer          default("draft")
#  title            :string
#  video_url        :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint           not null
#
# Indexes
#
#  index_projects_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "rails_helper"

RSpec.describe Project, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
