\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{summarysheet}[2020/10/03 v1.0 Summary Sheet Class]
\LoadClass[letterpaper]{article}

\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage[margin=0.2in, top=0.0in, bottom=-0.07in]{geometry}
\RequirePackage{amsmath, amssymb}

\RequirePackage{fontspec}
\setsansfont{Lato}
\RequirePackage{xcolor}
%\definecolor{paper}{HTML}{f5f5e5ff}
\definecolor{paper}{RGB}{245, 245, 229}
\definecolor{lightblue}{RGB}{226, 230, 238}
\definecolor{darkblue}{RGB}{53, 57, 88}



\makeatletter
\newcommand\SUPERHUGE{\@setfontsize\Huge{50}{60}}
\makeatother


\makeatletter
\newcommand\HUGE{\@setfontsize\Huge{40}{48}}
\makeatother    

\RequirePackage{changepage}

\RequirePackage{multicol}

\RequirePackage{tcolorbox}
\newtcolorbox{ttopicbox}{
        colframe = paper,
        colback = paper,
        top=2mm, bottom=2mm, left=2mm, right=2mm,
        arc=0mm, parbox=false}
                        
\newtcolorbox{tbannerbox}{
        colframe = darkblue,
        colback = darkblue,
        top=3mm, bottom=3mm, left=5mm, right=10mm,
        arc=0mm}
        
\newtcolorbox{teqbox}{
        colframe = lightblue,
        colback = lightblue,
        top=0mm, bottom=0mm, left=0mm, right=0mm,
        arc=0mm}
        
\newenvironment{topicbox}[1]
{
\begin{ttopicbox}

{\noindent\sffamily \textbf{ \small #1}}
\vspace{0.1in}
}
{
\end{ttopicbox}
}

\newenvironment{eqbox}
{
\begin{teqbox}
\[
}
{
\]
\end{teqbox}
}

\newenvironment{eqboxalign}
{
\begin{teqbox}
\begin{align*}
}
{
\end{align*}
\end{teqbox}
}

\renewcommand{\maketitle}[2]
{
\begin{center}
\makebox[\textwidth]{\includegraphics[width=\paperwidth]{banner.png}}
\end{center}

\begin{adjustwidth}{-0.13in}{0in}
\vspace{-0.75in}
\noindent\sffamily
{\SUPERHUGE\color{lightblue} #1} { \hspace{ 0.1in} \Huge \color{paper} #2}
\end{adjustwidth}

\rmfamily
\footnotesize

\color{black}

\vspace{0.2in}
}

\newcommand{\makebanner}[1]
{
\vfill
\begin{adjustwidth}{-0.3in}{-0.3in}
\begin{tbannerbox} 
\begin{flushright}
\sffamily \Huge \color{paper} #1
\end{flushright}
\end{tbannerbox}
\end{adjustwidth}
}
 4.0.} 
%\begin{flushright}
\sffamily \Huge \color{paper} #1
%\end{flushright}

%\end{multicols}

\end{tbannerbox}
\end{adjustwidth}
}
