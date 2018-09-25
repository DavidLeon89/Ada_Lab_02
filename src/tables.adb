with Ada.Text_IO; use Ada.Text_IO;
package body Tables is

   function Minimum (Table : T_Table) return Integer is
   begin
      return Table'First;
   end Minimum;

   function Linear_Search
     (Table : T_Table; Value : Integer) return Integer is
   begin
      for n in Table'Range loop
         if Value = Table(n) then
            return n;
         end if;
      end loop;
      return Table'First;
   end Linear_Search;

   function Binary_Search
     (Table : T_Table; Value : Integer) return Integer is
      --medio: Integer := ((Table'Last + 1) - Table'First)/2;
      medio: Integer := (Table'Length)/2;
      --ultimo: Integer := Table'Last;
   begin

      Put_Line(Table'First'img & medio'Img  & Table(medio)'img & Table'Last'img);
      if Value < Table(medio) then
         Put_Line(Value'Img & " es menor que " & medio'img);
         return Binary_Search(Table(Table'First..(medio -1) ), Value);
      elsif Value > Table(medio) then
         Put_Line(Value'Img & " es mayor que " & medio'img);

         medio := medio + 1;
         Put_Line("LLamada con " & medio'img & Table'Last'img);
         return Binary_Search(Table(3 .. 5), Value);
      else
         return medio;
      end if;
   end Binary_Search;

   procedure Swap
     (A : in out Integer;
      B : in out Integer) is
   begin
      null;
   end Swap;

   procedure Swap
     (Table : in out T_Table;
      Pos_1 : in     Natural;
      Pos_2 : in     Natural) is
   begin
      null;
   end Swap;

   procedure Bubble_Sort (Table : in out T_Table) is
   begin
      null;
   end Bubble_Sort;

   procedure Selection_Sort (Table : in out T_Table) is
   begin
      null;
   end Selection_Sort;

   procedure Insertion_Sort (Table : in out T_Table) is
   begin
      null;
   end Insertion_Sort;

   procedure Shell_Sort (Table : in out T_Table) is
   begin
      null;
   end Shell_Sort;

   procedure Merge_Sort (Table : in out T_Table) is
   begin
      null;
   end Merge_Sort;

   procedure Quick_Sort (Table : in out T_Table) is
   begin
      null;
   end Quick_Sort;

end Tables;
