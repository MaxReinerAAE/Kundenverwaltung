   M S B A M L   `   `   `  ����D  @ViewModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null8*clr-namespace:ViewModel;assembly=ViewModel	ViewModel  5   	   N JCustomerApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:CustomerApplicationCustomerApplication 5   	   D @DataModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null8*clr-namespace:DataModel;assembly=DataModel	DataModel 5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	   9!clr-namespace:CustomerApplicationCustomerApplication 5   	   .   (CustomerApplication.CustomerDetailWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ;this*clr-namespace:ViewModel;assembly=ViewModel     5   	   3local!clr-namespace:CustomerApplication     5   	   @	datamodel*clr-namespace:DataModel;assembly=DataModel     5   	   9System&clr-namespace:System;assembly=mscorlib     5   	   8
Converters!clr-namespace:CustomerApplication     5   	   -   5          �Name$  C��5   	   $��870px��5   >   $��870px��6L   $��960px��6]   $��960px��6l   ��.  � Title$ Kunden AAE Detailansicht��6�    � DataContext 5
      !   ViewModel.CustomerViewModel  5   
   .��5      ]� .+�5   
   � -   5         �Name$ CustomerGrid��5       6%   ��  �� Path$ .� �� ValidatesOnDataErrors .  � 	Resources 5         StatusValues S� 
MethodName S� 
ObjectType  System.Enum	 S� MethodParameters
 M� TypeName&   CustomerApplication.EnumItemList  valueStatusEnumList   EnumType  DataModel.Status   SortBy"  CustomerApplication.EnumItem   Value   DisplayValue   Text��%�  &	        &	 p     S� 5      $ GetNames��5      "  6+   	 5      M� 5      $
 datamodel:Status��6!   5        5      "  6F   $ Value=�6k     5      $ Fällig��6*   $	 Red��69   $ Fällig��6L     5      $ 	In_Arbeit��6*   $ Orange��6<   $ 	In Arbeit��6R     5      $ Erledigt��6*   $ Green��6;   $ Erledigt��6P   5      5      .+�5      �� $	��Top=�6   $
��Auto��6.    �� CornerRadius$ 5��5      ._�5!      ��  �� Orientation$ Vertical=�6%   $
��Auto��6=   $��10q�6K   .+�5"      �� $ 5��6%   
�������$��1q�6I    �� Padding$ 0,0,0,10q�6]   ._�5#   "   �� $ 
Horizontal=�6-   $
��Auto��6F   $
��Auto��6U   $
��10pxq�6b   .+�5$   &   �� $ Vertical=�61   $��400px��6K   $
��Auto��6Y   .+�5&   *   �� $��0 0 8 0q�61   $ 5��6B   ��5'   .   
� 5(   2    
� Center$ 0.5,1&�6F    
� GradientOrigin$	 0,1&�6U    �� Opacity$	 0.3Q�6j    
� RadiusX$	 0.8Q�6x    
� RadiusY$	 0.8Q�6�   .��5)   6   �  � Offset$ 1Q�6C    � Color$ 	#AAFFD455��6N   � 5*   6   $ 1Q�6C   $ 
WhiteSmoke��6N   5+   3   5-   +   �� 5.   "   -   5        $��txtIDHeadline��5.   (   $
��14px(�6=   $	��ID:��6M   $
��Left=�6[   $	��Top=�6w   $��30��6�   $��2q�6�   �� 5/   "   -   5        $��txtID��5/   *   $
��14px(�67   $��380px��6G   {�.  $
��Left=�6g   $��30��6  $��2q�6  ��6�   �� *ID+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� .  �� NotifyOnValidationError . 6  �� 50   "   -   5        $"��txtKundenbezeichnungHeadline��50   (   $
��14px(�6L   $��Kundenbezeichnung:��6\   $
��Left=�6y   $	��Top=�6�   $��30��6�   $��2q�6�   �� 51   "   -   5        $��txtKundenbezeichnung��51   *   $
��14px(�6F   $��380px��6V   $
��Left=�6d   $��30��6  $��2q�6  ��6   �� *Kundenbezeichnung+$ TwoWay=�$ PropertyChanged=� .  . 6  �� 52   "   
���  ��$��5,0,0,0q�6�   ��6,   �� $2 ,(Validation.Errors).CurrentItem.ErrorContent� �� ElementName$ txtKundenbezeichnung��6�   �� 53   "   -   5        $��txtOrtHeadline��53   (   $
��14px(�6>   $
��Ort:��6N   $
��Left=�6]   $	��Top=�6y   $��30��6�   $��2q�6�   �� 54   "   -   5        $��txtOrt��54   *   $
��14px(�68   $��380px��6H   $
��Left=�6V   $��30��6�   $��2q�6�   ��6q   �� *Ort+$ TwoWay=�$ PropertyChanged=� .  . 6�   �� 55   *   -	   5        $��LblBundesland��55   0   $
��14px(�6E   $��Bundesland:��6U   $
��Left=�6k   $	��Top=�6�   $��30��6�   $��2q�6�   �� 56   "   -
   5        $��txtBundesland��56   *   $��380px��6?   $
��14px(�6M   $
��Left=�6]   $��30��6�   $��2q�6  ��6x   �� *
Bundesland+$ TwoWay=�$ PropertyChanged=� .  . 6  �� 57   *   -   5        $��
LblAdresse��57   0   $
��14px(�6B   $��Adresse:��6R   $
��Left=�6e   $	��Top=�6�   $��30��6�   $��2q�6�   �� 58   "   -   5        $��
txtAdresse��58   *   $
��14px(�6<   $��380px��6L   $
��Left=�6[   $��30��6�   $��2q�6  ��6w   �� *	Adresse+$ TwoWay=�$ PropertyChanged=� .  . 6  �� 59   *   -   5        $��LblTelefonnummer1��59   0   $
��14px(�6I   $��Telefonnummer 1:��6Y   $
��Left=�6t   $	��Top=�6�   $��30��6�   $��2q�6�   �� 5:   "   -   5        $��txtTelefonnummer1��5:   *   $��380px��6C   $
��14px(�6R   $
��Left=�6b   $��30��6	  $��2q�6  ��6}   �� *Telefonnummer_1+$ TwoWay=�$ PropertyChanged=� .  . 6  �� 5;   "   
���  ��$��5,0,0,0q�6�   ��6,   �� $2 ,(Validation.Errors).CurrentItem.ErrorContent�$ txtTelefonnummer1��6�   �� 5<   "   -   5        $��LblTelefonnummer2��5<   (   $
��14px(�6A   $��Telefonnummer 2:��6Q   $
��Left=�6l   $	��Top=�6�   $��30��6�   $��2q�6�   �� 5=   "   -   5        $��txtTelefonnummer2��5=   *   $��380px��6C   $
��14px(�6R   $
��Left=�6b   $��30��6	  $��2q�6  ��6}   �� *Telefonnummer_2+$ TwoWay=�$ PropertyChanged=� .  . 6  �� 5>   *   -   5        $��LblEmail��5>   0   $
��14px(�6@   $��E-Mail:��6P   $
��Left=�6b   $	��Top=�6~   $��30��6�   $��2q�6�   �� 5?   "   -   5        $��txtEmail��5?   *   $��380px��6:   $
��14px(�6I   $
��Left=�6Y   $��30��6�   $��2q�6  ��6t   �� *Email+$ TwoWay=�$ PropertyChanged=� .  . 6  �� 5@   "   
���  ��$��5,0,0,0q�6�   ��6,   �� $2 ,(Validation.Errors).CurrentItem.ErrorContent�$ txtEmail��6�   �� 5A   "   -   5        $��LblAnsprechpersonTitle��5A   (   $
��14px(�6F   $��Ansprechpartner Titel:��6V   $
��Left=�6w   $	��Top=�6�   $��30��6�   $��2q�6�   �� 5B   "   -   5        $��txtAnsprechpersonTitle��5B   *   $��380px��6H   $
��14px(�6W   $
��Left=�6g   $��30��6  $��2q�6  ��6�   �� *AnsprechpersonTitle+$ TwoWay=�$ PropertyChanged=� .  . 6  �� 5C   "   
���  ��$��5,0,0,0q�6�   ��6,   �� $2 ,(Validation.Errors).CurrentItem.ErrorContent�$ txtAnsprechpersonTitle��6�   �� 5D   "   -   5        $��LblAnsprechpersonVorname��5D   (   $
��14px(�6H   $��Ansprechpartner Vorname:��6X   $
��Left=�6{   $	��Top=�6�   $��30��6�   $��2q�6�   �� 5E   "   -   5        $��txtAnsprechpersonVorname��5E   *   $��380px��6J   $
��14px(�6Y   $
��Left=�6i   $��30��6  $��2q�6(  ��6�   �� $ AnsprechpersonVorname�$ TwoWay=�$ PropertyChanged=� .  . 6(  �� 5F   *   -   5        $��LblAnsprechpersonNachname��5F   0   $
��14px(�6Q   $��Ansprechpartner Nachname:��6a   $
��Left=�6�   $	��Top=�6�   $��30��6�   $��2q�6�   �� 5G   "   -   5        $��txtAnsprechpersonNachname��5G   *   $��380px��6K   $
��14px(�6Z   $
��Left=�6j   $��30��6  $��2q�6*  ��6�   �� $ AnsprechpersonNachname�$ TwoWay=�$ PropertyChanged=� .  . 6*  5I   '   �� 5J   &   $ Vertical=�61   $
��Left=�6I   $��390px��6e   .+�5K   "   �� -   5        $��LblÄnderungsdatum��5K   (   $
��14px(�6A   $��Änderungsdatum:��6Q   $
��Left=�6k   $	��Top=�6�   $��30��6�   $��2q�6�   �� 5L   "   -   5        $��txtÄnderungsdatum��5L   *   $��380px��6C   $
��14px(�6R   $
��Left=�6b   $��30��6  $��2q�6  ��6}   �� $ Änderungsdatum�$ TwoWay=�$ PropertyChanged=� .  . 6  �� 5N   "   -   5        $��LblIn_bearbeitung��5N   (   $
��14px(�6B   $��In Bearbeitung:��6R   $
��Left=�6l   $	��Top=�6�   $��30��6�   $��2q�6�   (  "CustomerApplication.CustomComboBox  5P   *      
StatusName$ In_Bearbeitung��6�    6@   �� $ .�   StatusValue 6_   �� *In_Bearbeitung+6�   �� 5R   *   -   5        $��
LblVorname��5R   0   $
��14px(�6B   $��Bearbeiter Vorname:��6R   $
��Left=�6p   $	��Top=�6�   $��30��6�   $��2q�6�   �� 5S   "   -   5        $��
txtVorname��5S   *   $��380px��6<   $
��14px(�6L   $
��Left=�6\   $��30��6   $��2q�6  {�.  ��6w   �� *UserVorname+$ TwoWay=�$ PropertyChanged=� .  . 6  �� 5T   *   -   5        $��LblNachname��5T   0   $
��14px(�6C   $��	Nachname:��6S   $
��Left=�6g   $	��Top=�6�   $��30��6�   $��2q�6�   �� 5U   "   -   5        $��txtNachname��5U   *   $��380px��6=   $
��14px(�6L   $
��Left=�6\   $��30��6  $��2q�6  {�.  ��6w   �� *UserNachname+$ TwoWay=�$ PropertyChanged=� .  . 6  �� 5V   *   -    5        $��LblCmbUnterlagen_gesendet��5V   0   $
��14px(�6S   $��Unterlagen gesendet:��6c   $
��Left=�6�   $	��Top=�6�   $��30��6�   $��2q�6�     5X   *   $ Unterlagen_gesendet��6k    6?   �� *Unterlagen_gesendet+ 6�   �� $ .��� 5Z   *   -!   5        $��LblAngebot_geschickt��5Z   0   $
��14px(�6M   $��Angebot geschickt:��6]   $
��Left=�6z   $	��Top=�6�   $��30��6�   $��2q�6�     5\   *   $ Angebot_geschickt��6i    6?   �� *Angebot_geschickt+ 6�   �� $ .��� 5^   *   -"   5        $&�� LblInteresse_Kooperationsvertrag��5^   0   $
��14px(�6Y   $$��Interesse Kooperationsvertrag:��6i   $
��Left=�6�   $	��Top=�6�   $��30��6�   $��2q�6�     5`   *   $# Interesse_Kooperationsvertrag��6u    6?   �� *Interesse_Kooperationsvertrag+ 6�   �� $ .��� 5b   *   -#   5        $��LblAbgeschlossen��5b   0   $
��14px(�6I   $��Abgeschlossen:��6Y   $
��Left=�6r   $	��Top=�6�   $��30��6�   $��2q�6�     5d   *   $ Abgeschlossen��6e    6?   �� *Abgeschlossen+ 6�   �� $ .��� 5f   *   -$   5        $��
LblNotizen��5f   0   $
��14px(�6B   $��Notizen:��6R   $
��Left=�6e   $	��Top=�6�   $��30��6�   $��2q�6�   �� 5g   "   -%   5        $��
txtNotizen��5g   *   $��380px��6<   $
��14px(�6K   $
��Left=�6[   $��62��6�   $��2q�6    �� TextWrapping$
  Wrap=�6  ! �� AcceptsReturn! . ��6v   �� *	Notizen+$ TwoWay=�$ PropertyChanged=� .  . 6(  �� 5h   *   -&   5        $��LblAngebotsnummer��5h   0   $
��14px(�6I   $��Angebotsnummer:��6Y   $
��Left=�6s   $	��Top=�6�   $��30��6�   $��2q�6�   �� 5i   "   -'   5        $��txtAngebotsnummer��5i   *   $��380px��6C   $
��14px(�6R   $
��Left=�6b   $��30��6	  $��2,2,0,2q�6  ��6}   �� *Angebotsnummer+$ TwoWay=�$ PropertyChanged=� .  . 6  �� 5j   *   -(   5        $��LblAbklärung��5j   0   $
��14px(�6D   $��Abklärung:��6T   $
��Left=�6i   $	��Top=�6�   $��30��6�   $��2q�6�   �� 5k   "   -)   5        $��txtAbklärung��5k   *   $��380px��6>   $
��14px(�6M   $
��Left=�6]   $��62��6�   $��2q�6  $
  Wrap=�6  ! . ��6x   �� *
Abklärung+$ TwoWay=�$ PropertyChanged=� .  . 6,  5l   '   5n   #   5o      �� 5p      $ 
Horizontal=�6)   $	��0 5q�6B   .+�5q      �� $��	Speichern��6&   $��80��6�   $��30��6�   $��
10,15,0,15q�6�   ��6:   �� " �� RelativeSource" �� *FindAncestor+# �� AncestorType$# WindowL���6�   �� *SaveDataCommand+6�   �� 5r      -*   5        $��	Abbrechen��5r   &   $��90��6R   $��30��6]   $��
10,15,0,15q�6i   5t      5u      5v      5w      5x      5y      