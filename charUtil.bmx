Function IsSpace( char )
	Return char<=Asc(" ") And char<>Asc("~n")
End Function

Function IsAlpha( char )
	Return ( char>=Asc("a") And char<=Asc("z") ) Or ( char>=Asc("A") And char<=Asc("Z") )
End Function

Function IsNumeric( char )
	Return char>=Asc("0") And char<=Asc("9")
End Function

Function IsAlphaNumeric( char )
	Return IsAlpha( char ) Or IsNumeric( char )
End Function
