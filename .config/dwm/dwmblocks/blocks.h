static const Block blocks[] = {
//   Icon    Command                          Update Interval     Update Signal
    { "  ", "~/.local/bin/checkupdates | wc -l",                 400,               0 },
    { "",    "~/.local/bin/brightness",                           2,                0 },
    { "",    "~/.local/bin/volume",                               2,                0 },
    { "",    "date '+ %d/%m/%Y   %H:%M%p'",        5,                0 },
};

// Sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "  ";
static unsigned int delimLen = 5;
