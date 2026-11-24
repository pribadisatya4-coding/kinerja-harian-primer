-- Skrip SQL untuk Setup Database E-Kinerja Harian di Supabase
-- Jalankan skrip ini di menu SQL Editor pada dashboard Supabase Anda

CREATE TABLE IF NOT EXISTS employees (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  nip TEXT NOT NULL,
  role TEXT NOT NULL,
  division TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS reports (
  id TEXT PRIMARY KEY,
  employee_id TEXT REFERENCES employees(id) ON DELETE CASCADE,
  report_date DATE NOT NULL,
  start_time TEXT NOT NULL,
  end_time TEXT NOT NULL,
  duration_minutes INTEGER NOT NULL,
  title TEXT NOT NULL,
  output TEXT NOT NULL,
  index_val NUMERIC(4,2) DEFAULT 1.0,
  points NUMERIC(6,2) DEFAULT 0,
  status TEXT DEFAULT 'Selesai',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Aktifkan Row Level Security (RLS)
ALTER TABLE employees ENABLE ROW LEVEL SECURITY;
ALTER TABLE reports ENABLE ROW LEVEL SECURITY;

-- Kebijakan akses baca & tulis
DROP POLICY IF EXISTS "Public Access Employees" ON employees;
CREATE POLICY "Public Access Employees" ON employees FOR ALL USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "Public Access Reports" ON reports;
CREATE POLICY "Public Access Reports" ON reports FOR ALL USING (true) WITH CHECK (true);
