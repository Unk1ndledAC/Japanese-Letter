# Contributing to Japanese Letter LaTeX Templates
# 日本語書簡 LaTeX テンプレートへの貢献

Thank you for your interest in contributing! Here's how you can help.

## Ways to Contribute

1. **Report Issues** - Found a bug or have a suggestion? Open an issue!
2. **Submit Pull Requests** - Fix bugs, add features, or improve documentation
3. **Share Examples** - Add your own sample letters to the examples folder
4. **Improve Documentation** - Help translate or enhance the guides

## Development Setup

### Prerequisites

- LaTeX distribution (TeX Live, MacTeX, or MiKTeX)
- `jlreq` package
- Japanese fonts

### Testing Your Changes

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/japanese-letter-latex.git
cd japanese-letter-latex

# Build examples
make examples

# Or compile manually
lualatex examples/sample-letter-yoko.tex
```

## Code Style

- Use UTF-8 encoding
- Follow existing code structure
- Add comments in Japanese and/or English
- Test with both LuaLaTeX and upLaTeX when possible

## Pull Request Process

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Project Structure

```
japanese-letter-latex/
├── *.sty              # Style files (templates)
├── examples/          # Sample documents
├── docs/              # Documentation
└── CONTRIBUTING.md    # This file
```

## Questions?

Feel free to open an issue or contact the maintainers.

---

貢献に興味をお持ちいただきありがとうございます！以下の方法で参加できます。

## 貢献方法

1. **Issue の報告** - バグを発見したり、提案をお持ちの場合は Issue を開いてください
2. **Pull Request の送信** - バグの修正、機能追加、文档の改善
3. **サンプルの共有** - ご自身のサンプル書簡を examples フォルダに追加
4. **ドキュメントの改善** - ガイドの翻訳や強化にご連絡ください

## 開発環境のセットアップ

```bash
git clone https://github.com/YOUR_USERNAME/japanese-letter-latex.git
cd japanese-letter-latex
make examples
```

## コーディングスタイル

- UTF-8 エンコーディングを使用
- 既存のコード構造に従ってください
- 日本語または英語（またはその両方）でコメントを追加
- 可能な限り LuaLaTeX と upLaTeX の両方でテスト

## Pull Request の流れ

1. リポジトリを Fork
2. フィーチャーブランチを作成 (`git checkout -b feature/素晴らしい機能`)
3. 変更をコミット (`git commit -m '素晴らしい機能を追加'`)
4. ブランチにプッシュ (`git push origin feature/素晴らしい機能`)
5. Pull Request を開く

質問や不明な点があれば、お気軽に issue を開くか、メインテナーにお問い合わせください。
