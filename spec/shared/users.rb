shared_examples 'users' do
  describe user('sky-analytics') do
    it { should exist }
    it { should belong_to_group 'sky-analytics' }
    it { should have_home_directory '/home/sky-analytics' }
  end
end
