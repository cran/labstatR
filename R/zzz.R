.First.lib <-
function(lib, pkg)
{
    if(!require("stats", quietly = TRUE))
		requite(ts)
    mylib <- dirname(system.file(package = "labstatR"))
    ver <- packageDescription("labstatR", lib = mylib)["Version"]
    txt <- c("\n",
             paste(sQuote("labstatR"), "version:", ver),
             "\n",
             paste(sQuote("labstatR"),
                   "Insieme di funzioni di supporto al volume",
				   "'Laboratorio di Statistica con R',", 
				   "Iacus-Masarotto, MacGraw-Hill Italia, 2003."),
             "\n",
             paste("Si veda",
                   sQuote("library(help=\"labstatR\")"),
                   "per i comandi disponibili."),
             "\n")
    if(interactive() || getOption("verbose"))
        writeLines(strwrap(txt, indent = 4, exdent = 4))
}
