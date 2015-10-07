module Pipedrive
  class Pipeline < Base
    def stages
      Stage.all(get "/stages?api_token=#{Pipedrive.key.to_s}", { :pipeline_id => self.id })
    end

    def statistics(id, start_date, end_date)
      res = get("#{resource_path}/#{id}/movement_statistics?api_token=#{Pipedrive.key.to_s}",
                :query => {:start_date => start_date, :end_date => end_date})
      res.ok? ? new(res) : bad_response(res)
    end

    def deals(id, stage_id)
      Pipedrive::Deal.all(get "#{resource_path}/#{id}/deals?api_token=#{Pipedrive.key.to_s}", :stage_id => stage_id )
    end
  end
end
