// Database: subscriptions_db

Table subscriptions {
  author_id bigint [not null]
  subscriber_id bigint [not null]
  created_at timestamptz [default: `now()`]
  indexes {
    (author_id, subscriber_id) [type: primary]
  }
}