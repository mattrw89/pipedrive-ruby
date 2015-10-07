module Pipedrive
  class Stage < Base
    def self.deals(id)
      Deal.all(get "#{resource_path}/#{id}/deals?api_token=#{Pipedrive.key.to_s}", :everyone => 1)
    end
  end
end
