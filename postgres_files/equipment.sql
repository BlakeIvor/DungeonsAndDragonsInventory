--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)


--
-- Data for Name: dndinventory_equipment; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.dndinventory_equipment (id, category, name, price, weight, description) FROM stdin;
93	Containers	Pot, Iron	2.00	10.0	\N
6	Common Items	Abacus	2.00	2.0	\N
7	Common Items	Bedroll	1.00	2.0	\N
8	Common Items	Bell	1.00	0.0	\N
9	Common Items	Block and Tackle	1.00	5.0	\N
10	Common Items	Book	25.00	5.0	\N
11	Common Items	Candle	0.01	0.0	\N
12	Common Items	Blanket	0.50	5.0	\N
13	Common Items	Chain (10 ft)	5.00	10.0	\N
14	Common Items	Chalk (1 pc)	0.01	0.0	\N
15	Common Items	Component Pouch	25.00	2.0	\N
16	Common Items	Fishing Tackle	1.00	4.0	\N
17	Common Items	Grappling Hook	2.00	4.0	\N
18	Common Items	Hammer	1.00	3.0	\N
19	Common Items	Hourglass	25.00	1.0	\N
20	Common Items	Ink (1 oz)	10.00	0.0	\N
21	Common Items	Ink Pen	0.02	0.0	\N
22	Common Items	Ladder (10 ft)	0.10	25.0	\N
23	Common Items	Lock	10.00	1.0	\N
24	Common Items	Magnifying Glass	100.00	0.0	\N
25	Common Items	Manacles	2.00	6.0	\N
26	Common Items	Mess Kit	0.20	1.0	\N
27	Common Items	Miner's Pick	2.00	10.0	\N
28	Common Items	Paper (1 pc)	0.20	0.0	\N
29	Common Items	Parchment (1 sheet)	0.10	0.0	\N
30	Common Items	Perfume (vial)	5.00	0.0	\N
31	Common Items	Piton	0.05	0.2	\N
32	Common Items	Pole (10 ft)	0.05	7.0	\N
33	Common Items	Ram, Portable	4.00	35.0	\N
34	Common Items	Rations (1 day)	0.50	2.0	\N
35	Common Items	Hemp Rope (50 ft)	1.00	10.0	\N
36	Common Items	Silk Rope (50 ft)	10.00	5.0	\N
37	Common Items	Sealing Wax	0.50	0.0	\N
38	Common Items	Shovel	2.00	5.0	\N
39	Common Items	Signal Whistle	0.05	0.0	\N
40	Common Items	Signet Ring	5.00	0.0	\N
41	Common Items	Sledgehammer	2.00	10.0	\N
42	Common Items	Spellbook	50.00	3.0	\N
43	Common Items	Spikes - Iron	0.10	0.5	\N
44	Common Items	Spyglass	1000.00	1.0	\N
45	Common Items	Tent - 2 person	2.00	20.0	\N
46	Common Items	Whetstone	0.01	1.0	\N
3	Usable Items	Alchemist's Fire (flask)	50.00	1.0	\N
5	Martial Ranged Weapons	Blowgun	10.00	1.0	\N
4	Martial Ranged Weapons	Net	1.00	3.0	\N
2	Simple Melee Weapons	Light Hammer	2.00	2.0	\N
1	Simple Melee Weapons	Club	0.10	2.0	\N
47	Usable Items	Acid (vial)	25.00	1.0	\N
48	Usable Items	Antitoxin (vial)	50.00	0.0	\N
49	Usable Items	Ball Bearings (bag of 1000)	1.00	2.0	\N
50	Usable Items	Caltrops (bag of 20)	1.00	2.0	\N
51	Usable Items	Climber's Kit	25.00	12.0	\N
52	Usable Items	Crowbar	2.00	5.0	\N
53	Usable Items	Healer's Kit	5.00	3.0	\N
54	Usable Items	Holy Water (flask)	25.00	1.0	\N
55	Usable Items	Hunting Trap	5.00	25.0	\N
56	Usable Items	Lamp	0.50	1.0	\N
57	Usable Items	Lantern - Bullseye	10.00	2.0	\N
58	Usable Items	Lantern - Hooded	5.00	2.0	\N
59	Usable Items	Oil (flask)	0.10	1.0	\N
60	Usable Items	Poison, basic (vial)	100.00	0.0	\N
61	Usable Items	Potion of Healing (common)	50.00	0.5	\N
62	Usable Items	Tinderbox	0.50	1.0	\N
63	Usable Items	Torch	0.01	1.0	\N
64	Clothes	Usable Items	0.50	3.0	\N
65	Clothes	Costume	5.00	4.0	\N
66	Clothes	Fine Clothes	15.00	6.0	\N
67	Clothes	Robes	1.00	4.0	\N
68	Clothes	Traveler's Clothes	2.00	4.0	\N
69	Arcane Focus	Crystal	10.00	1.0	\N
70	Arcane Focus	Orb	20.00	3.0	\N
71	Arcane Focus	Rod	10.00	2.0	\N
72	Arcane Focus	Staff	5.00	4.0	\N
73	Arcane Focus	Wand	10.00	1.0	\N
74	Druidic Focus	Sprig of Mistletoe	1.00	0.0	\N
75	Druidic Focus	Totem	1.00	0.0	\N
76	Druidic Focus	Wooden Staff	5.00	4.0	\N
77	Druidic Focus	Yew Wand	10.00	1.0	\N
78	Holy Symbol	Amulet	5.00	1.0	\N
79	Holy Symbol	Emblem	5.00	0.0	\N
80	Holy Symbol	Reliquary	5.00	2.0	\N
81	Containers	Backpack	2.00	5.0	\N
82	Containers	Barrel	2.00	70.0	\N
83	Containers	Basket	0.40	2.0	\N
84	Containers	Bucket	0.05	2.0	\N
85	Containers	Case, Crossbow Bolt	1.00	1.0	\N
86	Containers	Case, Map/Scroll	1.00	1.0	\N
87	Containers	Chest	5.00	25.0	\N
88	Containers	Flash	0.02	1.0	\N
89	Containers	Tankard	0.02	1.0	\N
90	Containers	Glass Bottle	2.00	2.0	\N
91	Containers	Jug	0.02	4.0	\N
92	Containers	Pitcher	0.02	4.0	\N
94	Containers	Pouch	0.50	1.0	\N
95	Containers	Quiver	1.00	1.0	\N
96	Containers	Sack	0.01	0.5	\N
97	Containers	Vial	1.00	0.0	\N
98	Containers	Waterskin	0.20	5.0	\N
106	Light Armor	Padded Armor	5.00	8.0	\N
107	Light Armor	Leather Armor	10.00	10.0	\N
108	Light Armor	Studded Leather Armor	45.00	13.0	\N
109	Medium Armor	Hide	10.00	12.0	\N
110	Medium Armor	Chain Shirt	50.00	20.0	\N
102	Equipment Packs	Entertainer's Pack	40.00	0.0	Backpack, a bedroll, 2 costumes, 5 candles, 5 days of rations, a waterskin, and a disguise kit.
104	Equipment Packs	Priest's Pack	19.00	0.0	Backpack, a blanket, 10 candles, a tinderbox, an alms box, 2 blocks of incense, a censer, vestments, 2 days of rations, and a waterskin.
111	Medium Armor	Scale Mail	50.00	45.0	\N
112	Medium Armor	Spiked Armor	75.00	45.0	\N
113	Medium Armor	Breastplate	400.00	20.0	\N
114	Medium Armor	Halfplate Armor	750.00	40.0	\N
115	Heavy Armor	Ring Mail	30.00	40.0	\N
116	Heavy Armor	Chain Mail	75.00	55.0	\N
117	Heavy Armor	Splint Armor	200.00	60.0	\N
118	Heavy Armor	Plate Armor	1500.00	65.0	\N
119	Shield	Shield	10.00	6.0	\N
120	Simple Melee Weapons	Dagger	2.00	1.0	\N
121	Simple Melee Weapons	Greatclub	0.20	10.0	\N
122	Simple Melee Weapons	Handaxe	5.00	2.0	\N
123	Simple Melee Weapons	Javelin	0.50	2.0	\N
124	Simple Melee Weapons	Mace	5.00	4.0	\N
125	Simple Melee Weapons	Quarterstaff	0.20	4.0	\N
126	Simple Melee Weapons	Sickle	1.00	2.0	\N
127	Simple Melee Weapons	Spear	1.00	3.0	\N
128	Simple Ranged Weapons	Crossbow, light	25.00	5.0	\N
129	Simple Ranged Weapons	Dart	0.05	0.2	\N
130	Simple Ranged Weapons	Shortbow	25.00	2.0	\N
131	Simple Ranged Weapons	Sling	0.10	0.0	\N
132	Martial Melee Weapons	Battleaxe	10.00	4.0	\N
133	Martial Melee Weapons	Flail	10.00	2.0	\N
134	Martial Melee Weapons	Glaive	20.00	6.0	\N
135	Martial Melee Weapons	Greataxe	30.00	7.0	\N
136	Martial Melee Weapons	Greatsword	50.00	6.0	\N
137	Martial Melee Weapons	Halberd	20.00	6.0	\N
138	Martial Melee Weapons	Lance	10.00	6.0	\N
139	Martial Melee Weapons	Longsword	15.00	3.0	\N
140	Martial Melee Weapons	Maul	10.00	10.0	\N
141	Martial Melee Weapons	Morningstar	15.00	4.0	\N
142	Martial Melee Weapons	Pike	5.00	18.0	\N
143	Martial Melee Weapons	Rapier	25.00	2.0	\N
144	Martial Melee Weapons	Scimitar	25.00	3.0	\N
145	Martial Melee Weapons	Shortsword	10.00	2.0	\N
146	Martial Melee Weapons	Trident	5.00	4.0	\N
147	Martial Melee Weapons	War pick	5.00	2.0	\N
148	Martial Melee Weapons	Warhammer	15.00	2.0	\N
149	Martial Melee Weapons	Whip	2.00	3.0	\N
150	Martial Ranged Weapons	Crossbow, hand	75.00	3.0	\N
151	Martial Ranged Weapons	Crossbow, heavy	50.00	18.0	\N
152	Martial Ranged Weapons	Longbow	50.00	2.0	\N
153	Ammunition	Arrows (20)	1.00	1.0	\N
154	Ammunition	Blowgun needles (50)	1.00	1.0	\N
155	Ammunition	Crossbow bolt (20)	1.00	1.5	\N
156	Ammunition	Sling Bullets (20)	0.04	1.5	\N
157	Martial Melee Weapons	Hoopak	1.00	2.0	\N
158	Martial Melee Weapons	Double-Bladed Scimitar	100.00	6.0	\N
159	Renaissance Items	Pistol	250.00	3.0	\N
161	Renaissance Items	Bullets (10)	3.00	2.0	\N
162	Renaissance Items	Bomb	150.00	1.0	\N
163	Renaissance Items	Gunpowder, keg	250.00	20.0	\N
164	Renaissance Items	Gunpowder, powder horn	35.00	2.0	\N
165	Trade Goods	Wheat (1 lb)	0.01	1.0	\N
166	Trade Goods	Chicken	0.02	3.0	\N
167	Trade Goods	Flour (1 lb)	0.02	1.0	\N
168	Trade Goods	Salt (1 lb)	0.05	1.0	\N
169	Trade Goods	Iron (1 lb)	0.10	1.0	\N
170	Trade Goods	Canvas	0.10	0.0	\N
171	Trade Goods	Copper (1 lb)	0.50	1.0	\N
172	Trade Goods	Cotton Cloth	0.50	0.0	\N
173	Trade Goods	Goat	1.00	200.0	\N
174	Trade Goods	Ginger (1 lb)	1.00	1.0	\N
175	Trade Goods	Sheep	2.00	160.0	\N
176	Trade Goods	Cinnamon (1 lb)	2.00	1.0	\N
177	Trade Goods	Pepper (1 lb)	2.00	1.0	\N
178	Trade Goods	Pig	3.00	400.0	\N
179	Trade Goods	Cloves (1 lb)	3.00	1.0	\N
180	Trade Goods	Silver (1 lb)	5.00	1.0	\N
181	Trade Goods	Linen	5.00	0.0	\N
182	Trade Goods	Cow	10.00	1200.0	\N
183	Trade Goods	Silk	10.00	0.0	\N
184	Trade Goods	Saffron (1 lb)	15.00	1.0	\N
185	Trade Goods	Ox	15.00	2000.0	\N
186	Trade Goods	Gold (1 lb)	50.00	1.0	\N
187	Trade Goods	Platinum (1 lb)	500.00	1.0	\N
188	Gemstones	Azurite	10.00	0.0	\N
189	Gemstones	Banded Agate	10.00	0.0	\N
190	Gemstones	Blue Quartz	10.00	0.0	\N
191	Gemstones	Eye Agate	10.00	0.0	\N
192	Gemstones	Hematite	10.00	0.0	\N
193	Gemstones	Lapis Lazuli	10.00	0.0	\N
194	Gemstones	Malachite	10.00	0.0	\N
195	Gemstones	Moss Agate	10.00	0.0	\N
196	Gemstones	Obsidian	10.00	0.0	\N
198	Gemstones	Tigers Eye	10.00	0.0	\N
197	Gemstones	Rhodochrosite	10.00	0.0	\N
199	Gemstones	Turquoise	10.00	0.0	\N
200	Gemstones	Bloodstone	50.00	0.0	\N
201	Gemstones	Carnelian	50.00	0.0	\N
202	Gemstones	Chalcedony	50.00	0.0	\N
203	Gemstones	Chrysoprase	50.00	0.0	\N
204	Gemstones	Citrine	50.00	0.0	\N
205	Gemstones	Jasper	50.00	0.0	\N
206	Gemstones	Moonstone	50.00	0.0	\N
207	Gemstones	Onyx	50.00	0.0	\N
208	Gemstones	Quartz	50.00	0.0	\N
209	Gemstones	Sardonyx	50.00	0.0	\N
210	Gemstones	Star Rose Quartz	50.00	0.0	\N
211	Gemstones	Zircon	50.00	0.0	\N
212	Gemstones	Amber	100.00	0.0	\N
213	Gemstones	Amethyst	100.00	0.0	\N
214	Gemstones	Chrysoberyl	100.00	0.0	\N
215	Gemstones	Coral	100.00	0.0	\N
216	Gemstones	Garnet	100.00	0.0	\N
217	Gemstones	Jade	100.00	0.0	\N
218	Gemstones	Jet	100.00	0.0	\N
219	Gemstones	Pearl	100.00	0.0	\N
220	Gemstones	Spinel	100.00	0.0	\N
221	Gemstones	Tourmaline	100.00	0.0	\N
222	Gemstones	Alexandrite	500.00	0.0	\N
223	Gemstones	Aquamarine	500.00	0.0	\N
224	Gemstones	Black Pearl	500.00	0.0	\N
225	Gemstones	Blue Spinel	500.00	0.0	\N
226	Gemstones	Peridot	500.00	0.0	\N
227	Gemstones	Topaz	500.00	0.0	\N
228	Gemstones	Black Opal	1000.00	0.0	\N
229	Gemstones	Blue Sapphire	1000.00	0.0	\N
230	Gemstones	Emerald	1000.00	0.0	\N
231	Gemstones	Fire Opal	1000.00	0.0	\N
232	Gemstones	Opal	1000.00	0.0	\N
233	Gemstones	Star Ruby	1000.00	0.0	\N
234	Gemstones	Star Sapphire	1000.00	0.0	\N
235	Gemstones	Yellow-Sapphire	1000.00	0.0	\N
236	Gemstones	Black Sapphire	5000.00	0.0	\N
237	Gemstones	Diamond	5000.00	0.0	\N
238	Gemstones	Jacinth	5000.00	0.0	\N
239	Gemstones	Ruby	5000.00	0.0	\N
249	Poisons	Purple Worm Poison	2000.00	0.0	\N
160	Renaissance Items	Musket	500.00	10.0	\N
253	Poisons	Wyvern Poison	1200.00	0.0	This poison must be harvested from a dead or incapacitated wyvern. A creature subjected to this poison must make a DC 15 Constitution saving throw, taking 24 (7d6) poison damage on a failed save, or half as much damage on a successful one.
252	Poisons	Truth Serum	150.00	0.0	A creature subjected to this poison must succeed on a DC 11 Constitution saving throw or become poisoned for 1 hour. The poisoned creature can't knowingly speak a lie, as if under the effect of a zone of truth spell.
251	Poisons	Torpor	600.00	0.0	A creature subjected to this poison must succeed on a DC 15 Constitution saving throw or become poisoned for 4d6 hours. The poisoned creature is incapacitated.
250	Poisons	Serpent Venom	200.00	0.0	This poison must be harvested from a dead or incapacitated giant poisonous snake. A creature subjected to this poison must succeed on a DC 11 Constitution saving throw, taking 10 (3d6) poison damage on a failed save, or half as much damage on a successful one.
248	Poisons	Pale Tincture	250.00	0.0	A creature subjected to this poison must succeed on a DC 16 Constitution saving throw or take 3 (1d6) poison damage and become poisoned. The poisoned creature must repeat the saving throw every 24 hours, taking 3 (1d6) poison damage on a failed save. Until this poison ends, the damage the poison deals can't be healed by any means.
247	Poisons	Oil of Taggit	400.00	0.0	A creature subjected to this poison must succeed on a DC 13 Constitution saving throw or become poisoned for 24 hours. The poisoned creature is unconscious. The creature wakes up if it takes damage.
246	Poisons	Midnight Tears	1500.00	0.0	A creature that ingests this poison suffers no effect until the stroke of midnight. If the poison has not been neutralized before then, the creature must succeed on a DC 17 Constitution saving throw, taking 31 (9d6) poison damage on a failed save, or half as much damage on a successful one.
245	Poisons	Malice	250.00	0.0	A creature subjected to this poison must succeed on a DC 15 Constitution saving throw or become poisoned for 1 hour. The poisoned creature is blinded.
244	Poisons	Essence of Ether	300.00	0.0	A creature subjected to this poison must succeed on a DC 15 Constitution saving throw or become poisoned for 8 hours. The poisoned creature is unconscious. The creature wakes up if it takes damage or if another creature takes an action to shake it awake.
243	Poisons	Drow Poison	200.00	0.0	This poison is typically made only by the drow, and only in a place far removed from sunlight. A creature subjected to this poison must succeed on a DC 13 Constitution saving throw or be poisoned for 1 hour. If the saving throw fails by 5 or more, the creature is also unconscious while poisoned in this way. The creature wakes up if it takes damage.
242	Poisons	Carrion Crawler Mucus	200.00	0.0	This poison must be harvested from a dead or incapacitated carrion crawler. A creature subjected to this poison must succeed on a DC 13 Constitution saving throw or be poisoned for 1 minute. The poisoned creature is paralyzed. The creature can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success.
241	Poisons	Burnt Othur Fumes	500.00	0.0	A creature subjected to this poison must succeed on a DC 13 Constitution saving throw or take 10 (3d6) poison damage, and must repeat the saving throw at the start of each of its turns. On each successive failed save, the character takes 3 (1d6) poison damage. After three successful saves, the poison ends.
240	Poisons	Assassin's Blood	150.00	0.0	A creature subjected to this poison must make a DC 10 Constitution saving throw. On a failed save, it takes 6 (1d12) poison damage and is poisoned for 24 hours. On a successful save, the creature takes half damage and isn't poisoned.
254	Artisan's Tools	Alchemist's Supplies	50.00	8.0	\N
255	Artisan's Tools	Brewer's Supplies	20.00	9.0	\N
256	Artisan's Tools	Calligrapher's Supplies	10.00	5.0	\N
259	Artisan's Tools	Cartographer's Tools	15.00	6.0	\N
260	Artisan's Tools	Carpenter's Tools	8.00	6.0	\N
261	Artisan's Tools	Cobbler's Tools	5.00	5.0	\N
262	Artisan's Tools	Cook's Utensils	1.00	8.0	\N
263	Artisan's Tools	Glassblower's Tools	30.00	5.0	\N
264	Artisan's Tools	Jeweler's Tools	25.00	2.0	\N
265	Artisan's Tools	Leatherworker's Tools	5.00	5.0	\N
266	Artisan's Tools	Mason's Tools	10.00	8.0	\N
267	Artisan's Tools	Painter's Supplies	10.00	5.0	\N
268	Artisan's Tools	Potter's Tools	10.00	3.0	\N
269	Artisan's Tools	Smith's Tools	20.00	8.0	\N
270	Artisan's Tools	Tinker's Tools	50.00	10.0	\N
271	Artisan's Tools	Weaver's Tools	1.00	5.0	\N
272	Artisan's Tools	Woodcarver's Tools	1.00	5.0	\N
273	Gaming Set	Dice Set	0.10	0.0	\N
274	Gaming Set	Dragonchess Set	1.00	0.5	\N
275	Gaming Set	Playing Card Set	0.50	0.0	\N
276	Gaming Set	Three-Dragon Ante Set	1.00	0.0	\N
277	Musical Instrument	Bagpipes	30.00	6.0	\N
278	Musical Instrument	Drum	6.00	3.0	\N
279	Musical Instrument	Dulcimer	25.00	10.0	\N
280	Musical Instrument	Flute	2.00	1.0	\N
281	Musical Instrument	Lute	35.00	2.0	\N
282	Musical Instrument	Lyre	30.00	2.0	\N
283	Musical Instrument	Horn	3.00	2.0	\N
284	Musical Instrument	Pan Flute	12.00	2.0	\N
285	Musical Instrument	Shawm	2.00	1.0	\N
286	Musical Instrument	Viol	30.00	1.0	\N
99	Equipment Packs	Burglar's Pack	16.00	0.0	Backpack, a bag of 1,000 ball bearings, 10 feet of string, a bell, 5 candles, a crowbar, a hammer, 10 pitons, a hooded lantern, 2 flasks of oil, 5 days rations, a tinderbox and a waterskin. The pack also has 50 feet of hempen rope strapped to the side of it.
100	Equipment Packs	Diplomat's Pack	39.00	0.0	Chest, 2 cases for maps and scrolls, a set of fine clothes, a bottle of ink, an ink pen, a lamp, 2 flasks of oil, 5 sheets of paper, a vial of perfume, sealing wax, and soap.
101	Equipment Packs	Dungeoneer's Pack	12.00	0.0	Backpack, a crowbar, a hammer, 10 pitons, 10 torches, a tinderbox, 10 days of rations, and a waterskin. The pack also has 50 feet of hempen rope strapped to the side of it.
103	Equipment Packs	Explorer's Pack	10.00	0.0	Backpack, a bedroll, a mess kit, a tinderbox, 10 torches, 10 days of rations, and a waterskin. The pack also has 50 feet of hempen rope strapped to the side of it.
105	Equipment Packs	Scholar's Pack	40.00	0.0	Backpack, a book of lore, a bottle of ink, an ink pen, 10 sheets of parchment, a little bag of sand, and a small knife.
287	Tools	Disguise Kit	25.00	3.0	This pouch of cosmetics, hair dye, and small props lets you create disguises that change your physical appearance. Proficiency with this kit lets you add your proficiency bonus to any ability checks you make to create a visual disguise.
288	Tools	Forgery Kit	15.00	5.0	This small box contains a variety of papers and parchments, pens and inks, seals and sealing wax, gold and silver leaf, and other supplies necessary to create convincing forgeries of physical documents. Proficiency with this kit lets you add your proficiency bonus to any ability checks you make to create a physical forgery of a document.
289	Tools	Herbalism Kit	5.00	3.0	This kit contains a variety of instruments such as clippers, mortar and pestle, and pouches and vials used by herbalists to create remedies and potions. Proficiency with this kit lets you add your proficiency bonus to any ability checks you make to identify or apply herbs. Also, proficiency with this kit is required to create antitoxin and Potions of Healing
290	Tools	Navigator's Tools	25.00	2.0	This set of instruments is used for navigation at sea. Proficiency with navigator's tools lets you chart a ship's course and follow navigation charts. In addition, these tools allow you to add your proficiency bonus to any ability check you make to avoid getting lost at sea.
291	Tools	Poisoner's Kit	50.00	2.0	A poisoner's kit includes the vials, chemicals, and other equipment necessary for the creation of poisons. Proficiency with this kit lets you add your proficiency bonus to any ability checks you make to craft or use poisons.
292	Tools	Thieves' Tools	25.00	1.0	This set of tools includes a small file, a set of lock picks, a small mirror mounted on a metal handle, a set of narrow-bladed scissors, and a pair of pliers. Proficiency with these tools lets you add your proficiency bonus to any ability checks you make to disarm traps or open locks.
293	Mounts	Camel	50.00	480.0	\N
294	Mounts	Donkey	8.00	420.0	\N
295	Mounts	Mule	8.00	420.0	\N
296	Mounts	Elephant	200.00	1320.0	\N
297	Mounts	Horse, Draft	50.00	540.0	\N
298	Mounts	Horse, Riding	75.00	480.0	\N
299	Mounts	Mastiff	25.00	195.0	\N
300	Mounts	Pony	30.00	225.0	\N
301	Mounts	Warhorse	400.00	540.0	\N
302	Drawn Vehicles	Carriage	100.00	600.0	\N
303	Drawn Vehicles	Cart	15.00	200.0	\N
304	Drawn Vehicles	Chariot	250.00	100.0	\N
305	Drawn Vehicles	Sled	20.00	300.0	\N
306	Drawn Vehicles	Wagon	35.00	400.0	\N
307	Waterborne Vehicles	Galley	30000.00	0.0	\N
308	Waterborne Vehicles	Keelboat	3000.00	0.0	\N
309	Waterborne Vehicles	Longship	10000.00	0.0	\N
310	Waterborne Vehicles	Rowboat	50.00	0.0	\N
311	Waterborne Vehicles	Sailing Ship	10000.00	0.0	\N
312	Waterborne Vehicles	Warship	25000.00	0.0	\N
313	Food	Banquet (per person)	10.00	0.0	\N
314	Food	Cheese, Hunk	0.10	0.0	\N
315	Food	Meat, Chunk	0.30	0.0	\N
\.
