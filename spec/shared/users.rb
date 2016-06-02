shared_examples 'users' do |username|
  describe user(username) do
    it { should exist }
    it { should belong_to_group username }
    it { should have_home_directory "/home/#{username}" }
  end
end
