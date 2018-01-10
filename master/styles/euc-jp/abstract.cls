%
%  This class file is used for making abstract of Master/graduation thesis.
%    Ver 1.00  2004.1.29
%    
%   by jun ota
%   revised by Takafumi Kanazawa
%

\ProvidesClass{abstract}[2004/01/29]
%
\LoadClassWithOptions{jsarticle}

\def\baselinestretch{0.8}
\setlength{\abovedisplayskip}{0.5mm plus 0.5mm minus 0.5mm}
\setlength{\belowdisplayskip}{0.5mm plus 0.5mm minus 0.5mm}
\setlength{\abovedisplayshortskip}{0.5mm}
\setlength{\belowdisplayshortskip}{0.5mm}

%%% define paper layout
\ifnum\@ptsize=0% for 10pt
\textwidth 178mm%
\textheight 257mm%
\voffset -1in%��ľ�����Υ��ե��å�
\hoffset -1in%��ʿ�����Υ��ե��å�
\topmargin 0mm%���ե��åȤ���إå��ޤǤΥޡ�����
\headheight 18mm%�إå��ι⤵
\headsep 0mm%�إå�����ʸ�ΰ�δ֤ι⤵
\oddsidemargin 16mm%����ڡ����Υޡ�����
\footskip 0mm%ʸ���ΰ�ν���꤫��եå��ν����ޤǤι⤵
\fi
\ifnum\@ptsize=-1% for 9pt
\textwidth 194mm% < 180*1.09529
\textheight 280mm% < 257*1.09529
\voffset -1in%��ľ�����Υ��ե��å�
\hoffset -1in%��ʿ�����Υ��ե��å�
\topmargin 0mm%���ե��åȤ���إå��ޤǤΥޡ�����
\headheight 19mm%�إå��ι⤵
\headsep 0mm%�إå�����ʸ�ΰ�δ֤ι⤵
\oddsidemargin 15mm%����ڡ����Υޡ�����
\footskip 0mm%ʸ���ΰ�ν���꤫��եå��ν����ޤǤι⤵
\fi

\pagestyle{empty}


\newif\if@abstenglish
\@abstenglishfalse
\newcommand{\englishtitle}{
	\@abstenglishtrue
	\newcommand{\jptitle}[1]{\gdef\@jptitle{##1}}
}

\newcommand{\absttitle}{
	\if@twocolumn
		\twocolumn[\@absttitle]
	\else
		\@absttitle
	\fi
    \global\let\absttitle\relax
    \global\let\@author\@empty
    \global\let\@title\@empty
    \global\let\title\relax
    \global\let\author\relax
    \global\let\and\relax
    \global\let\studentid\@empty%  
    \global\let\lab\@empty
    \global\let\studentid\relax%  
    \global\let\lab\relax

  }
\def\@absttitle{%
    \begin{center}%
			\if@abstenglish
      	{\bf{\LARGE \@title}}\\%
				\underline{\makebox[.925\textwidth][c]{\bf{\LARGE ��\@jptitle��}}}\\%
			\else
      	\underline{\bf{\LARGE \@title}}\\%
			\fi
      	{\Large %\bf{
        \begin{tabular}[t]{ccc}%
          �����ֹ桧\@studentid & \@lab\ ���漼 &\@author 
        \end{tabular}\par}%}%
    \end{center}%
%    \par\vskip -5mm
 \gdef\@studentid{}
 \gdef\@lab{}
%    \ifvoid\@abstractbox\else\centerline{\box\@abstractbox}\vskip1.5em\fi
}
\long\def\studentid#1{\long\gdef\@studentid{#1}}
\long\def\lab#1{\long\gdef\@lab{#1}}
