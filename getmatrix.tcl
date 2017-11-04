source rmsd_matrix.tcl

foreach f [glob input/*/*.pdb] {
	mol load pdb $f
	set outfile [string map {/ "_"} $f]
	rmsd_matrix -o $outfile
	mol delete all
}
