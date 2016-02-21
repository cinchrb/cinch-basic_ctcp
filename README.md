# Basic CTCP plugin

This plugin implements replies for the following CTCP commands:

- CLIENTINFO
- PING
- SOURCE
- TIME
- VERSION

## Installation
First install the gem by running:
    [sudo] gem install cinch-basic_ctcp

Then load it in your bot:

    require "cinch"
    require "cinch/plugins/basic_ctcp"

    bot = Cinch::Bot.new do
      configure do |c|
        # add all required options here
        c.plugins.plugins = [Cinch::Plugins::BasicCTCP] # optionally add more plugins
      end
    end

    bot.start

## Commands
None.

## Options
### :commands
If this option is set, the plugin will only reply to commands which
are listed in this option.

### Example configuration
    configure do |c|
      # only reply to VERSION and TIME
      c.plugins.options[Cinch::Plugins::BasicCTCP][:commands] = [:version, :time]
    end

### :reply
This option is a hash table of custom responses to VERSION, SOURCE,
and CLIENTINFO.

### Example configuration
    configure do |c|
      # send custom CTCP VERSION response
      c.plugins.options[Cinch::Plugins::BasicCTCP][:reply] = {
        :version => 'My robot v1.0'
      }
    end