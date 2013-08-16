require "outliers/mixins.rb"
require "outliers/verifications"
require "outliers/verification_response"

require "outliers/collection"
require "outliers/credentials"
require "outliers/exceptions"
require "outliers/evaluation"
require "outliers/provider"
require "outliers/providers"
require "outliers/resource"
require "outliers/resources"
require "outliers/result"
require "outliers/run"

require "outliers/version"

module Outliers
  module_function

  def logger(logger=nil)
    @logger ||= logger ? logger : Logger.new(STDOUT)
  end

  def config_path(path=nil)
    @config_path ||= path ? path : './'
  end

end
