require 'pipedrive/base'
require 'pipedrive/activity'
require 'pipedrive/deal'
require 'pipedrive/organization'
require 'pipedrive/person'
require 'pipedrive/organization-field'
require 'pipedrive/person-field'
require 'pipedrive/product'
require 'pipedrive/pipeline'
require 'pipedrive/stage'
require 'pipedrive/note'

module Pipedrive
  mattr_accessor :key

  #set the giving API key for pipedrive
  def self.key=(key)
    @@key = key
  end

	#See which key is givin
  def self.key
    @@key
  end

end
