# better_gtask

Google Tasks on Flutter

# Libraries used
- riverpod - reactive state management
- freezed - immutable models
- isar - local storage
- googleapis - access to gtask api
- connectivity - observing internet status
- go_router - routing
- very_good_infinite_list - infinite scrolling
  
# Features
- Optimistic data updates
  - First fetch fetched in parallel from local storage and remote storage
  - Adding new data adds it immediately into local storage with pending status and submits to remote storage. If fails, marks it to draft.
  - Observing internet connectivity status and reacting to it
- Pull to refresh
- Undo