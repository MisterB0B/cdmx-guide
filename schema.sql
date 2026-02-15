-- CDMX Guide Database Schema

-- Spots table
CREATE TABLE IF NOT EXISTS cdmx_spots (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL, -- mexican, japanese, korean, nightlife, tourist, adult, etc.
    type TEXT, -- Teppanyaki, Rock Bar, Strip Club, etc.
    description TEXT,
    address TEXT,
    hours TEXT,
    phone TEXT,
    price TEXT,
    google_maps TEXT,
    bob_intel TEXT, -- Bob's personal recommendations
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    submitted_by TEXT,
    approved BOOLEAN DEFAULT true
);

-- Comments table
CREATE TABLE IF NOT EXISTS cdmx_comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    spot_id UUID REFERENCES cdmx_spots(id) ON DELETE CASCADE,
    author_name TEXT,
    comment TEXT NOT NULL,
    rating INTEGER CHECK (rating >= 1 AND rating <= 5),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- User submissions (pending approval)
CREATE TABLE IF NOT EXISTS cdmx_pending_spots (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    description TEXT,
    address TEXT,
    hours TEXT,
    phone TEXT,
    price TEXT,
    submitted_by TEXT,
    submitted_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    approved BOOLEAN DEFAULT false
);

-- Itineraries table
CREATE TABLE IF NOT EXISTS cdmx_itineraries (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title TEXT NOT NULL,
    description TEXT,
    days JSONB, -- Array of day objects with spots
    created_by TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    is_public BOOLEAN DEFAULT true
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_cdmx_spots_category ON cdmx_spots(category);
CREATE INDEX IF NOT EXISTS idx_cdmx_spots_approved ON cdmx_spots(approved);
CREATE INDEX IF NOT EXISTS idx_cdmx_comments_spot_id ON cdmx_comments(spot_id);
