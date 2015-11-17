# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.create!([
  {name: "South Street", description: "A bit trendy now, but some remaining stores, restaurants, cafes, clubs & bars that still maintain a bit of the old bohemian/punk/alternative flavor that this locality used to be known for.", address: "South St from 33rd St to Front St, Philadelphia, PA"},
  {name: "St. Mark's Place", description: "Somewhat edgy strip to roam encompassing alternative & varied vendors, storefronts, restaurants & bars. It was still quite the cool area to wander for unique & eclectic things back in 2008!", address: "8th St from Sixth Ave to Avenue D, New York, NY"},
  {name: "Carytown", description: "Urban retail district of unique shops, variety of restaurants & assorted businesses originally established in the late '30s. Fun to wander, plus the Byrd Theatre is a great place to catch a cheap flick!", address: "Cary St from I195/Rt76 to Boulevard, Richmond, VA"},
  {name: "Georgetown", description: "Eclectic blend of commercial, entertainment & residential district. TONS to see & quite the assortment of shops for all tastes... Commander Salamander - though now gone - was the retail staple of alternative culture in the area.", address: "Intersection of Wisconsin Ave & M St spanning about 0.5 mi in all directions, Washington, DC"},
  {name: "Fell's Point", description: "Great way to spend an evening. Enormous selection of eateries & bars in addition to diverse retailers & services: get a tattoo, buy a surf board or expand your music collection all within a couple-block walk!", address: "S Broadway & Thames St intersection & roughly 3 block span, Baltimore, MD"},
  {name: "Adamstown", description: "Adamstown, better-known as \"Antiques Capital U.S.A.\", is *the* place to go for antique/collectible enthusiasts. This stretch of Rt272 is lined with flea markets & antique shops & co-ops, so prepare to spend the day. Local eateries can be found to satisfy the appetite you'll get while hunting, too.", address: "N Reading Rd (Rt272), spanning Reamstown to Adamstown, PA"}
])
