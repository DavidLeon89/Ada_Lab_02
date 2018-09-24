
package body Strings is

   procedure Clear (Str : in out T_String) is
   begin
      null;
   end Clear;

   procedure Init (Str : in out T_String; Value : String) is
   begin
      null;
   end Init;

   function To_String (Str : T_String) return String is
   begin
      return "";
   end To_String;

   function Are_Equal
     (S1 : T_String;
      S2 : T_String) return Boolean
   is
   begin
      return False;
   end Are_Equal;

   function Search
     (Str   : T_String;
      Value : Character) return Natural
   is
   begin
      return 0;
   end Search;

   function Search
     (Str   : T_String;
      Value : String) return Natural
   is
   begin
      return 0;
   end Search;

end Strings;
