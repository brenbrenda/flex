%{
/* Builds "scanner.c". */
/* The scanner itself is a no-op. A successful compilation is all we want. */
#include <stdio.h>
#include <stdlib.h>
#include "config.h"

%}

%option 8bit outfile="scanner.c" prefix="FOO"
%option nounput nomain noyywrap 
%option warn


%%

.|\n|\r  {

    /* Compile, but do not execute the following code. */
    if( 0) {
        FOO_create_buffer((FILE*)0,0);
        FOO_delete_buffer((YY_BUFFER_STATE)0);
        FOO_flush_buffer((YY_BUFFER_STATE)0);
        FOO_init_buffer((YY_BUFFER_STATE)0,(FILE*)0);
        FOO_load_buffer_state();
        FOO_scan_buffer((char*)0,(yy_size_t)0);
        FOO_scan_bytes((yyconst char*)0, 0);
        FOO_scan_string((yyconst char*)0);
        FOO_switch_to_buffer((YY_BUFFER_STATE)0);
        FOOin   = (FILE*)0;
        FOOout  = (FILE*)0;
        FOOleng = 0;
        FOOlex();
        FOOrestart((FILE*)0);
        FOOtext = (char*)0;
    }
 }
%%


int
main ( int argc, char** argv )
{
    FOOin = stdin;
    FOOout = stdout;
    FOOlex();
    printf("TEST RETURNING OK.\n");
    return 0;
}
