macro_rules! s {() => {"macro_rules! s {{() => {{{:?}}}}}\nfn x(){{print!(s!(), s!());}}\n/*\n\tglobal comment\n*/\nfn main(){{\n/*\n\tmain comment\n*/\n\tx();\n}}"}}
fn x(){print!(s!(), s!());}
/*
	global comment
*/
fn main(){
/*
	main comment
*/
	x();
}