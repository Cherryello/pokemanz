import glob

collision_bin_names = glob.glob('tilesets/*_collision.bin')
for collision_bin_name in collision_bin_names:

	collision_asm_name = collision_bin_name.replace('.bin', '.asm')
	print(collision_bin_name, '=>', collision_asm_name)

	with open(collision_bin_name, 'rb') as bin:
		data = bin.read()

	with open(collision_asm_name, 'w', encoding='utf8') as asm:
		blocks = (data[i:i+4] for i in range(0, len(data), 4))
		for (i, quadrants) in enumerate(blocks):
			quadrants = ', '.join('$%02x' % q for q in quadrants)
			line = '\ttilecoll %s ; %02x\n' % (quadrants, i)
			asm.write(line)