# Japanese Letter LaTeX Templates
# 日本語書簡 LaTeX テンプレート集

[English](#english) | [日本語](#日本語)

---

## English

### Overview

This project provides LaTeX templates for creating authentic Japanese letters (書簡) in both horizontal (横書き) and vertical (縦書き) writing styles.

Japanese letters have a distinctive structure different from Western letters:

- **前文 (Zengobun)**: Opening with 頭語 (greeting) and 時候の挨拶 (seasonal greeting)
- **主文 (Shubun)**: Main body of the letter
- **末文 (Matsubun)**: Closing greetings
- **後付 (Kōzuke)**: Date, signature, and other information

### Features

- ✅ **letter-yoko.sty**: Horizontal writing style
- ✅ **letter-tate.sty**: Vertical writing style (tategaki)
- ✅ **envelope-yoko.sty**: Western-style horizontal envelope
- ✅ **envelope-tate.sty**: Traditional vertical envelope
- ✅ **greetings.sty**: Seasonal greetings collection (12 months + 4 seasons)
- ✅ Sample files for each template type
- ✅ Both LuaLaTeX and upLaTeX compatible

### Requirements

- LaTeX distribution (TeX Live 2020+, MacTeX, or MiKTeX)
- `jlreq` document class (Japanese typesetting)
- Japanese fonts (Noto CJK JP, Source Han, Kozuka, etc.)
- LuaLaTeX or upLaTeX engine

### Quick Start

#### 1. Clone or Download

```bash
git clone https://github.com/YOUR_USERNAME/japanese-letter-latex.git
cd japanese-letter-latex
```

#### 2. Choose Your Template

**Horizontal Letter (横書き書簡):**
```latex
% !TEX program = lualatex
\documentclass[14pt]{jlreq}
\usepackage{letter-yoko}
```

**Vertical Letter (縦書き書簡):**
```latex
% !TEX program = lualatex
\documentclass[14pt,tate]{jlreq}
\usepackage{letter-tate}
```

#### 3. Fill in Your Information

```latex
% Sender
\setsenderName{山田 太郎}
\setsenderAddress{東京都千代田区...}
\setsenderPostalCode{100-8111}

% Recipient
\setrecipientName{佐藤 花子}
\setrecipientAddress{大阪府大阪市北区...}
\setrecipientPostalCode{530-0001}

% Date
\setletterDate{令和6年12月1日}

% Greeting
\setopeninggreeting{拝啓}
\setgreeting{\December}  % From greetings.sty
\setclosingword{敬具}
```

#### 4. Write Your Letter

```latex
\begin{document}
\makeLetterHeader
\makeRecipientBlock

\begin{letter}
\makeOpening
% Your content here
\makeClosingGreeting
\makeClosing
\makeSignature
\end{letter}
\end{document}
```

### Envelope Templates

**Vertical Envelope (直式封筒):**
```latex
\documentclass[tate]{jlreq}
\usepackage{envelope-tate}

\setrecipientname{佐藤 花子 様}
\setrecipientaddress{大阪府大阪市北区...}
% ... more setup ...

\begin{document}
\makeenvelope  % Creates front and back
\end{document}
```

### File Structure

```
japanese-letter-latex/
├── README.md
├── letter-yoko.sty          # Horizontal letter style
├── letter-tate.sty          # Vertical letter style
├── envelope-yoko.sty        # Western envelope
├── envelope-tate.sty        # Traditional envelope
├── greetings.sty             # Seasonal greetings
├── examples/
│   ├── sample-letter-yoko.tex
│   ├── sample-letter-tate.tex
│   ├── sample-envelope-yoko.tex
│   └── sample-envelope-tate.tex
├── docs/
│   └── letter-format-guide.md
└── LICENSE
```

### Compilation

**With LuaLaTeX (Recommended):**
```bash
lualatex sample-letter-yoko.tex
```

**With upLaTeX:**
```bash
uplatex sample-letter-yoko.tex
dvipdfmx sample-letter-yoko.dvi
```

### License

MIT License

---

## 日本語

### 概要

このプロジェクトは、日本語の書簡をLaTeXで作成するためのテンプレート集です。横書き（横式）と縦書き（縦式）の両方の形式をサポートしています。

### 機能

| ファイル | 説明 |
|---------|------|
| `letter-yoko.sty` | 横書き書簡スタイル |
| `letter-tate.sty` | 縦書き書簡スタイル |
| `envelope-yoko.sty` | 横式封筒（洋封筒）|
| `envelope-tate.sty` | 直式封筒（縦書き封筒）|
| `greetings.sty` | 月別・季節別時候の挨拶集 |

### 必要環境

- LaTeX ディストリビューション（TeX Live 2020+、MacTeX、MiKTeX）
- `jlreq` ドキュメントクラス
- 日本語フォント（Noto CJK JP / 源ノフォント / 小塚フォント）
- LuaLaTeX または upLaTeX

### 使い方

#### 横書き書簡

```latex
% !TEX program = lualatex
\documentclass[14pt]{jlreq}
\usepackage{letter-yoko}

% 差出人情報
\setsenderName{山田 太郎}
\setsenderAddress{東京都千代田区...}

% 宛先情報
\setrecipientName{佐藤 花子}

% 日付
\setletterDate{令和6年12月1日}

% 挨拶設定
\setopeninggreeting{拝啓}
\setgreeting{\December}
\setclosingword{敬具}

\begin{document}
\makeLetterHeader
\makeRecipientBlock

\begin{letter}
\makeOpening
ここに本文を書きます。
\makeClosingGreeting
\makeClosing
\makeSignature
\end{letter}
\end{document}
```

#### 縦書き書簡

```latex
% !TEX program = lualatex
\documentclass[14pt,tate]{jlreq}
\usepackage{letter-tate}

% ... 同様の設定 ...

\begin{document}
\makeLetterHeader

\begin{letter}
\makeOpening
ここに本文を書きます。
\makeClosingGreeting
\makeClosing
\makeSignature
\end{letter}
\end{document}
```

### 時候の挨拶（greetings.sty）

月別の挨拶コマンドを使用できます：

| コマンド | 月 |
|---------|---|
| `\January` | 1月 |
| `\February` | 2月 |
| `\March` | 3月 |
| `\April` | 4月 |
| `\May` | 5月 |
| `\June` | 6月 |
| `\July` | 7月 |
| `\August` | 8月 |
| `\September` | 9月 |
| `\October` | 10月 |
| `\November` | 11月 |
| `\December` | 12月 |

季節別：
- `\SpringGreeting`
- `\SummerGreeting`
- `\AutumnGreeting`
- `\WinterGreeting`

### コンパイル

```bash
# LuaLaTeX（推奨）
lualatex sample-letter-yoko.tex

# upLaTeX
uplatex sample-letter-yoko.tex
dvipdfmx sample-letter-yoko.dvi
```

### プロジェクト構成

```
japanese-letter-latex/
├── README.md                 # このファイル
├── letter-yoko.sty           # 横書き書簡スタイル
├── letter-tate.sty           # 縦書き書簡スタイル
├── envelope-yoko.sty         # 横式封筒スタイル
├── envelope-tate.sty         # 直式封筒スタイル
├── greetings.sty             # 時候の挨拶集
├── examples/                 # サンプルファイル
│   ├── sample-letter-yoko.tex
│   ├── sample-letter-tate.tex
│   ├── sample-envelope-yoko.tex
│   └── sample-envelope-tate.tex
└── docs/
    └── letter-format-guide.md # 書簡格式指南
```

### ライセンス

MIT License

### 貢献

Issue や Pull Request をお持ちしています、ぜひお気軽にどうぞ！
