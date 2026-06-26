# Global Codex Preferences

This file sets my default preferences for any repo I work in.
Repo-local `AGENTS.md` files, repo docs, and existing build/test configs always win when they conflict with this file.

## Working Style

- Keep updates concise and direct.
- Prefer practical, scoped changes over broad abstractions.
- Read the repo and follow existing conventions before inventing new ones.
- Use the smallest useful test set first, then widen only when the change or risk justifies it.
- Ask when the right path is unclear or when the impact is genuinely large.

## Planning

- Split non-trivial work into user stories during planning.
- Include short acceptance criteria for each story.
- Keep the breakdown lightweight and practical rather than turning it into a heavy spec.

## Change Control

- Follow existing configurations and repo instructions before personal preference.
- Prefer TDD when it fits the task and the repo flow.
- For layered work, start from lower layers first so implementation can grow upward cleanly.
- Keep changes aligned with architectural layers instead of reshaping things model by model unless the repo already does that.

## Java Projects

- Prefer the machine-installed Gradle on this workstation first when working in Java repos, unless the repo clearly requires `./gradlew` or another build flow.
- Use the repo's own build and test instructions when they exist.
- Prefer targeted tests before broad suites.
- Avoid adding extra infrastructure unless the repo already uses it or the change clearly needs it.
- Prefer `EmbeddedMongo` over `Testcontainers` for Mongo-related Java tests by default.
- Follow the repo's package, naming, and formatting conventions rather than introducing new style rules.
