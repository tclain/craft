require "./node"
require "./rpc"

class Cluster
    def initialize (selfNode : Node, otherNodes : Array(Node))
        @rpc = Rpc
    end

    def receive(command : Command)
        case command
        when Command::AppendEntries
        when Command::RequestVote
        end
    end

    def issue_election()
    end
end