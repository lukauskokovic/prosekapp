import std.stdio;
import std.file;
import std.conv : to;
void main(){
    auto File = File("predmeti.txt");
    auto range = File.byLine();
    int ocene = 0;
    float ukupno = 0;
    foreach (line; range)
    {
        writeln(line);
        int ocena;
        readf("%d\n", &ocena);
        ukupno += ocena;
        ocene++;
    }
    float prosek = ukupno/cast(float)ocene;
    writeln("Prosek: " ~ to!string(prosek));
    readln();
}