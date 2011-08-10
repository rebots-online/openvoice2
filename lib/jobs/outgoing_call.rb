require "connfu"

module Jobs
  class OutgoingCall
    include Connfu::Dsl

    def self.queue
      Connfu::Jobs::Dial.queue
    end

    def self.perform(caller, recipient)
      username = "connfu"
      connfu_user = "sip:#{username}@#{Connfu.config.host}"

      dial :to => caller, :from => connfu_user do |c|
        c.on_answer do
          command_options = {
            :call_jid => call_jid,
            :client_jid => client_jid,
            :dial_to => recipient,
            :dial_from => connfu_user,
            :call_id => call_id
          }
          sleep 1
          send_command Connfu::Commands::NestedJoin.new(command_options)
        end
      end
    end
  end
end
