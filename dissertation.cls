\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dissertation}[30/01/2025 v1.0 RUG Style by Tianjian, modified from MB]

\newif\if@nativefonts
\DeclareOption{nativefonts}{\@nativefontstrue}
\newif\if@print
\DeclareOption{print}{\@printtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass[10pt]{book}

%% Import packages
\RequirePackage{fontawesome5}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
% \RequirePackage{amssymb}
% \RequirePackage{txfonts}
% \RequirePackage{mathptmx}

%% English is the default language, but Dutch is used for some sections.
\RequirePackage[dutch,english]{babel}
\RequirePackage{calc}
\RequirePackage[nooneline,footnotesize]{caption}
%\RequirePackage{chapterbib}
\RequirePackage{etaremune}
\RequirePackage{fancyhdr}
\RequirePackage[flushmargin,hang]{footmisc}

% Chinese support for LuaLaTeX
\RequirePackage{luatexja}
\RequirePackage{luatexja-fontspec}

\RequirePackage{geometry} % No dvips so lualatex behaves
%\RequirePackage[dvips]{geometry}
%\RequirePackage[dvips]{graphicx}
\RequirePackage[bookmarks=false,hidelinks]{hyperref}
\RequirePackage{rotating}
\RequirePackage{tablefootnote}
\RequirePackage{lettrine}
\RequirePackage{metalogo}
\RequirePackage[sectionbib,numbers,sort&compress]{natbib}
\RequirePackage[noindentafter]{titlesec}
\RequirePackage{titletoc}
%\RequirePackage[nottoc]{tocbibind}
\RequirePackage[x11names,dvipsnames,svgnames,table,xcdraw]{xcolor}
%\RequirePackage[table]{xcolor}
\RequirePackage{tikz}

\RequirePackage{unicode-math}

\RequirePackage{svg}

% Chinese fonts (files too big, so I did not use local fonts. Inconsistency/error may occur across platforms)
% \setmainjfont[Path=fonts/noto-cjk/]{NotoSerifCJKsc-Regular.otf}
% \setsansjfont[Path=fonts/noto-cjk/]{NotoSansCJKsc-Regular.otf}
% \setmonojfont[Path=fonts/noto-cjk/]{NotoSansMonoCJKsc-Regular.otf}
\setmainjfont{Noto Sans CJK SC}
\setsansjfont{Noto Sans CJK SC}
\setmonojfont{Noto Sans Mono CJK SC}

% English fonts
\setmainfont[Path = fonts/libertinus/, ItalicFont=libertinusserif-italic.otf, BoldFont=libertinusserif-bold.otf, BoldItalicFont=libertinusserif-bolditalic.otf]{libertinusserif-regular.otf}
\setsansfont[Path = fonts/libertinus/, BoldFont=libertinussans-bold.otf, ItalicFont=libertinussans-italic.otf]{libertinussans-regular.otf}
\setmathfont[
  Path = fonts/libertinus/,
  BoldFont = libertinusmath-regular.otf
]{libertinusmath-regular.otf}
\setmonofont[
  Scale = MatchLowercase,
  Path = fonts/inconsolata/,
  UprightFont = *-Regular.ttf,
  BoldFont = *LGCmarkup-Bold.otf,
  ItalicFont = *LGCmarkup-Italic.otf,
  BoldItalicFont = *LGCmarkup-BoldItal.otf,
]{Inconsolata}

%% The default style for text is Tahoma (sans-serif).
%\renewcommand*\familydefault{\sfdefault}
%% The default style for titles is Bookman Old Style (serif).
\def\titlefont{\rmfamily}
\def\titleshape{}
\if@print
    \def\titlestyle{\titlefont\titleshape}
    %\def\titlestyle{\titlefont\titleshape\bfseries}
\else
    \def\titlestyle{\titlefont\titleshape}
\fi
\def\headerstyle{\titlestyle}

\RequirePackage{paralist}
\RequirePackage[noabbrev]{cleveref}
\Crefname{enumi}{Step}{Steps}
\crefname{enumi}{step}{steps}
\RequirePackage{pbox}
\RequirePackage{tabularx}
\RequirePackage{soul}
\RequirePackage{array}
\RequirePackage{wrapfig}
\RequirePackage{pifont}
\RequirePackage{textcomp}
\RequirePackage{slashbox}
\RequirePackage{mdframed}
\RequirePackage{titlesec}
\RequirePackage{fontspec}
\newfontfamily\tablefont{Arial}

\mdfsetup{skipbelow=3pt,skipabove=3pt,innerleftmargin=2.5pt,innerrightmargin=2.5pt,innertopmargin=2.5pt,innerbottommargin=2.5pt}
\let\oldmdframed\mdframed
\def\mdframed{\oldmdframed\noindent\ignorespaces}

\RequirePackage{microtype}
\RequirePackage{multirow}

\definecolor{light-gray}{gray}{0.95}
\definecolor{mgreen}{HTML}{009901}

\RequirePackage{listings}

\lstset{ %
  backgroundcolor=\color{light-gray},   % choose the background color; you must add \RequirePackage{color} or \RequirePackage{xcolor}
  %  keywordstyle=\color{blue},       % keyword style
  language=C,                 % the language of the code
  numbers=left,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=5pt,                   % how far the line-numbers are from the code
  %  rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  showspaces=false,                % show spaces everywhere adding particular underscores; it
  stepnumber=1,                    % the step between two line-numbers. If it's 1, each line will be numbered
  numberstyle=\tiny,
  breaklines        = true,
  breakatwhitespace = true,
  breakindent       = 2ex,
  escapechar        = *,
  basicstyle=\scriptsize\ttfamily
}

% Setup of cref/lstlisting
\renewcommand{\lstlistingname}{Example}
\crefname{lstlisting}{Example}{Examples}

% *** GRAPHICS RELATED PACKAGES ***
%
\RequirePackage{subfig}
%% Make figures appear in the same section (to avoid a bunch of figures at the end of a section)
\RequirePackage[section]{placeins}
% declare the path(s) where your graphic files are
\graphicspath{{figs/},{asats/figs/},{last-line/figs/},{travis-analysis/figs/},{watchdog-tse/figs/},{debugging/figs/},{debugging/img/}}
% and their extensions so you won't have to specify these with
% every instance of \includegraphics
% \DeclareGraphicsExtensions{.pdf,.jpeg,.png}


\RequirePackage{enumitem}
%% \setlist{before=\setlength{\rightmargin}{0.17cm}}

%% \setlist[enumerate]{
%%   nolistsep,label=\arabic{*}),ref=\arabic{*},leftmargin=0.65cm,noitemsep
%% }

