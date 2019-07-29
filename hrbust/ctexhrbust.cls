% vim:ft=tex
\ProvidesClass{ctexhrbust}[2018/03/12 00:30 v1.0]
% hypperrr选项需要在tex文件中加入颜色选项，否则目录为红色
% \usepackage[colorlinks, linkcolor=black, urlcolor=black]{hyperref}
\LoadClass[hyperref, UTF8, 12pt]{ctexrep}


% 设置纸张大小，好像ctexrep类有b5j选项
\setlength\paperheight{25.71cm}
\setlength\paperwidth{18.2cm}


% 设置英文字体
\RequirePackage{fontspec}
\setmainfont{Times New Roman}
\setsansfont{Times New Roman}
\setmonofont{Times New Roman}


% 设置页边距，页眉、页脚间隔
\RequirePackage{geometry}
\geometry{centering,top=2.50cm,bottom=2.10cm,left=2.50cm,right=2.00cm,headheight=1.5cm,headsep=0cm, footskip=0.35cm}


% 设置行距
\RequirePackage{setspace}
\renewcommand{\baselinestretch}{1.082}


% 设置标题格式和编号层次
\RequirePackage{titlesec}
\setcounter{secnumdepth}{5}

\newcommand\HrbustBeforeChapter{第}
\newcommand\HrbustAfterChapter{章}
\titleformat{\chapter}[hang]{\doublespacing\centering\heiti\zihao{-2}}{\HrbustBeforeChapter\thechapter\HrbustAfterChapter}{0pt}{\ }{\singlespacing}
\titlespacing*{\chapter}{0pt}{-18pt}{27pt} % 18pt * 4/3 + 6pt
\CTEXsetup[number={\arabic{chapter}}]{chapter}

\titleformat{\section}[hang]{\onehalfspacing\heiti\zihao{-3}}{\thesection}{0pt}{\ }{\singlespacing}
\titlespacing*{\section}{0pt}{6pt}{13.5pt}

\titleformat{\subsection}[hang]{\onehalfspacing\heiti\zihao{4}}{\thesubsection}{0pt}{\ }{\singlespacing}
\titlespacing*{\subsection}{0pt}{6pt}{7pt}

\titleformat{\subsubsection}[hang]{\onehalfspacing\heiti\zihao{-4}}{\thesubsubsection}{0pt}{\ }{\singlespacing}
\titlespacing*{\subsubsection}{0pt}{0pt}{6pt}

\titleformat{\paragraph}[hang]{\onehalfspacing\heiti\zihao{-4}}{\theparagraph}{0pt}{\ }{\singlespacing}
\titlespacing*{\paragraph}{0pt}{0pt}{6pt}


% 设置目录格式
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\setcounter{tocdepth}{2}
\renewcommand{\contentsname}{\heiti\zihao{-2}{目\quad 录}}
\titlecontents{subparagraph}[0pt]{\songti\zihao{8}}{}{}{} % subparagraph用作标题时，不能显示在目录中，这里做空行显示
\titlecontents{chapter}[0pc]{\heiti\zihao{-4}}{\thecontentslabel}{}{\titlerule*[0.3pc]{.}\contentspage}
\titlecontents{section}[1pc]{\songti\zihao{-4}}{\thecontentslabel \ }{}{\titlerule*[0.3pc]{.}\contentspage}
\titlecontents{subsection}[2pc]{\songti\zihao{-4}}{\thecontentslabel \ }{}{\titlerule*[0.3pc]{.}\contentspage}


% 设置页眉、页脚
\RequirePackage{fancyhdr}
\fancyhf{}
\fancypagestyle{plain}{}
\fancyhead{}
\fancyhead[C]{\zihao{-5}{哈尔滨理工大学学士学位论文}}
\fancyfoot{}
\fancyfoot[C]{\zihao{-5}{-\ \thepage \ -}}
\renewcommand{\headrule}{
  \makebox[0pt][l]{\rule[0.87\baselineskip]{\headwidth}{0.75pt}}%
  \rule[0.97\baselineskip]{\headwidth}{1.75pt}
}
\pagestyle{plain}

% 设置摘要
\newenvironment{zh_abstract}[2] {
  \newcommand\ZhKeywords{#2}
  \addcontentsline{toc}{chapter}{摘要}
  \chapter*{#1}
  \begin{center}
  {\heiti\zihao{-2}{摘\quad 要}} \vspace{12pt}
  \end{center}
  \qquad
}{
  \newline
  \newline
  \heiti{关键词\ }
  \songti{\ZhKeywords}
}
\newenvironment{en_abstract}[2] {
  \newcommand\EnKeywords{#2}
  \addcontentsline{toc}{chapter}{Abstract}
  \chapter*{\bf #1}
  \vspace{-3pt}
  \begin{center}
    \zihao{-2}\bf{Abstract} \vspace{8pt}
  \end{center}
  \begin{spacing}{1.35}
  \noindent
}{
  \newline
  \newline
  \bf{Keywords\ }
  \bf{\EnKeywords}
  \end{spacing}
}


% 设置图、表格、公式编号形式
\renewcommand \thefigure{\thechapter-\@arabic\c@figure}
\renewcommand \thetable{\thechapter-\@arabic\c@table}
\renewcommand \theequation{\thechapter-\@arabic\c@equation}


% 设置图、表标题格式
\usepackage{caption}
\renewcommand\small{\zihao{5}}
\captionsetup{font={singlespacing, small}, labelfont={singlespacing, small}, textfont={singlespacing, small}, labelsep=quad}
\renewcommand\caption{\singlespacing}
