# Contributing to oxycode-skills

Thank you for your interest in contributing! This document provides guidelines and information for contributors.

## How to Contribute

### 1. Fork the Repository

```bash
git clone https://github.com/oxycodeai/OXYCODE-SKILLS.git
cd OXYCODE-SKILLS
```

### 2. Create a Branch

```bash
git checkout -b feature/your-feature-name
```

### 3. Make Your Changes

- Follow the existing code style
- Add tests if applicable
- Update documentation if needed

### 4. Commit Your Changes

```bash
git commit -m "feat: add your feature description"
```

We use [Conventional Commits](https://www.conventionalcommits.org/) format:
- `feat:` for new features
- `fix:` for bug fixes
- `docs:` for documentation
- `style:` for formatting changes
- `refactor:` for code refactoring
- `test:` for adding tests
- `chore:` for maintenance

### 5. Push to Your Fork

```bash
git push origin feature/your-feature-name
```

### 6. Create a Pull Request

Go to the original repository and create a Pull Request from your fork.

## Development Setup

### Prerequisites

- Node.js 18+
- npm or yarn

### Installation

```bash
npm install
```

### Testing

```bash
npm test
```

## Skill Structure

Each skill should follow this structure:

```
skills/
└── skill-name/
    ├── SKILL.md           # Main skill instructions
    ├── references/        # Reference materials
    ├── examples/          # Usage examples
    └── README.md          # Skill documentation
```

### SKILL.md Format

```markdown
# Skill Name

## Description
Brief description of what this skill does.

## Trigger
When this skill should be activated.

## Instructions
Step-by-step instructions for the AI agent.

## Examples
Usage examples with before/after comparisons.

## References
Links to external resources.
```

## Code Style

- Use TypeScript for all new code
- Follow ESLint rules
- Use Prettier for formatting
- Write meaningful commit messages

## Reporting Issues

- Use GitHub Issues
- Include steps to reproduce
- Include expected vs actual behavior
- Include environment details

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

## Questions?

Feel free to open an issue or reach out to the maintainers.
