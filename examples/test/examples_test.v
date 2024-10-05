import os

const examples = {
	'grapheme': '\
🇩🇪   [0, 8]
🏳️‍🌈   [8, 22]
!   [22, 23]
'
	'sentence': '\
(This is sentence 1.0. ) [0, 22]
(And this is sentence two.) [22, 47]
'
	'word':     '\
Hello	[0, 5]
,	[5, 6]
 	[6, 7]
world	[7, 12]
!	[12, 13]
'
}

fn test_examples() {
	for example, reference in examples {
		res := os.execute('${os.quoted_path(@VEXE)} run examples/${example}')
		assert res.exit_code == 0
		assert res.output == reference
	}
}
