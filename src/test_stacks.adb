with Ada.Text_IO; use Ada.Text_IO;
with Assertions;  use Assertions;
with Stacks;      use Stacks;

procedure Test_Stacks is

   procedure Test_1 is
      Msg   : constant String := "Test_1: Empty stack";
      Stack : Stack_Type;
   begin
      Assert_True (Is_Empty (Stack), Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1;

   procedure Test_2 is
      Msg   : constant String := "Test_2: Stack with 1 element";
      Stack : Stack_Type;
   begin
      Push (Stack, 1);
      Assert_False (Is_Empty (Stack), "Test_2: Stack with 1 element");
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2;

begin
   Put_Line ("********************* Test_Stacks");
   Test_1;
   Test_2;
end Test_Stacks;
