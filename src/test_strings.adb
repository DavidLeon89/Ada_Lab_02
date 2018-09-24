with Ada.Text_IO; use Ada.Text_IO;
with Assertions;  use Assertions;
with Strings;     use Strings;

procedure Test_Strings is

   procedure Test_1 is
      Msg : constant String := "Test_1: Empty string";
      Str : T_String (80);
   begin
      Assert_True (To_String (Str) = "", Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1;

begin
   Put_Line ("********************* Test_Strings");
   Test_1;
end Test_Strings;
