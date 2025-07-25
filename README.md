# Pretendo development setup

Pretendo is quite complex to setup locally, this repository exists to make this as easy as a few steps.

> [!IMPORTANT]
> This codebase cannot be used for hosting as it is highly specialized for development. Using it in production will not work and will also be a security risk.

## How to use

1. Make sure you have all the required tools:
   - Docker desktop or Docker engine (Rootless does not work)
   - Unix style command line (MacOS will work, Use WSL on windows)
   - **Note on windows+WSL**: Make sure to enable `Resources / Network / host networking` in settings
2. Discover what you need to host:
   - `core` -- You always need core, if you're developing something from within core, this repository is not for you
   - `juxtaposition` -- Use if you need to test miiverse features.
   - `boss` -- Use if you need test BOSS features (Streetpass-relay, splatoon rotations, etc)
   - `game-*` -- Use if you need a game to be running
   - **Important:** You don't host what you're actively developing. Don't choose juxtaposition if you're working on juxtaposition.
   - **Example:** When developing miiverse-api and need to test Splatoon integration, choose: Core, BOSS, game-splatoon
3. Following the instructions in `/stacks/core/README.md` - it always needs to running first
4. Follow all the instructions for all the other stacks you choose. You can find them in `/stacks/YOUR_STACK_HERE/README.md`.
5. Read some of the follow-up steps:
   - `Register an account` -- If you need a PNID to test with, run this step
   - `Connect a 3DS` -- Need to connect 3DS hardware to this stack, run this step
   - `Connect a WiiU` -- Need to connect WiiU hardware to this stack, run this step

---

This project is heavily inspired by the work of [MatthewL246](https://github.com/MatthewL246) and their [pretendo-docker](https://github.com/MatthewL246/pretendo-docker) project.
