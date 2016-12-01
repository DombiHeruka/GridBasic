import "charutil.bmx"

print "GridBasic WIP"

function GridBasicFileToList:TList( fileName$ )
    Local lineList:TList = CreateList()
    file = openfile( fileName )

    if not file runtimeerror "could not open " + fileName

    while not eof(file)
        Local currentLine$ = string( readline( file ) )
        lineList.addLast( currentLine )
    wend
    closestream file

    return lineList
End Function

sourceList:TList = GridBasicFileToList( "test.gridbasic" )

line$ = string(sourceList.first())

function GridCoordinateStringFromLine$( line$ )
    currentIndex = line.find("x")
    currentIndex:+1
    while not IsAlpha(line[currentIndex])
        currentIndex:+1
    wend
    return line[..currentIndex]
end function

function DrawGrid()
    SetColor 173,251,250
    X = 0
    repeat
        DrawLine X,0,X,500
        X:+50
    until x > 500
    Y = 0
    repeat
        DrawLine 0,Y,500,Y
        Y:+50
    until Y > 500
end function

print GridCoordinateStringFromLine(line)

Graphics 501,501,0

while not KeyDown(Key_Escape)
    DrawGrid()
    flip
    cls
wend
rem draw program grid