%% \setlist[itemize]{
%%   nolistsep,label=\arabic{*}),ref=\arabic{*},noitemsep
%% }

\newlist{rqlist}{itemize}{2}
\setlist[rqlist]{
  nolistsep,leftmargin=1.65cm,rightmargin=0.9cm
}

\RequirePackage{framed}
\let\oldframed\framed
\def\framed{\oldframed\noindent\ignorespaces}

\RequirePackage{booktabs}

\RequirePackage{relsize}
\renewcommand*{\UrlFont}{\ttfamily\relax}

%\RequirePackage{wasysym}

% number circles. They go well together with my favorite way of
% labeling stuff in pictures.
\RequirePackage{marvosym}
\RequirePackage{pbox}

\RequirePackage{multicol}

\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\newcommand{\var}[1]{{\ttfamily#1}}% variable

\newcommand{\ahref}[2]{\href{#1}{\nolinkurl{#2}}}
% number circles. They go well together with my favorite way of
% labeling stuff in pictures.
\newcommand\circled[1]{\raisebox{1.2pt}{\textcircled{\hspace{0.33pt}\scriptsize{\raisebox{-.1pt}{#1}}}}}

\RequirePackage[export]{adjustbox}

\RequirePackage[nomain,acronym,nonumberlist,style=list]{glossaries} % nomain, if you define glossaries in a file, and you use \include{INP-00-glossary}

%% Stop importing packages


% Advanced Hyphenation
\clubpenalty=1000
\widowpenalty=1000

%% Define the RUG house style colors.
\definecolor{rug-red}{cmyk}{0,1,0.8,0}
\definecolor{rug-white}{cmyk}{0,0,0,0}
\definecolor{rug-black}{cmyk}{0,0,0,1}

%% Use RUG red as the color for titles, which is also used for the thumb indices.
\if@print
    \colorlet{title}{rug-red}
\else
    \colorlet{title}{rug-red}
\fi
\colorlet{thumb}{rug-red}

\hypersetup{
  colorlinks = true,
  linkcolor  = rug-red,  % section / figure / \Cref, etc.
  citecolor  = rug-red,  % \citet, \citep, etc.
  urlcolor   = rug-red   % optional: URLs as well
}

% Make all math in display equations rug-red
% \RequirePackage{etoolbox}

% \preto{\equation}{\color{rug-red}}
% \preto{\align}{\color{rug-red}}
% \preto{\gather}{\color{rug-red}}

%% Prepare common color palette for tikz pictures
\usetikzlibrary{graphs,graphdrawing}
\usetikzlibrary{arrows.meta,positioning}
\usetikzlibrary{calc,shapes.geometric,backgrounds,patterns,fit}
\usegdlibrary{phylogenetics}
\RequirePackage{pgfplots}
\usepgfplotslibrary{colormaps}
\pgfplotsset{compat=1.18}

\definecolor{treegray}{RGB}{120,120,120}
\definecolor{accentred}{cmyk}{0,1,0.8,0}
\definecolor{accentblue}{rgb}{0.0,0.75,1.0}
\definecolor{accentorange}{RGB}{230,150,30}
\definecolor{pastelpink}{RGB}{255,235,235}
\definecolor{pastelblue}{RGB}{225,240,255}

% Use a sans-serif font 
\tikzset{every node/.style={font=\sffamily\footnotesize}}

% Set FontAwesome 5 secondary duotone
\faDuotoneSetSecondary{rug-red}

% ---------------------------------------------------------
% Basic packages and setup
% ---------------------------------------------------------
\RequirePackage{parskip}          % No indents, space between paragraphs
\RequirePackage{graphicx}

%% Set the paper size to 17 by 24 cm, approximately halfway between A4 and A5.
\if@print
    \geometry{
        papersize = {173mm,246mm},
        layoutsize = {167mm,240mm},
        layoutoffset = {3mm,11mm},
        bindingoffset = 3mm
    }
\else
\geometry{papersize = {170mm,240mm},
        layoutoffset = {0mm,7mm}}
\fi
%% We decrease the margins slightly from the default (scale = 0.7).
\geometry{hscale=0.75,vscale=0.8}

\geometry{textwidth=127.4818mm}

%% Redefine the title command to accept an optional subtitle.
\renewcommand*\title[2][]{%
    \def\@subtitle{#1}%
    \def\@title{#2}%
    %% Add the title to the PDF meta data.
    \hypersetup{pdftitle=#2}%
}
%% Redefine the author command to accept a first and last name, and to add the
%% full name to the PDF meta data.
\renewcommand*\author[2]{%
    \def\@firstname{#1}%
    \def\@lastname{#2}%
    \hypersetup{pdfauthor=#1\ #2}%
}

%% Remove the header and page number on empty pages.
\def\cleardoublepage{%
    \clearpage%
    \if@twoside%
        \ifodd\c@page%
        \else%
            \thispagestyle{empty}%
            \vspace*{\fill}%
            \newpage%
        \fi%
    \fi%
}

\if@print%
    \newcommand*\cropmarks{%
        \ifodd\c@page%
            \begin{tikzpicture}[remember picture,overlay]
                \draw ($(current page.north east)+(0mm,-3mm)$) -- ($(current page.north east)+(-2mm,-3mm)$);
                \draw ($(current page.north east)+(-3mm,0mm)$) -- ($(current page.north east)+(-3mm,-2mm)$);
                \draw ($(current page.south east)+(0mm,3mm)$) -- ($(current page.south east)+(-2mm,3mm)$);
                \draw ($(current page.south east)+(-3mm,0mm)$) -- ($(current page.south east)+(-3mm,2mm)$);
            \end{tikzpicture}%
        \else%
            \begin{tikzpicture}[remember picture,overlay]
                \draw ($(current page.north west)+(0mm,-3mm)$) -- ($(current page.north west)+(2mm,-3mm)$);
                \draw ($(current page.north west)+(3mm,0mm)$) -- ($(current page.north west)+(3mm,-2mm)$);
                \draw ($(current page.south west)+(0mm,3mm)$) -- ($(current page.south west)+(2mm,3mm)$);
                \draw ($(current page.south west)+(3mm,0mm)$) -- ($(current page.south west)+(3mm,2mm)$);
            \end{tikzpicture}%
        \fi%
    }
\else
    \newcommand*\cropmarks{}
\fi%

%%% Thumb indices consist of white text on a rectangular colored background. The
%%% font-size is 75% of the size of thumb height.
\newif\ifthumb
\newlength\thumbheight
\setlength\thumbheight{24pt}
\newlength\thumbedge
\setlength\thumbedge{4pt}
\newlength\thumbhspace
\setlength\thumbhspace{36pt}
\newlength\thumbvspace
\setlength\thumbvspace{2\thumbheight}

\newlength\thumbwidth
\setlength\thumbwidth{36pt}
\newlength\thumbspacing
\setlength\thumbspacing{2\thumbheight}

%% We need the TikZ library calc to calculate the coordinates of the thumb
%% indices.
\usetikzlibrary{calc}

%% The lthumb command prints the current chapter number in a thumb index on the
%% left (even) page.
\newcommand*\lthumb{%
    \ifthumb%
        \begin{tikzpicture}[remember picture,overlay]
            \coordinate (top margin) at (0pt,1in+\topmargin+\headheight+\headsep);
            \coordinate (left margin) at (1.1in+\evensidemargin,0pt);
            %% Calculate the corners of the thumb index based on the current
            %% chapter number.
            \coordinate (top left) at ($(current page.north west)-(top margin)-(0pt,\value{chapter}\thumbvspace-\thumbvspace)$);
            \coordinate (bottom right) at ($(top left)+(left margin)-(\thumbhspace,\thumbheight)$);
            %% Shift the left edge to prevent the rounded corner from showing.
            \coordinate (top left) at ($(top left)-(\thumbedge,0pt)$);
            %% Draw the thumb index.
            \fill[fill=thumb,rounded corners=\thumbedge](top left) rectangle (bottom right);
            %% Print the chapter number at the center right in the thumb index.
            \coordinate (center right) at ($(bottom right)+(0pt,0.5\thumbheight)$);
            \node at (center right)[anchor=east,inner sep=2\thumbedge]{
                \titlefont\bfseries\color{rug-white}
                \fontsize{0.75\thumbheight}{0.75\thumbheight}\selectfont
                \thechapter
            };
        \end{tikzpicture}%
    \fi%
}

%% rthumb draws a thumb index on the right (odd) page.
\newcommand*\rthumb{%
    \ifthumb%
        \begin{tikzpicture}[remember picture,overlay]
            \coordinate (top margin) at (0pt,1in+\topmargin+\headheight+\headsep);
            \coordinate (right margin) at (1.1in+\evensidemargin,0pt);
            %% Calculate the corners of the thumb index based on the current
            %% chapter number.
            \coordinate (top right) at ($(current page.north east)-(top margin)-(0pt,\value{chapter}\thumbvspace-\thumbvspace)$);
            \coordinate (bottom left) at ($(top right)-(right margin)-(-\thumbhspace,\thumbheight)$);
            %% Shift the left right to prevent the rounded corner from showing.
            \coordinate (top right) at ($(top right)+(\thumbedge,0pt)$);
            %% Draw the thumb index.
            \fill[fill=thumb,rounded corners=\thumbedge](top right) rectangle (bottom left);
            %% Print the chapter number at the center right in the thumb index.
            \coordinate (center left) at ($(bottom left)+(0pt,0.5\thumbheight)$);
            \node at (center left)[anchor=west,inner sep=2\thumbedge]{
                \titlefont\bfseries\color{rug-white}
                \fontsize{0.75\thumbheight}{0.75\thumbheight}\selectfont
                \thechapter
            };
        \end{tikzpicture}%
    \fi%
}

%% Page style for empty pages.
\fancypagestyle{empty}{%
    \fancyhf{}
    \renewcommand*\headrulewidth{0pt}
    \renewcommand*\footrulewidth{0pt}
    \fancyhead{\cropmarks}
}

%% Page style for title pages.
\fancypagestyle{plain}{%
    \fancyhf{}
    %\renewcommand*\headrulewidth{0pt}
    \renewcommand*\footrulewidth{0pt}
    \fancyhead{\cropmarks}
    %\fancyfoot[C]{\titlefont\thepage}
    \fancyhead[LE]{\cropmarks\lthumb\titlefont\color{thumb}\thepage}
    \fancyhead[RO]{\cropmarks\rthumb\titlefont\color{thumb}\thepage}
}

%% Fancy style for the main matter.
\fancypagestyle{mainmatter}{%
    \fancyhf{}
    %% Page numbers on the top left and top right.
    \fancyhead[LE]{\cropmarks\lthumb\fontsize{8.5pt}{8.5pt}\titlefont\color{thumb}\thepage}
    \fancyhead[RO]{\cropmarks\rthumb\fontsize{8.5pt}{8.5pt}\titlefont\color{thumb}\thepage}
    %% Chapter name on the left (even) page.
    \fancyhead[RE]{\fontsize{8.5pt}{8.5pt}\titlefont\titleshape\color{thumb}\nouppercase{\leftmark}}
    %% Section name on the right (odd) page.
    \fancyhead[LO]{\fontsize{8.5pt}{8.5pt}\titlefont\titleshape\color{thumb}\nouppercase{\rightmark}}
}

%% The mainmatter style is default for normal pages.
\pagestyle{mainmatter}

%% Print the current chapter and section at the top of the page in cyan.
\renewcommand*\chaptermark[1]{\markboth{\color{thumb}\thechapter\ #1}{}}
\renewcommand*\sectionmark[1]{\markright{\color{thumb}\thesection\ #1}}

%% The setheader command can be used to print the title of unnumbered chapters
%% in the page header.
\newcommand*\setheader[1]{\markboth{\color{thumb}#1}{\color{thumb}#1}}

%% Change the headrule command (from fancyhdr.sty) to draw the line below the
\renewcommand*\headrule{%
    \if@fancyplain%
        \let\headrulewidth\plainheadrulewidth%
    \fi%
    {\color{thumb}\hrule\@height\headrulewidth\@width\headwidth}%
    \vskip-\headrulewidth%
}

%% Draw the line above a footnote in the title color as well.
\renewcommand*\footnoterule{%
    \vspace*{-3pt}%
    {\color{thumb}\hrule width 0.5\textwidth height 0.4pt}%
    \vspace*{2.6pt}%
}

%% A part title starts with a huge (96pt) bold black number, flushed to the
%% right, followed by the part name on the next line in the title color.
\titleformat{\part}[display]
    {\flushright\titlestyle}
    {\fontsize{96pt}{96pt}\selectfont\bfseries\thepart}
    {0pt}
    {\Huge\color{title}}
%% Separate the title from the text by two empty lines.
\titlespacing{\part}{0pt}{0pt}{2\baselineskip}
%% In the table of contents, the part name is preceded by an empty line, printed
%% in bold, and not followed by a line of dots.
\dottedcontents{part}[0em]{\vspace{\baselineskip}\titlefont\bfseries}{1.5em}{0pc}

%% Chapter titles have the same layout as parts.
\titleformat{\chapter}[display]
    {\flushright\titlestyle}
    {\fontsize{84pt}{84pt}\selectfont\bfseries\thechapter}
    {0pt}
    {\Huge\color{title}}
\titlespacing{\chapter}{0pt}{0pt}{2\baselineskip}
%% In the table of contents, a chapter is similar to a part, except that it is
%% preceded by half an empty line.
\dottedcontents{chapter}[1.5em]{\vspace{0.5\baselineskip}\titlefont\bfseries}{1.5em}{0pc}

%% Section titles start with the number in bold, followed by the name printed
%% in the title color.
\titleformat{\section}
    {\Large\bfseries\headerstyle}
    {\thesection\ }
    {0pt}
    {\color{black}}
%% Sections are preceded by an empty line.
\titlespacing{\section}{0pt}{\baselineskip}{0pt}
%% In the table of contents, section names are followed by a line of dots 8pt
%% apart.
\dottedcontents{section}[3.8em]{\titlefont}{2.3em}{8pt}

%% Subsection titles have the same layout as section titles, except in a smaller
%% font.
\titleformat{\subsection}
    {\large\bfseries\headerstyle}
    {\thesubsection\ }
    {0pt}
    {\color{black}}
\titlespacing{\subsection}{0pt}{\baselineskip}{0pt}
\dottedcontents{subsection}[7em]{\titlefont}{3.2em}{8pt}

%% Subsubsections have the same font and color as sections and subsections, but
%% are not preceded by a number.
\titleformat{\subsubsection}
    {\bfseries\headerstyle}
    {}
    {0pt}
    {\color{black}}
%% Subsubsections are preceded by an empty line and do not appear in the table
%% of contents.
\titlespacing{\subsubsection}{0pt}{\bigskipamount}{0pt}

%% Color the bullets of the itemize environment and make the symbol of the third
%% level a diamond instead of an asterisk.
\renewcommand*\labelitemi{\color{black}\textbullet}
\renewcommand*\labelitemii{\color{black}--}
\renewcommand*\labelitemiii{\color{black}$\diamond$}
\renewcommand*\labelitemiv{\color{black}\textperiodcentered}

%% The dedication is vertically centered on a separate page and flushed to the
%% right.
\newcommand\dedication[1]{%
    \thispagestyle{empty}%
    \vspace*{\fill}%
    \begin{flushright}%
        #1%
    \end{flushright}%
    \vspace*{\fill}%
    \cleardoublepage%
}

%% Define an unnumbered footnote command.
\newcommand\blfootnote[1]{%
  \begingroup
  \renewcommand\thefootnote{}% empty printed mark
  \footnote{#1}% use public, hyperref-patched interface
  \addtocounter{footnote}{-1}% restore counter
  \endgroup
}

%% The authors environment is used to display the authors of a chapter on the
%% title page. This is only necessary if multiple people contributed
%% significantly to the chapter.
\newcommand*\authors[1]{%
    \begin{center}%
        {\Large\bfseries #1}%
    \end{center}%
    \vspace{2\baselineskip}%
}

%% The epigraph environment can be used to to add a quote to the title page of
%% a chapter.
\newcommand\epigraph[3][2\baselineskip]{%
    \begin{flushright}%
        {\rmfamily\itshape #2}%
        \vskip 0.5\baselineskip%
        #3%
    \end{flushright}%
    \vspace{#1}%
}

%% The abstract environment is used for the abstract of a chapter.
\newenvironment{abstract}{%
    \list{}{\leftmargin\rightmargin}%
    \item%
    \relax%
    \rmfamily\itshape%
}{%
    \endlist%
}

%% Define a shadequote environment for nicer quote.
\tikzset{%
  fancy quotes/.style={
    text width=\fq@width pt,
    align=justify,
    inner sep=1em,
    anchor=north west,
    minimum width=\linewidth,
  },
  fancy quotes width/.initial={.8\linewidth},
  fancy quotes marks/.style={
    scale=8,
    text=white,
    inner sep=0pt,
  },
  fancy quotes opening/.style={
    fancy quotes marks,
  },
  fancy quotes closing/.style={
    fancy quotes marks,
  },
  fancy quotes background/.style={
    show background rectangle,
    inner frame xsep=0pt,
    background rectangle/.style={
      fill=rug-red!10,
      rounded corners,
    },
  }
}

% Common utilities
\newenvironment{fancyquotes}[1][]{%
\noindent
\tikzpicture[fancy quotes background]
\node[fancy quotes opening,anchor=north west] (fq@ul) at (0,0) {``};
\tikz@scan@one@point\pgfutil@firstofone(fq@ul.east)
\pgfmathsetmacro{\fq@width}{\linewidth - 2*\pgf@x}
\node[fancy quotes,#1] (fq@txt) at (fq@ul.north west) \bgroup}
{\egroup;
\node[overlay,fancy quotes closing,anchor=east] at (fq@txt.south east) {''};
\endtikzpicture}

%% Define a drop command which can be used to generate drop caps at the
%% beginning of a section.
\renewcommand*\LettrineTextFont{\titleshape}
\newcommand*\dropcap[2]{
    \lettrine[lines=2,findent=0.2em,nindent=0pt]{\color{rug-red} #1}{#2}%
}

%% Create an unnumbered reference section.
\addto\captionsenglish{\renewcommand*\bibname{\color{black}References}}
\newcommand*\references[1]{%
    \bibliographystyle{unsrtnat}%
    \bibliography{#1}%
}

%% Define a fancy enumerate environment with an optional highlight style
\RequirePackage{tcolorbox}
\tcbset{on line, 
        boxsep=4pt, left=0pt,right=0pt,top=0pt,bottom=0pt,
        colframe=white,colback=rug-red!70,coltext=white
        }
\let\svitem\item
\let\thefancy\relax
\newenvironment{fancyenumerate}
{%
  \fboxsep=3pt\relax%
  \renewcommand\item[2][\relax]{%
    \ifx!##2%
      \def\thefancy{\makebox[0pt][l]{\kern-2.2pt\textcolor{rug-red!70}{%
        \raisebox{0.5pt}{$\scriptstyle\blacktriangleright$}}}}%
      \def\next{}%
    \else%
      \def\thefancy{}%
      \def\next{##2}%
    \fi%
    \ifx\relax##1\relax
      \expandafter\svitem
    \else
      \expandafter\svitem[##1]
    \fi\next%
  }%
  \begin{enumerate}[label={%
    \smash{\tcbox{\bfseries\sffamily\theenumi)}\thefancy}}]%
}{\end{enumerate}}

%% Define a fancy box
\RequirePackage{varwidth}
\usetikzlibrary{calc}

\newenvironment{fancybox}[2]%
{%
    \begin{figure}[!h]
    \centering
    \begin{tikzpicture}
        \node[line width=.4mm, rounded corners, draw=rug-red!70, inner ysep=10pt, text width=.97\textwidth, outer sep=0] (one) {%
            \vspace*{15pt}\\\begin{varwidth}{.97\textwidth}\sffamily#2\end{varwidth}};
        \node[text=white,anchor=north east,align=center, minimum height=20pt] (two) at (one.north east) {%
            \sffamily#1 \hspace*{.5mm}};
        \path[fill=rug-red!70] 
            (one.north west|-two.west) --
            ($(two.west)+(-1.5cm,0)$) 
            to[out=0,in=180] (two.south west) --
            (two.south east) [rounded corners] --
            (one.north east) -- 
            (one.north west) [sharp corners] -- cycle;
        \node[text=white,anchor=north east,align=center, minimum height=20pt, text height=2ex] (three) at (one.north east) {%
            \sffamily#1 \hspace*{.5mm}};
}{%
    \end{tikzpicture}
    \end{figure}
}

% A variant supporting customized width
\newenvironment{fancyboxcustom}[3][\textwidth-\pgfkeysvalueof{/pgf/inner xsep}-2mm]%
{%
    \begin{figure}[!h]
    \centering
    \begin{tikzpicture}
        \node[line width=.4mm, rounded corners, draw=rug-red!70, inner ysep=10pt, text width=#1, outer sep=0] (one) {\vspace*{15pt}\\\begin{varwidth}{\textwidth}\sffamily#3\end{varwidth}};
        \node[text=white,anchor=north east,align=center, minimum height=20pt] (two) at (one.north east) {\sffamily#2 \hspace*{.5mm}};
        \path[fill=rug-red!70] 
            (one.north west|-two.west) --
            ($(two.west)+(-1.5cm,0)$) 
            to[out=0,in=180] (two.south west) --
            (two.south east) [rounded corners] --
            (one.north east) -- 
            (one.north west) [sharp corners] -- cycle;
        \node[text=white,anchor=north east,align=center, minimum height=20pt, text height=2ex] (three) at (one.north east) {\sffamily#2 \hspace*{.5mm}};
}{%
    \end{tikzpicture}
    \end{figure}
}

%% Define a fancy code environment with tcolorbox and minted
\tcbuselibrary{minted}

% Change line number color
\renewcommand{\theFancyVerbLine}{
    \sffamily
    \textcolor{rug-red}{
    \scriptsize\oldstylenums{
    \arabic{FancyVerbLine}}}}

% Define fancycode environment with proper newline handling
\newenvironment{fancycode}[2]{%
    \par\noindent % Ensure new line before the environment
    \centering
    \tcblisting{
        colframe=white, 
        colback=white, 
        listing only,
        minted language=#1,
        minted style=tango,
        minted options={
            mathescape,
            linenos,
            numbersep=5pt,
            gobble=0,
            frame=lines,
            framesep=3mm,
            rulecolor=\color{rug-red!70}
        }
    }%
    #2%
}{%
    \endtcblisting
    \par % Ensure proper spacing after the environment
}

% Front Cover Typography
\definecolor{CoverText}{RGB}{25,25,25} % near-black
\newcommand{\CoverTitleFont}{\sffamily} % switch to sans with \titlefont
\newcommand{\CoverTitleStyle}{\CoverTitleFont\color{CoverText}\bfseries}
\newcommand{\CoverSubtitleStyle}{\CoverTitleFont\color{CoverText}}

% Chapter 2 Requirements
\RequirePackage{url}
\RequirePackage{indentfirst}
\RequirePackage{adjustbox}
\RequirePackage{booktabs}
\RequirePackage{varwidth}
\RequirePackage{float}
\RequirePackage{longtable}

\newcommand{\norm}[1]{\lvert #1 \rvert}
\def\Plus{\texttt{+}}