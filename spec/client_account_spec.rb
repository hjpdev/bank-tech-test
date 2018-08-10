require 'client_account'

describe ClientAccount do
  
  it 'Initializes with a default balance of 0' do
    expect(subject.balance == 0).to be true
  end

  it '#print_balance should return a formatted string' do
    expect(subject.print_balance).to eq('£0')
  end

  it '#deposit should increase the balance' do
    subject.deposit(500)
    expect(subject.balance).to eq 500
  end

  it '#deposit should set the date to today by default' do
    subject.deposit(10)
    date = Date.today
    expect(subject.record[0][1]).to eq date.strftime('%F')
  end

  it '#withdraw should reduce the balance' do
    subject.deposit(500)
    subject.withdraw(200)
    expect(subject.balance).to eq 300
  end

  it '#withdraw should set the date to today by default' do
    subject.deposit(100)
    subject.withdraw(10)
    date = Date.today
    expect(subject.record[1][1]).to eq date.strftime('%F')
  end

  it 'should not be able to withdraw if the balance is to low' do
    expect{subject.withdraw(10)}.to raise_error('Unable, balance is too low.')
  end
end