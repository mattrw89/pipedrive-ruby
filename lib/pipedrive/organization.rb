module Pipedrive
  class Organization < Base

    def persons
      Person.all(get "#{resource_path}/#{id}/persons?api_token=#{@@key.to_s}")
    end

    def deals
      Deal.all(get "#{resource_path}/#{id}/deals?api_token=#{@@key.to_s}")
    end

    class << self

      def find_or_create_by_name(name, opts={})
        find_by_name(name).first || create(opts.merge(:title => name))
      end

    end
  end
end
