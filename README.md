# Matrix_Analysis_Homework

研究生课程矩阵分析（1700002）习题答案与复习整理

## Contents

- `*.tex`：$\LaTeX$源码
  - `c[1-9].tex`：各章的学堂在线（雨课堂，两者相同）习题答案整理
  - `review.tex`：复习整理
- `*.pdf`：编译生成的 PDF 文件，在[Release页面](https://github.com/fishyy119/Matrix_Analysis_Homework/releases)或[自动编译产物](https://github.com/fishyy119/Matrix_Analysis_Homework/actions/workflows/build_latex.yaml)中获取
  - `c[1-9].pdf / review.pdf`：同上

## Remarks

编译器使用 XeLaTeX，内核版本：

```scss
XeTeX 3.141592653-2.6-0.999997 (TeX Live 2025)
```

### 封面时区显示问题

编译时使用了 `datetime2 v1.5.7` 用于显示编译时间，但是由于早期 XeLaTeX 无法获取秒数/时区，因此该宏包无法在搭配 XeLaTeX 时正确显示时区。

XeLaTeX 在后续更新中支持了时区获取，但该宏包更新还未跟进，参考[官方FAQ](https://www.dickimaw-books.com/faq.php?id=273)，添加如下内容在加载宏包前以解决该问题：

```tex
\providecommand{\pdfcreationdate}{\creationdate}
```

> 更多讨论: <https://github.com/CTeX-org/forum/issues/321>
