function createGrid() {
	var grid = new Array();

	for (var i = 0; i < 10; i++) {
			document.write("|__|");
		for (var j = 0; j < 10; j++) {
			document.write("|__|\n")
		}
	}
	

}

createGrid();