with import <nixpkgs> {};

mkShell {
    packages = [
        (texlive.combine {
         inherit(texlive)
         scheme-small

         rsfs
         appendix
         siunitx
         polski
         amsmath
         titlesec
         wrapfig
         multirow
         emptypage
         enumitem
         threeparttable
         acronym
         lipsum
         bigfoot
         biblatex
         xstring
         csquotes
         easylist
         placeins

# Add other LaTeX libraries (packages) here as needed, e.g:
# stmaryrd amsmath pgf
# build tools
         latexmk
         ;
         })
    ltex-ls
        texlab

    ];

}
# stdenv.mkDerivation {
#     name = "dev-environment"; 
#     buildInputs = [ 
# 		];
# }
