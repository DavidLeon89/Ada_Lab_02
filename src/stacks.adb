package body Stacks is

   procedure Clear (Stack : out Stack_Type) is
   begin
      null;
   end Clear;

   function Is_Empty (Stack : Stack_Type) return Boolean is
   begin
      return True;
   end Is_Empty;

   function Is_Full  (Stack : Stack_Type) return Boolean is
   begin
      return True;
   end Is_Full;

   procedure Push (Stack : in out Stack_Type;
                   Item  : in     Integer) is
   begin
      null;
   end Push;

   procedure Pop (Stack : in out Stack_Type;
                  Item  :    out Integer) is
   begin
      null;
   end Pop;

   function Top (Stack : Stack_Type) return Integer is
   begin
      return -1;
   end Top;

end Stacks;
