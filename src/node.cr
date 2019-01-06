require "./term"
require "random"

enum NodeMode
    Follower   # 0
    Candidate # 1
    Leader  # 2
end

HEARTBEAT_TIMEOUT = 200

# 
class Node
    def initialize(cluster : Cluster, mode : NodeMode, term : Term, id : String = "")
        @cluster = cluster
        @mode = mode
        @term = term
        @id = id
        @responsive = true
        @last_heartbeat = nil
        @timeout = 150 + rand(250)
    end
    def watch_heartbeat()
        sleep @timeout
        while true
            now = Time.monotonic
            if @last_heartbeat.nil? || now - @last_heartbeat >= HEARTBEAT_TIMEOUT
                @cluster.issue_election
            end
            sleep 50
        end
    end
end