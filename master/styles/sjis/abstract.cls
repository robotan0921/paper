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
\voffset -1in%���������̃I�t�Z�b�g
\hoffset -1in%���������̃I�t�Z�b�g
\topmargin 0mm%�I�t�Z�b�g����w�b�_�܂ł̃}�[�W��
\headheight 18mm%�w�b�_�̍���
\headsep 0mm%�w�b�_�Ɩ{���̈�̊Ԃ̍���
\oddsidemargin 16mm%��y�[�W�̃}�[�W��
\footskip 0mm%���͗̈�̏I��肩��t�b�^�̏I���܂ł̍���
\fi
\ifnum\@ptsize=-1% for 9pt
\textwidth 194mm% < 180*1.09529
\textheight 280mm% < 257*1.09529
\voffset -1in%���������̃I�t�Z�b�g
\hoffset -1in%���������̃I�t�Z�b�g
\topmargin 0mm%�I�t�Z�b�g����w�b�_�܂ł̃}�[�W��
\headheight 19mm%�w�b�_�̍���
\headsep 0mm%�w�b�_�Ɩ{���̈�̊Ԃ̍���
\oddsidemargin 15mm%��y�[�W�̃}�[�W��
\footskip 0mm%���͗̈�̏I��肩��t�b�^�̏I���܂ł̍���
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
				\underline{\makebox[.925\textwidth][c]{\bf{\LARGE �i\@jptitle�j}}}\\%
			\else
      	\underline{\bf{\LARGE \@title}}\\%
			\fi
      	{\Large %\bf{
        \begin{tabular}[t]{ccc}%
          �w�Дԍ��F\@studentid & \@lab\ ������ &\@author 
        \end{tabular}\par}%}%
    \end{center}%
%    \par\vskip -5mm
 \gdef\@studentid{}
 \gdef\@lab{}
%    \ifvoid\@abstractbox\else\centerline{\box\@abstractbox}\vskip1.5em\fi
}
\long\def\studentid#1{\long\gdef\@studentid{#1}}
\long\def\lab#1{\long\gdef\@lab{#1}}
