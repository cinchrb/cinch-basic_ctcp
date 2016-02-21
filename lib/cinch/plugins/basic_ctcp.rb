require "time"

module Cinch
  module Plugins
    class BasicCTCP
      include Cinch::Plugin

      ctcp :version
      ctcp :time
      ctcp :ping
      ctcp :source
      ctcp :clientinfo
      def ctcp_version(m)
        m.ctcp_reply reply(:version) || "Cinch v#{Cinch::VERSION}" if reply_to_ctcp?(:version)
      end

      def ctcp_time(m)
        m.ctcp_reply Time.now.strftime("%a %b %d %H:%M:%S %Z %Y") if reply_to_ctcp?(:time)
      end

      def ctcp_ping(m)
        m.ctcp_reply m.ctcp_args.join(" ") if reply_to_ctcp?(:ping)
      end

      def ctcp_source(m)
        m.ctcp_reply reply(:source) || "http://github.com/cinchrb/cinch" if reply_to_ctcp?(:source)
      end

      def ctcp_clientinfo(m)
        m.ctcp_reply reply(:clientinfo) || "ACTION PING VERSION TIME CLIENTINFO SOURCE" if reply_to_ctcp?(:clientinfo)
      end

      private

      def reply_to_ctcp?(command)
        commands = config[:commands]
        commands.nil? || commands.include?(command)
      end

      def reply(command)
        config[:reply][command]
      end
    end
  end
end
