require 'account_manager'

describe AccountManager do
  context 'With three clients added initially' do
    let(:client1) { double :client_account, name: 'A' }
    let(:client2) { double :client_account, name: 'B' }
    let(:client3) { double :client_account, name: 'C' }

    before(:each) do
      subject.add_client(client1)
      subject.add_client(client2)
      subject.add_client(client3)
    end

    it 'Holds a list of all clients by name' do
      expect(subject.client_names).to eq(%w[A B C])
    end
  end
end