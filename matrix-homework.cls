% matrix-homework.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{matrix-homework}[2025/11/02 Simple Homework Class]
\LoadClass[a4paper,12pt]{ctexart}


% 页面设置
%% 页边距
\RequirePackage{geometry}
\geometry{margin=2.5cm}

%% 页眉页脚
\RequirePackage{fancyhdr}
\setlength{\headheight}{15pt}
\pagestyle{fancy}
\fancyhf{}

\newcommand{\@homeworktitle}{矩阵分析作业}
\newcommand{\chapternumber}[1]{\gdef\@homeworktitle{矩阵分析第#1章作业}}
\fancyhead[C]{\@homeworktitle}
\fancyfoot[R]{\small\thepage}

\newcommand{\makecover}[1]{%
    \clearpage
    \thispagestyle{empty} % 去掉页眉页脚
    \begin{center}
        {\Huge \textit{矩阵分析第#1章作业}} % 封面标题
    \end{center}
    \clearpage
    \setcounter{page}{1} % 正文页码从1开始
    \pagestyle{fancy}     % 正文启用fancy页眉页脚
}

%% 水印
% \RequirePackage{everypage-1x} % 修复首页透明度问题
% 虽然能生成但是报错，直接不用首页好了
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

% 段落设置
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.5em} % 段落间距，比行间距略大

\RequirePackage{titlesec}
\renewcommand{\thesection}{题目 \arabic{section}} % 设置编号显示为“题目 x”
\titleformat{\section} % 定义 section 的格式
{\normalfont\bfseries} % 字体：普通+粗体
{\thesection}                     % 不显示编号
{0pt}                  % 标题编号与标题的间距
{}                     % 标题前代码（可留空）

\titlespacing*{\section} % 定义间距
{0pt}   % 左边距
{2em}   % 上方间距
{0.5em} % 下方间距

% 宏包
\RequirePackage{amsmath, amssymb}
\RequirePackage{extarrows}

% 快捷定义
\newcommand{\answer}{%
    \vspace{1em} % 上方段间距，可自行调整
    \noindent\textit{解答：}\par % 斜体 + 换行
    \vspace{0.5em} % 下方段间距，可自行调整
}

\newcommand{\mr}[1]{\mathrm{#1}}
\newcommand{\dd}{\mr{d}}
\newcommand{\TT}{\mr{T}}
\newcommand{\HH}{\mr{H}}
\newcommand{\Tr}[1]{\mr{tr}(#1)}
\newcommand{\Dim}[1]{\mr{dim}(#1)}
\newcommand{\qed}{\hfill $\blacksquare$}

\newcommand{\norm}[1]{\left\lVert #1 \right\rVert}

\newcommand{\mat}[1]{\begin{bmatrix}#1\end{bmatrix}}
\endinput
