% matrix-review.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{matrix-review}[2025/11/20 Matrix Analysis Review Class]
\LoadClass[a4paper,12pt]{ctexart}

% --------------------------
% 页面设置
% --------------------------
\RequirePackage{geometry}
\geometry{margin=2.5cm}

\RequirePackage{fancyhdr}
\setlength{\headheight}{15pt}
\pagestyle{fancy}
\fancyhf{}

\newcommand{\@reviewtitle}{矩阵分析复习整理}
\newcommand{\reviewchapter}[1]{\gdef\@reviewtitle{矩阵分析第#1章复习}}

\fancyhead[C]{\@reviewtitle}
\fancyfoot[R]{\small\thepage}

\providecommand{\pdfcreationdate}{\creationdate} % 使用新版XeLaTeX时区支持
\RequirePackage{datetime2}
\newcommand{\makecover}{%
    \clearpage
    \thispagestyle{empty} % 去掉页眉页脚

    % 封面标题
    \begin{center}
        {\Huge \textit{矩阵分析复习整理}}
    \end{center}

    % 尾部添加编译日期
    \vfill   % 把下面的文字压到页面底部（正文区域）
    \hfill \textit{\DTMnow} % 右对齐的最后一行

    \clearpage
    \setcounter{page}{1} % 正文页码从1开始
    \pagestyle{fancy}     % 正文启用fancy页眉页脚
}

%% 水印
% \RequirePackage{everypage-1x} % 修复首页透明度问题
\RequirePackage{background}
\backgroundsetup{
    pages=all,
    scale=10,
    color=gray,
    opacity=0.1,
    % position={17cm, -26cm},
    contents={%
            \begin{tikzpicture}[line width=0.6pt, rotate=180]
                \draw[fill=none]
                (-1,0)
                .. controls (-0.6,0.5) and (-0.3,0.6) .. (0.6,-0.4)
                -- (0.6,0.4)
                .. controls (-0.3,-0.6) and (-0.6,-0.5) .. (-1,0)
                -- cycle;
                \fill (-0.7,0) circle (0.05);
            \end{tikzpicture}
        }
}

% --------------------------
% 段落设置
% --------------------------
\RequirePackage{indentfirst}
% \setlength{\parindent}{0pt}
\setlength{\parskip}{0.7em}

% --------------------------
% 标题设置
% --------------------------
\RequirePackage{titlesec}

% Section 标题粗体、稍大、紧凑
\titleformat{\section}
{\bfseries\large}
{\thesection\quad}
{0em}
{}

\titlespacing*{\section}{0pt}{1.2em}{0.5em}

% Subsection 更小更紧凑
\titleformat{\subsection}
{\itshape}
{\thesubsection\quad}
{0em}
{}

\titlespacing*{\subsection}{0pt}{0.8em}{0.3em}

% 附录环境设置 
\newcommand{\startappendix}{%
    \appendix                       % 切换到附录
    \renewcommand{\thesection}{\Alph{section}} % 附录章节编号 A、B、C
    \renewcommand{\thesubsection}{\thesection.\arabic{subsection}} % A.1, A.2
    % 设置 section 标题显示为 "附录A: 标题"
    \titleformat{\section}
    {\bfseries\large}  % 字体样式
    {附录\thesection:\quad}            % 前缀显示
    {0em}                         % 编号和标题之间间距
    {}                             % 标题正文前额外代码
}


% --------------------------
% 宏包
% --------------------------
\RequirePackage{amsmath, amssymb, amsthm}
\RequirePackage{extarrows}
\RequirePackage[
    colorlinks=true,     % 彩色文字而不是方框
    linkcolor=blue,     % 内部链接
    urlcolor=magenta     % 外部 URL 为品红色
]{hyperref}

\renewcommand{\qedsymbol}{$\blacksquare$} % qed实心

\RequirePackage{enumitem}  % 有序列表编号样式
\setlist[enumerate]{label=(\arabic*), left=0pt, itemsep=0.3em, topsep=0.5em}

\RequirePackage{multicol}  % 多列

\RequirePackage{chngcntr}  % 用于公式计数器控制
\counterwithin{equation}{section}  % 公式按小节重置
\renewcommand{\theequation}{\thesection.\arabic{equation}} % 显示形式: 小节号.序号

% 备注
\RequirePackage[most]{tcolorbox}
\newtcolorbox{remarkbox}{
    colback=yellow!5, colframe=yellow!30!black,
    left=1mm, right=1mm, boxrule=0.5pt, arc=2mm,
    fonttitle=\bfseries, title=备注
}

% --------------------------
% 数学符号宏
% --------------------------
\newcommand{\mr}[1]{\mathrm{#1}}
\newcommand{\dd}{\mr{d}}
\newcommand{\TT}{\mr{T}}
\newcommand{\HH}{\mr{H}}
\newcommand{\Tr}[1]{\mr{tr}\left(#1\right)}
\newcommand{\Rank}[1]{\mr{rank}\left(#1\right)}
\newcommand{\Dim}[1]{\mr{dim}\left(#1\right)}
\newcommand{\al}{\alpha}
\newcommand{\be}{\beta}
\newcommand{\la}{\lambda}
% \newcommand{\qed}{\hfill $\blacksquare$}

\newcommand{\norm}[1]{\left\lVert #1 \right\rVert}
\newcommand{\mat}[1]{\begin{bmatrix}#1\end{bmatrix}}


\RequirePackage{pifont}
\newcommand{\important}{\textcolor{red}{\ding{72}}}


\endinput