--  This package is supposed to provide support for the management of
--  vectors composed of integers.
--
--  In order to become familiar with Ada you can try implementing these
--  subprograms (including the corresponding unit tests in the file
--  test_tables.adb). You can also extend this package adding more
--  subprograms!

package Tables is

   type T_Table is array (Natural range <>) of Integer;

   function Minimum (Table : T_Table) return Integer;
   --  Returns the smallest value stored in the table

   function Linear_Search
     (Table : T_Table; Value : Integer) return Integer;
   --  Searchs for Value performing a linear search.
   --  Returns Integer'First if the specified value is not
   --  found in the table.

   function Binary_Search
     (Table : T_Table; Value : Integer) return Integer;
   --  Searchs for Value performing a binary search.
   --  Returns Integer'First if the specified value is not
   --  found in the table.

   procedure Swap
     (A : in out Integer;
      B : in out Integer);
   --  Swap the contents of the two parameters

   procedure Swap
     (Table : in out T_Table;
      Pos_1 : in     Natural;
      Pos_2 : in     Natural);
   --  Swap the contents of Table located at index Pos_1 and Pos_2

   procedure Bubble_Sort (Table : in out T_Table);
   --  Sort the table using the bubble algorithm

   procedure Selection_Sort (Table : in out T_Table);
   --  Sort the table using the Selection algorithm

   procedure Insertion_Sort (Table : in out T_Table);
   --  Sort the table using the Insertion algorithm

   procedure Shell_Sort (Table : in out T_Table);
   --  Sort the table using the Shell Sort algorithm

   procedure Merge_Sort (Table : in out T_Table);
   --  Sort the table using the Merge Sort algorithm

   procedure Quick_Sort (Table : in out T_Table);
   --  Sort the table using the QuickSort algorithm

end Tables;
