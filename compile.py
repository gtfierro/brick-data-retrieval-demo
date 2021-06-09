import brickschema
import time
import sys

filename = sys.argv[1]

bldg = brickschema.Graph(load_brick_nightly=True)
bldg.load_file(filename)

# "compile" the graph
print("Compiling graph")
t1 = time.time()
bldg.expand("brick")
print(f"Finished compiling (Took {time.time() - t1} seconds)")

bldg.serialize(f"compiled-{filename}", format="turtle")
