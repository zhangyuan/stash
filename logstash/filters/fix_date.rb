require "logstash/filters/base"
require "logstash/namespace"
require "date"

class LogStash::Filters::FixDate < LogStash::Filters::Base

  config_name "fix_date"
  milestone 1

  config :source, :validate => :string, :default => "message"

  public
  def register
  end 

  public
  def filter(event)
    source = event[@source]
    return if source.nil? || source.empty?

    #05/15/13 00:00:25 => 05/15/2013 00:00:25
    source.gsub! /(\d{2})(\/\d{2})(\/)(\d{2}\s)/, '\1\2/20\4'
  end
end 