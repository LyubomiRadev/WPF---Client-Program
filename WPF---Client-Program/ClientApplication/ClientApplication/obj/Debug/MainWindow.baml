   M S B A M L   `   `   `  ����L  HClientApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:ClientApplication.ViewModelsClientApplication.ViewModels  5	   	   "    ClientApplication.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   BMyViewModel*clr-namespace:ClientApplication.ViewModels     5	   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ 
MainWindow��5   	   $	��370��6   $	��525��6)    � 	Resources 5
      2   ,ClientApplication.ViewModels.ClientViewModel   DT��%   &	          5   
   6&   5      .��5      �  � DataContext# [  6   ���#27bbd7 � ColumnDefinitions 5   
   �� 5      $	��85* �6   �� 5      $��0* �6   �� 5      $
��308* �6   �� 5      $��2* �6   �� 5      �� 5      $
��121* �6    � RowDefinitions 5   
   �� 5      $��25 �6   �� 5      $��* �6   .+�5   
   �� $��0��6     AddButtonStl#��[ 5       $	��Add��5!      $��25��5"      $	��100��5#      $
��Left=�5$      $��3��5%   0   ��6   �� *
AddCommand+60   &   System.Windows.Controls.DataGrid  5'   
   $��Right=�5)      $��Stretch=�5*      
�������   AutoGenerateColumns .  $��58,33,58,58q�5/      $	��409��50      $��6��51      $��1��52       �� SelectedItem 5-      �� *SelectedElement+��5.      �� *MyCollection+ 53      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType	 �� Property
 �� Value��%�   '        �� 54      "  6   .�55      �� 	 � ��

 ���@�63   �� 56      	 � ��$
 SemiBold"�63   �� 57      	 � ��$
 0,0,1,2q�68   �� 58      	 � ��

 �   �64   �� 59      	 � ��$
 Center=�6C   5:      5;         Columns 5=      0  *System.Windows.Controls.DataGridTextColumn  5>      ,  &System.Windows.Controls.DataGridColumn   Header$ 
First Name��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 5@   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5?   %   �� *	FirstName+5@   %     5B      $ 	Last Name��6%   $ * 5D   %    5C   %   �� *
LastName+5D   %   5G      �� 5I   
   $��1��6   $��Update��5J        UpdateButtonStl#��[ 5K      $��25��5L      $	��100��5M      $��Bottom=�5N      $��Right=�5O      $��2��5P      $��0,246,45,18q�5Q      $��3��5S      ��5R      �� *UpdateCommand+5S      �� 5U   
   $��1��6   $��Delete��5V        DeleteButtonStl#��[ 5W      $��25��5X      $	��100��5Y      $��Bottom=�5Z      $��Right=�5[      $��4��5\      $��2��5]      $��0,246,57,18q�5^      ��5_      �� *DeleteCommand+5a      5b      