require 'messenger'
require 'messenger/models/person'

module Messenger
  class People < Resource

    def initialize(*args)
      args = args.flatten(1) unless !args[0].is_a?(Array)
      super(args)
    end

    def my_profile
      profile_json = get build_uri(my_profile_path)
      Person.new profile_json
    end

    private

      def my_profile_path
        "/#{@account_id}/my/profile.json"
      end
  end
end