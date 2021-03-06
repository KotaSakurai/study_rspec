require_relative 'message_filter'




shared_examples 'MessageFilter with argument "foo"' do
  # expect(@filter).to be_detect('hello from foo')
  #expect(@filter).to be_detect('hello from foo ')
  it { is_expected.to be_detect('hello from foo')}
  it { is_expected.not_to be_detect('hello,world') }
end

describe MessageFilter, 'with argument "foo"' do
  # before do
  #   @filter = MessageFilter.new('foo')
  # end
  # subject { @filter}
  subject { MessageFilter.new('foo')}
  it_behaves_like 'MessageFilter with argument "foo"'
end

describe MessageFilter, 'with argument "foo" , "bar" ' do
  subject { MessageFilter.new('foo','bar')}
  it { is_expected.to be_detect('hello from bar') }
  it_behaves_like 'MessageFilter with argument "foo"'
end 