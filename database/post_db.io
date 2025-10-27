// Database: post_db

// Replication:
// - master-slave(sync)-slave(async)
// - RF = 3
//
// Sharding:
// - key based by user_id

Table posts {
  id uuid [primary key]
  user_id bigint [not null]
  description varchar(1000)
  image_url varchar(512) [not null]
  location_id bigint [ref: > locations.id]
  created_at timestamptz [default: `now()`]
  updated_at timestamptz [default: `now()`]
}

Table locations {
  id bigint [primary key]
  name varchar(255) [not null]
  country_code varchar(3)
  lat decimal(9, 6)
  lng decimal(9, 6)
  posts_count integer [default: 0]
  created_at timestamptz [default: `now()`]
}