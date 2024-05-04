use std::fs::File;
use std::io::prelude::*;
use std::process::Command;
macro_rules! s {() => {"use std::fs::File;\nuse std::io::prelude::*;\nuse std::process::Command;\nmacro_rules! s {{() => {{{:?}}}}}\nfn main() -> std::io::Result<()>\n{{\n\tlet args: Vec<String> = std::env::args().collect();\n\tlet mut i: i32 = {};\n\tif i <= 0 {{\n\t\treturn Err(std::io::Error::new(std::io::ErrorKind::Other, \"i must be positive\"));\n\t}}\n\tif args[0].chars().nth(7) == Some('_') {{\n\t\ti -= 1;\n\t}}\n\tlet tpl = format!(\"./Sully_{{}}.rs\", i);\n\t{{\n\t\tlet mut file = File::create(&tpl)?;\n\t\twrite!(&mut file,s!(), s!(), i)?;\n\t}}\n\tCommand::new(\"rustc\").arg(&tpl).output()?;\n\tlet tpl_executable = format!(\"./Sully_{{}}\", i);\n\tCommand::new(&tpl_executable).output()?;\n\tOk(())\n}}"}}
fn main() -> std::io::Result<()>
{
	let args: Vec<String> = std::env::args().collect();
	let mut i: i32 = 5;
	if i <= 0 {
		return Err(std::io::Error::new(std::io::ErrorKind::Other, "i must be positive"));
	}
	if args[0].chars().nth(7) == Some('_') {
		i -= 1;
	}
	let tpl = format!("./Sully_{}.rs", i);
	{
		let mut file = File::create(&tpl)?;
		write!(&mut file,s!(), s!(), i)?;
	}
	Command::new("rustc").arg(&tpl).output()?;
	let tpl_executable = format!("./Sully_{}", i);
	Command::new(&tpl_executable).output()?;
	Ok(())
}