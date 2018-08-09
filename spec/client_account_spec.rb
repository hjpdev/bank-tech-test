require 'client_account'

describe ClientAccount do
  
  it 'Initializes with a default balance of 0' do
    expect(subject.balance == 0).to be true
  end

  it '#print_balance should return a formatted string' do
    expect(subject.print_balance).to eq('£0')
  end

  it 'Deposit should increase the balance' do
    subject.deposit(500)
    expect(subject.balance).to eq 500
  end

  it 'Withdraw should reduce the balance' do
    subject.deposit(500)
    subject.withdraw(200)
    expect(subject.balance).to eq 300
  end
end