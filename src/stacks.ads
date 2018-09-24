--  This package is supposed to provide support for the management of
--  stacks of integer values, and allows you to become familiar with
--  the use of private types in Ada.
--
--  In order to become familiar with Ada you can try implementing these
--  subprograms (including the corresponding unit tests in the file
--  test_stacks.adb). You can also extend this package adding more
--  subprograms!


package Stacks is
   Max : constant := 100;

   type Stack_Type is private;

   function Is_Empty (Stack : Stack_Type) return Boolean;
   function Is_Full  (Stack : Stack_Type) return Boolean;

   procedure Clear (Stack : out Stack_Type);

   procedure Push (Stack : in out Stack_Type;
                   Item  :        Integer);

   procedure Pop (Stack : in out Stack_Type;
                  Item  :    out Integer);

   function Top (Stack : Stack_Type) return Integer;

   Stack_Empty : exception;
   Stack_Full  : exception;

private
   subtype Index_Type  is Natural range 0 .. Max;
   type Stack_Contents is array (Index_Type) of Integer;

   type Stack_Type is record
      Contents : Stack_Contents;
      Length   : Index_Type;
   end record;

end Stacks;

