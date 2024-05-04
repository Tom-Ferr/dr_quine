use std::fs::File;
use std::io::prelude::*;
macro_rules! S {() => {"use std::fs::File;\nuse std::io::prelude::*;\nmacro_rules! S {{() => {{{:?}}}}}\nmacro_rules! O {{() => {{\"Grace_kid.rs\"}}}}\nmacro_rules! FT {{() => {{fn main() -> std::io::Result<()> {{{{let mut file = File::create(O!())?;write!(&mut file,S!(), S!())?;}}Ok(())}}}}}}\n/*\n\tcomment\n*/\nFT!();"}}
macro_rules! O {() => {"Grace_kid.rs"}}
macro_rules! FT {() => {fn main() -> std::io::Result<()> {{let mut file = File::create(O!())?;write!(&mut file,S!(), S!())?;}Ok(())}}}
/*
	comment
*/
FT!();