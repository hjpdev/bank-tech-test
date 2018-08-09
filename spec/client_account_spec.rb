require 'client_account'

describe ClientAccount do
  
  it { is_expected.to respond_to(:deposit) }
  it { is_expected.to respond_to(:withdraw) }
  it { is_expected.to respond_to(:statement) }
end