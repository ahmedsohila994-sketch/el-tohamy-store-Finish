EL TOHAMY - SHARED PRODUCTS

1) Upload the contents of el_tohamy_v3 to the root of your GitHub repo.
2) In Supabase SQL Editor, run SUPABASE-PERMISSIONS.sql once.
3) Open /admin/ and use PIN 2580.
4) The first admin load seeds the 4 demo products into Supabase if the table is empty.
5) Adding/editing/deleting a product writes to Supabase, so all visitors/devices see the same catalog.

IMPORTANT SECURITY NOTE:
This quick demo uses the public anon key in the frontend and public CRUD RLS policies so you can finish setup without a backend. The Admin PIN is only a client-side demo gate and is NOT production-grade security. For a real client deployment, replace it with Supabase Auth + authenticated RLS (or a server-side admin API) before selling it as a secure CMS.
