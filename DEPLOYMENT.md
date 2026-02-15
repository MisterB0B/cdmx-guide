# CDMX Guide Deployment

## Status: ⚠️ DNS Setup Required

### ✅ Complete
1. GitHub repo created: `misterb0b/cdmx-guide`
2. GitHub Pages enabled
3. CNAME file added for custom domain
4. Initial spots loaded (Japanese, Rock Bars, Pulquerías, Strip Clubs)

### ⏳ Pending
1. **DNS Configuration** (requires Cloudflare access)
2. **Supabase Tables** (run schema.sql in SQL editor)

---

## DNS Setup (Cloudflare)

Add this CNAME record in Cloudflare DNS for `bobdodgecreative.com`:

```
Type: CNAME
Name: cdmx
Target: misterb0b.github.io
Proxy: ✅ Enabled (Orange cloud)
TTL: Auto
```

After adding, the site will be live at: **cdmx.bobdodgecreative.com**

---

## Supabase Setup

1. Go to Supabase dashboard: https://supabase.com/dashboard/project/gwjtfcrgpxclixonogpe
2. Click "SQL Editor" in left sidebar
3. Paste contents of `schema.sql`
4. Click "Run"

This creates 4 tables:
- `cdmx_spots` - All venues
- `cdmx_comments` - User reviews  
- `cdmx_pending_spots` - Submissions awaiting approval
- `cdmx_itineraries` - Trip plans

---

## Temporary Testing

While DNS propagates, test at: **misterb0b.github.io/cdmx-guide**

GitHub Pages deployment takes ~2 minutes after push.

---

## What Works Now

- Dark neon theme (purple/teal)
- Category filtering (All, Mexican, Japanese, Korean, Nightlife, Tourist, Adult)
- Search bar
- Spot cards with addresses, hours, phone, prices
- "Bob's Intel" section for insider tips
- Google Maps links
- Add Spot button (user submissions)
- Mobile responsive

## What Needs Data

- Supabase tables must exist for user submissions to save
- Currently shows initial 5 hardcoded spots (works offline)
- Once tables exist, all submissions save to cloud

---

## Next Steps

1. **Bob**: Add DNS CNAME in Cloudflare
2. **Bob**: Run schema.sql in Supabase
3. **Johnny**: Add remaining spots (8 from itinerary + researched list)
4. **Johnny**: Build Sample Itinerary section
5. **Johnny**: Add comments/ratings UI
6. **Johnny**: Build trip planner
