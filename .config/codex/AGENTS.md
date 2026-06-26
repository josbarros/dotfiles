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

- Split non-trivial work into the smallest possible user stories during planning.
- Each story must cover one user-visible outcome, or one tiny technical-enabling step that directly supports that outcome.
- Do not combine multiple outcomes, phases, or implementation tasks into a single story.
- Include short, observable acceptance criteria for each story.
- When an E2E framework is present, wire the E2E path before implementing any user-facing story.
- When an E2E framework is present, user-facing stories must include E2E coverage in their acceptance criteria or implementation tasks.
- After finishing a story, ask the user for permission before starting the next story.
- Pure infrastructure, tooling, and refactor stories are exempt unless they directly change a user-visible flow.
- Keep the breakdown lightweight and practical rather than turning it into a heavy spec.

## Change Control

- Follow existing configurations and repo instructions before personal preference.
- For any code change, start with a failing test first unless the work is explicitly exempt.
- Explicit exemptions are docs, config, tooling, exploratory reads, and other non-code edits.
- If the work cannot be expressed with a meaningful failing test, stop and ask before bypassing TDD.
- Implement TDD layer by layer: write the failing test for the lowest relevant layer first, then grow upward.
- Follow the red-green-refactor cycle: write or update the test, confirm it fails, implement the minimum change, then refactor.
- For layered work, start from lower layers first so implementation can grow upward cleanly.
- Keep changes aligned with architectural layers instead of reshaping things model by model unless the repo already does that.

## Java Projects

- Prefer the machine-installed Gradle on this workstation first when working in Java repos, unless the repo clearly requires `./gradlew` or another build flow.
- Use the repo's own build and test instructions when they exist.
- Prefer targeted tests before broad suites.
- Avoid adding extra infrastructure unless the repo already uses it or the change clearly needs it.
- Prefer `EmbeddedMongo` for Mongo-related Java tests by default.
- Use Docker Compose for real E2E tests; do not use `EmbeddedMongo` for E2E coverage.
- Follow the repo's package, naming, and formatting conventions rather than introducing new style rules.
