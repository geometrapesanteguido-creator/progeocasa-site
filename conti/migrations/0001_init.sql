-- Database I Miei Conti ProGeoCasa
CREATE TABLE IF NOT EXISTS movements (
  id TEXT PRIMARY KEY,
  date TEXT NOT NULL,
  kind TEXT NOT NULL CHECK (kind IN ('in','out')),
  category TEXT NOT NULL CHECK (category IN ('FATTURATO','PROVVIGIONI','STUDIO','CASA','EXTRA')),
  description TEXT NOT NULL,
  amount REAL NOT NULL CHECK (amount > 0),
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX IF NOT EXISTS idx_movements_date ON movements(date DESC);
CREATE INDEX IF NOT EXISTS idx_movements_category ON movements(category);
CREATE TABLE IF NOT EXISTS tax_settings (
  id INTEGER PRIMARY KEY CHECK (id = 1),
  fixed_monthly REAL NOT NULL DEFAULT 250,
  threshold REAL NOT NULL DEFAULT 18000,
  variable_rate REAL NOT NULL DEFAULT 16,
  deduction_rate REAL NOT NULL DEFAULT 14,
  substitute_rate REAL NOT NULL DEFAULT 15
);
INSERT OR IGNORE INTO tax_settings
(id, fixed_monthly, threshold, variable_rate, deduction_rate, substitute_rate)
VALUES (1, 250, 18000, 16, 14, 15);
