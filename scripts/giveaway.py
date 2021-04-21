#!/bin/python

import random

# 1 entry / challenge post like
post_likes = [
"fikebritt",
"doc9024_",
"svenka_your_fired",
"trey_mo_",
"worldwidesparring",
"levikeyser",
"happyketo101",
"musclefit_jjoah",
"gstripeshunter",
"fikebritt",
"becks2023",
"doc9024_",
"cravesaves"
]

# 3 entries
telegram_members = [
"Rick White", 
"Zach Moore", 
"Melvin Chia", 
"Rita Haedicke", 
"Hannah", 
"Joe Balderamma", 
"Cameron Turner", 
"Shaina", 
"Frank Lampard"
]
telegram = telegram_members + telegram_members + telegram_members

# 5 entries
podcast_reviewers = []
podcast = podcast_reviewers + podcast_reviewers + podcast_reviewers + podcast_reviewers + podcast_reviewers

entries = post_likes + telegram + podcast
winners = random.sample(entries, 2)
print(winners)

# Winners:
# 2021-02: Rita Haedicke (telegram), diabadassbeth (instagram)
# 2021-03: Joe Balderama (telegram), doc9024_ (instagram)
