# Check if a given path exists.
#
# `be_an_existing_path` is a matcher that verifies
# if the subject path exists on the filesystem.
#
# It provides two failure messages:
#   * when expecting a positive result
#   * when expecting a negative result
#
# Example usage:
#
# ```ruby
#   context 'when the path exists' do
#     subject { '/some/path' }
#     it { is_expected.to be_an_existing_path }
#   end
#
#   context 'when the path does not exist' do
#     subject { '/some/other/path' }
#     it { is_expected.not_to be_an_existing_path }
#   end
# ```
RSpec::Matchers.define :be_an_existing_path do
  match do |path|
    File.exist?(path)
  end
  failure_message do |path|
    "expected that #{path} would exist"
  end
  failure_message_when_negated do |path|
    "expected that #{path} would not exist"
  end
end
