   M S B A M L   `   `   `  ����L  HClientApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:ClientApplication.ViewsClientApplication.Views  5   	   -    'ClientApplication.Views.AddClientWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:ClientApplication.Views     5   	   -   5          �Name$	  ACW��5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ AddClientWindow��5	   	   $	��300��6!   $	��300��6.    � 	Resources 5       �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers	 P� Property
 P� Value��%�  '��       �� 5   
   " ��6   .�5      ��  � ��
 �/���6+   �� 5       � ��
 �   �6,   �� 5       � ��$ 2q�60   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   
���   �$��1q�6_   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5      	 �@J�IsMouseOver
 . . �5      ��  � �� �#3bff0063   5      5      5       .��5!      �  � RowDefinitions 5"   
   �� 5#      $��20 �6   �� 5$      $��* �6   �� 5%      $	��20  �6   �� 5&      $��* �6   �� 5'      $��* �6   .+�5)   
   �� $��First name:��6   $
��Bold"�6'   $��0��69   $��20��6F   ���#27bbd76R   �� 5*   
   ���#27bbd7
���   �$��1��6;   ��6H   �� *	FirstName+�� 5+   
   $��
Last name:��6   $
��Bold"�6&   $��2��69   $��20��6F   ���#27bbd76R   �� 5,   
   ���#27bbd7
���   �$��3��6;   ��6H   �� *
LastName+�� 5-   
   $��4��6   $	��Add��6   ��5.      �� *
AddCommand+��5/      ��  �� ElementName$	 ACW��51      52      