--  This package is supposed to provide support for strings management.
--  In order to become familiar with Ada you can try implementing these
--  subprograms (including the corresponding unit tests in the file
--  test_strings.adb). You can also extend this package adding more
--  subprograms!

package Strings is
   type T_String (Max : Positive) is private;

   procedure Clear     (Str : in out T_String);
   procedure Init      (Str : in out T_String; Value : String);
   function  To_String (Str : T_String) return String;

   function Are_Equal
     (S1 : T_String;
      S2 : T_String) return Boolean;

   function Search
     (Str   : T_String;
      Value : Character) return Natural;
   --  Scanning the text Str from left to right, return the index of
   --  the first occurrence of Value. Return 0 if the character is
   --  not found.

   function Search
     (Str   : T_String;
      Value : String) return Natural;
   --  Scanning the text Str from left to right, return the index of
   --  the first occurrence of Value. Return 0 if the character is
   --  not found.

private

   type T_String (Max : Positive) is record
      Buffer : String (1 .. Max);
      Length : Natural;
   end record;

end Strings;
