# CDMX Guide

Mexico City food, music, and nightlife guide — curated by Bob's 10 years of experience + community contributions.

## Features

- 🍱 **Food**: Mexican, Japanese, Korean, and more
- 🍺 **Nightlife**: Rock bars, pulquerías, jazz clubs
- 🗺️ **Tourist Spots**: Markets, museums, day trips
- 🔞 **Adult Section**: 18+ venues, late-night spots
- 🚶 **Street Vendors**: Best tacos, elotes, tamales
- ✨ **User Submissions**: Anyone can add spots
- 📝 **Comments & Ratings**: Crowdsourced reviews
- 🗺️ **Trip Planner**: Build custom itineraries

## Tech Stack

- Pure HTML/CSS/JS (no build step)
- Supabase backend
- GitHub Pages hosting

## Domain

Live at: **cdmx.bobdodgecreative.com**

## Database Setup

Run `schema.sql` in Supabase SQL editor to create tables:
- `cdmx_spots` - All venues
- `cdmx_comments` - User reviews
- `cdmx_pending_spots` - Submissions awaiting approval
- `cdmx_itineraries` - Trip plans

## Initial Data

App ships with Bob's curated spots:
- Taishu Teppan Sango (Japanese)
- WANWAN Sakaba (Japanese)
- Cueva de Lobos (Rock Bar)
- Pulquería Los Insurgentes (Pulquería)
- Queen's (Strip Club)

More spots added via the "+" button or Supabase inserts.

## Contributing

Open to everyone — just hit the "+" button and submit a spot. All submissions go live immediately (no approval required by default).

## Bob's Intel

Special "Bob's Intel" section on cards shows insider tips from Bob's 10 years of CDMX experience.
