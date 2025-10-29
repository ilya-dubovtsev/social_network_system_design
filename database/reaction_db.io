// Database: reaction_db

// Replication:
// - master-slave(sync)-slave(async)
// - RF = 3
//
// Sharding:
// - key based by post_id

Table likes {
  post_id uuid [not null]
  user_id bigint [not null]
  created_at timestamptz [default: `now()`]
  indexes {
    (post_id, user_id) [type: primary]
  }
}

Table comments {
  id uuid [primary key]
  post_id uuid [not null]
  user_id bigint [not null]
  text varchar(500) [not null]
  created_at timestamptz [default: `now()`]
}