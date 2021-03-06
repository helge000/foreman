require 'test_helper'

class VariableLookupKeyTest < ActiveSupport::TestCase
  should allow_mass_assignment_of(:puppetclass)
  should validate_uniqueness_of(:key)
  should validate_presence_of(:puppetclass)
  should_not allow_value('with whitespace').for(:key)
end
