/*


 var y = switch (el) {
            // match "say {word} to {name}" where name is specific name
            case ["say", word, "to", name = "Sophia" | "Emma" | "Olivia"]: 
              word;
            // match "say {word} to {name}"
            case ["say", word, "to", name]: 
              word;

            // match anything
            case _: 
              "unknown command";
          }

*/

using StringTools;

class Test {


    public static macro function test() {

      var fn_name = ("fn_" + Date.now().getTime())
        .replace(".","")
        .replace("+","");

      var s = 'function $fn_name(input:String) {
          var el = input.split(" ");

          var y = switch (el) {
            // match "say {word} to {name}" where name is specific name
            case ["say", word, "to", name = "Sophia" | "Emma" | "Olivia"]: 
              word;
            // match "say {word} to {name}"
            //case ["say", word, "to", name]: 
            //  word;

            // match anything
            case _: 
              "unknown command";
          }

      }';

      var expr = haxe.macro.Context.parse(s,haxe.macro.Context.currentPos());

      return expr;

    }
}