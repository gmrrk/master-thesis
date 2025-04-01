with import <nixpkgs> {};

mkShell {
    packages = [
        (texlive.combine {
         inherit(texlive)
         scheme-small

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
         xstring

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
