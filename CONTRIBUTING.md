# Contributing to ISL Translation System

Thank you for considering contributing to the ISL Translation System! This document provides guidelines and instructions for contributing.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When you create a bug report, include as many details as possible:

- Use a clear and descriptive title
- Describe the exact steps to reproduce the problem
- Provide specific examples
- Describe the behavior you observed and what you expected
- Include screenshots if possible
- Note your environment (OS, browser, Node version, etc.)

### Suggesting Enhancements

Enhancement suggestions are welcome! Please:

- Use a clear and descriptive title
- Provide a detailed description of the proposed enhancement
- Explain why this enhancement would be useful
- List any alternatives you've considered

### Pull Requests

1. Fork the repository
2. Create a new branch: `git checkout -b feature/your-feature-name`
3. Make your changes
4. Write or update tests as needed
5. Update documentation as needed
6. Commit your changes: `git commit -m 'Add some feature'`
7. Push to the branch: `git push origin feature/your-feature-name`
8. Submit a pull request

## Development Guidelines

### Code Style

#### JavaScript/React
- Use ES6+ features
- Follow Airbnb JavaScript Style Guide
- Use meaningful variable and function names
- Add comments for complex logic
- Keep components small and focused

#### Python
- Follow PEP 8 style guide
- Use type hints where appropriate
- Document functions with docstrings

### Commit Messages

- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters
- Reference issues and pull requests

### Testing

- Write tests for new features
- Ensure all tests pass before submitting PR
- Maintain or improve code coverage

## Project Structure

```
client/         - React frontend
server/         - Express backend
ml-model/       - ML service
```

### Adding New Features

#### Frontend (React)
1. Create component in `client/src/components/` or `client/src/pages/`
2. Add routing if needed in `App.js`
3. Update navigation in `Navbar.js`
4. Add styles in corresponding CSS file

#### Backend (Express)
1. Create model in `server/models/`
2. Create routes in `server/routes/`
3. Update `server/index.js` to use new routes
4. Document API endpoints

#### ML Model
1. Update training script in `ml-model/train_model.py`
2. Update prediction logic in `ml-model/app.py`
3. Document model architecture and performance

## ISL Data Collection

If contributing ISL gesture data:

1. Ensure proper consent and permissions
2. Follow consistent image/video format
3. Include diverse hand sizes and skin tones
4. Label data accurately
5. Document data sources

## Accessibility Guidelines

This project prioritizes accessibility:

- Use semantic HTML
- Provide alt text for images
- Ensure keyboard navigation works
- Maintain sufficient color contrast
- Test with screen readers
- Support responsive design

## Code of Conduct

### Our Pledge

We pledge to make participation in our project a harassment-free experience for everyone, regardless of age, body size, disability, ethnicity, gender identity, level of experience, nationality, personal appearance, race, religion, or sexual identity and orientation.

### Our Standards

Positive behaviors:
- Using welcoming and inclusive language
- Being respectful of differing viewpoints
- Gracefully accepting constructive criticism
- Focusing on what's best for the community
- Showing empathy towards others

Unacceptable behaviors:
- Trolling, insulting/derogatory comments
- Public or private harassment
- Publishing others' private information
- Other conduct inappropriate in a professional setting

## Recognition

Contributors will be recognized in:
- README.md contributors section
- Release notes for significant contributions

## Questions?

Feel free to open an issue for questions or reach out to the maintainers.

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing to making communication more accessible! 🙏



