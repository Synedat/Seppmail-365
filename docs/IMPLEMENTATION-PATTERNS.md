# Implementation patterns

## Pattern 1: staged connector rollout
Create connectors in a maintenance window, validate certificates and test a subset of trusted senders before enabling broader routing.

## Pattern 2: evidence-first operations
Export the pre-change state, store screenshots or CSV exports, execute the change, and then capture the post-change state in the same ticket.

## Pattern 3: least-privilege automation
Use a dedicated administrative identity for automation and separate it from reviewer identities that only need read access to tenant state.
