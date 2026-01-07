# lua-gtav-enums
A curated collection of GTA V engine enumerations translated for Lua usage, aimed at clean, readable, and maintainable scripting

I decided to release this publicly. This repository contains my collection of GTA V enumerations. The main reason is that escrow no longer truly protects scripts, meaning these definitions can be extracted anyway.

No more magic numbers maintain clear, precise, and readable code for you and your team.

# Before
`TaskPlayAnim(0, dictionary, "idle_a", 8.0, -8.0, -1, 16, 0, 0, 0, 0)`

# After
`TaskPlayAnim(0, dictionary, "idle_a", 8.0, -8.0, -1, ANIMATION_FLAGS.AF_DEFAULT | ANIMATION_FLAGS.AF_UPPERBODY, 0, 0, 0, 0)`
