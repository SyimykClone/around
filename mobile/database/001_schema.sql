CREATE TABLE IF NOT EXISTS poi (
  id          BIGSERIAL PRIMARY KEY,
  name        TEXT NOT NULL,
  description TEXT NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_poi_name ON poi (name);
