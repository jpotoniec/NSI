\ProvidesClass{lecture}

\ProcessOptions\relax

\LoadClass{beamer}

\ifx\notatki\undefined
\setbeameroption{hide notes}
\else
\usepackage{pgfpages}
\pgfpagesuselayout{2 on 1}[a4paper,border shrink=5mm]
\setbeameroption{show only notes}
\fi


\RequirePackage[utf8]{inputenc}

\usetheme{PUT}

\RequirePackage{calc}

\RequirePackage{diagbox}

\newcommand{\set}[1]{\ensuremath\mathbf{#1}}

\RequirePackage{xcolor}

%http://tex.stackexchange.com/questions/42619/x-mark-to-match-checkmark
\RequirePackage{pifont}
\newcommand{\cmark}{\textcolor{green!80!black!50}{\text{\ding{51}}}}
\newcommand{\xmark}{\textcolor{red!80!black!50}{\text{\ding{55}}}}

\newcommand{\R}{\ensuremath\mathbb{R}}
\newcommand{\N}{\ensuremath\mathbb{N}}
\renewcommand{\d}[1]{\ensuremath\,\text{d}#1}

%http://tex.stackexchange.com/questions/55000/continuing-enumerate-counters-in-beamer
\newcounter{saveenumi}
\newcommand{\seti}{\setcounter{saveenumi}{\value{enumi}}}
\newcommand{\conti}{\setcounter{enumi}{\value{saveenumi}}}

\RequirePackage{tikz}
\usetikzlibrary{shapes.misc} 
\usetikzlibrary{positioning,intersections} 
\usetikzlibrary{petri} 
\usetikzlibrary{calc,intersections,through,backgrounds}
\usetikzlibrary{calc,decorations.pathmorphing,patterns}

%robi ladniejsze strzalki
\usepgflibrary{arrows.meta}

\usepackage{bm}
\DeclareMathOperator{\cov}{cov}
\newcommand{\dd}[1]{\partial#1}

\colorlet{color1}{black}
\colorlet{color2}{green!50!black!50}
\colorlet{color3}{blue!50!black!50}
\colorlet{color4}{red!50!black!50}
\tikzset{
	decoration={random steps,segment length=2.5mm,amplitude=0.3mm},
	color1/.style={color=color1},
	color2/.style={color=color2},
	color3/.style={color=color3},
	color4/.style={color=color4},
	set/.style={very thick, decorate},
	diagram/.style={rectangle, rounded corners=1.5mm, very thick, draw=cegla, top color=srebro!10!white, bottom color=srebro!10!white},
	dice/.style={draw=black,thick,rectangle,minimum size=10mm,diagram,node distance=2mm},
	dice token/.style={top color=black, bottom color=black, semitransparent}
}
%http://tex.stackexchange.com/questions/99119/beamer-problematic-use-of-visible-and-only-in-combination-with-tikz-to-draw-a
\tikzset{
	invisible/.style={opacity=0},
		visible on/.style={alt=#1{}{invisible}},
		alt/.code args={<#1>#2#3}{%
			\alt<#1>{\pgfkeysalso{#2}}{\pgfkeysalso{#3}} % \pgfkeysalso doesn't change the path
		},
}

%http://tex.stackexchange.com/questions/6135/how-to-make-beamer-overlays-with-tikz-node
\tikzset{onslide/.code args={<#1>#2}{%
  \only<#1>{\pgfkeysalso{#2}} 
}}

\usepackage{tikz}
\usetikzlibrary{shapes.geometric, arrows,calc}

\tikzset{
	flowchart/.style={draw=cegla, fill=srebro!10!white}
}
\tikzstyle{startstop} = [rectangle, rounded corners,text centered, flowchart] %, minimum width=10cm, minimum height=1cm
\tikzstyle{io} = [trapezium, trapezium left angle=70, trapezium right angle=110, text centered, flowchart] %, minimum width=10cm, minimum height=1cm
\tikzstyle{process} = [rectangle, text centered, flowchart] %, minimum width=10cm, minimum height=1cm, text width=10cm
\tikzstyle{decision} = [diamond, text centered, flowchart,aspect=4] %, minimum width=6cm, minimum height=1cm, text width=6cm
\tikzstyle{user} = [decision,double,very thick]
\tikzstyle{arrow} = [very thick,->]

%\sout for striketrough
\usepackage[normalem]{ulem}

\let\svthefootnote\thefootnote
\textheight 1in
\newcommand\source[1]{%
  \let\thefootnote\relax\footnotetext{#1}%
  \let\thefootnote\svthefootnote%
}

\newcommand{\doi}[1]{\url{http://doi.org/#1}}

\author{Jędrzej Potoniec}
\date{}
