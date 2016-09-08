require 'rails_helper'

describe Image do
  it { should validate_presence_of :name }
  it { should belong_to :story }
end
