storage "raft" {
	path = "/vault/file"
	node_id = "node2"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = true
}

#Vault Networking Requirement
api_addr = "http://vault-server2:8200"
cluster_addr = "http://vault-server2:8201"
cluster_name = "sg-vault-cluster"

ui = true
log_level = "debug"
