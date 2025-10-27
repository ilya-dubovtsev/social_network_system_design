// Database: subscriptions_db

// Replication:
// - master-slave(sync)-slave(async)
// - RF = 3
//
// Sharding:
// - key based by subscriber_id

Table subscriptions {
  author_id bigint [not null]
  subscriber_id bigint [not null]
  created_at timestamptz [default: `now()`]
  indexes {
    (author_id, subscriber_id) [type: primary]
  }
}