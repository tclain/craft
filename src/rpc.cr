require "./node.cr"

enum Command
    AppendEntries
    RequestVote
end

class Rpc
    def receive(command : Command)
    end
    def send(nodes : Array(Node))
    end
end