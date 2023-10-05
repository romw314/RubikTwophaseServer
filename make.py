import os;

try:
	os.mkdir("twophase");
except FileExistsError:
	print("the twophase directory already exists: skipped creting it");

import twophase.pruning;
import twophase.symmetries;
import twophase.coord;
