require 'java_buildpack/framework'

module JavaBuildpack::Framework

  # Adds a -D property containing a timestamp of when the application was staged.
  class StagingTimestamp

    def initialize(context = {})
      @java_opts = context[:java_opts]
    end

    def detect
      'staging-timestamp'
    end

    def compile
    end

    def release
      @java_opts << "-Dstaging.timepstamp='#{Time.now}'"
    end

  end

end
