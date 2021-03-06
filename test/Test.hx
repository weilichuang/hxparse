import haxe.Resource;
class Test {
	
	static function main() {
		function run() {
			var i = new haxe.io.StringInput( Resource.getString('HaxeFile') );
			var parser = new HaxeParser(i, '/');
			return parser.parse();
		}
		var r = haxe.Timer.measure(run);
		trace(r.pack);
		trace(r.decls);
		
		var parser = new PrintfParser(new haxe.io.StringInput("Valu$$e: $-050.2f kg"));
		trace(parser.parse());
		
		var parser = new JSONParser(new haxe.io.StringInput('{ "key": [true, false, null], "other\tkey": [12, 12.1, 0, 0.1, 0.9e, 0.9E, 9E-] }'), "jsontest");
		trace(parser.parse());
	}
}