-- Run this once in Supabase SQL Editor.
-- This makes the public storefront able to read the catalog and the demo Admin able to write it.
-- IMPORTANT: this is suitable for a portfolio/demo site, not a production admin security model.

alter table public.products enable row level security;

drop policy if exists "Public can read products" on public.products;
drop policy if exists "Authenticated admins can insert" on public.products;
drop policy if exists "Authenticated admins can update" on public.products;
drop policy if exists "Authenticated admins can delete" on public.products;

drop policy if exists "Public can insert products" on public.products;
drop policy if exists "Public can update products" on public.products;
drop policy if exists "Public can delete products" on public.products;

create policy "Public can read products"
on public.products for select
using (true);

create policy "Public can insert products"
on public.products for insert
to anon, authenticated
with check (true);

create policy "Public can update products"
on public.products for update
to anon, authenticated
using (true)
with check (true);

create policy "Public can delete products"
on public.products for delete
to anon, authenticated
using (true);
