# Vampire Bite Apple — User Stories and Requirements

## User Story 1 — Display the Main Characters

**Type:** Functional Requirement

**User Story:**  
As a player, I want to see a vampire and an apple on the screen so that I can clearly understand the main subject and object of the animation.

**Acceptance Criterion 1.1:**  
Given the program has started, when the main scene is displayed, then a visible vampire character should appear on the screen.

**Acceptance Criterion 1.2:**  
Given the program has started, when the main scene is displayed, then a visible apple should appear on the screen.

---

## User Story 2 — Vampire Movement

**Type:** Functional Requirement

**User Story:**  
As a player, I want to control the vampire using the arrow keys so that I can move the vampire towards the apple.

**Acceptance Criterion 2.1:**  
Given the program is running, when the player presses the left arrow key, then the vampire should move to the left.

**Acceptance Criterion 2.2:**  
Given the program is running, when the player presses the right arrow key, then the vampire should move to the right.

---

## User Story 3 — Screen Boundaries

**Type:** Functional Requirement

**User Story:**  
As a player, I want the vampire to remain inside the program window so that the character is always visible and controllable.

**Acceptance Criterion 3.1:**  
Given the vampire is at the left edge of the screen, when the player attempts to move further left, then the vampire should remain within the visible window.

**Acceptance Criterion 3.2:**  
Given the vampire is at the right edge of the screen, when the player attempts to move further right, then the vampire should remain within the visible window.

---

## User Story 4 — Bite the Apple

**Type:** Functional Requirement

**User Story:**  
As a player, I want the vampire to bite the apple when it is close enough so that I can perform the main action of the animation.

**Acceptance Criterion 4.1:**  
Given the vampire is within biting distance of the apple, when the player presses the Space key, then one successful bite should be registered.

**Acceptance Criterion 4.2:**  
Given the vampire is outside biting distance of the apple, when the player presses the Space key, then no bite should be registered.

---

## User Story 5 — Bite Progress and Completion

**Type:** Functional Requirement

**User Story:**  
As a player, I want to see the result of each successful bite so that I can understand my progress towards eating the apple.

**Acceptance Criterion 5.1:**  
Given the vampire successfully bites the apple, when the program updates, then the apple should visibly change to show that it has been bitten.

**Acceptance Criterion 5.2:**  
Given a successful bite occurs, when the program updates the game state, then the bite count or score should increase.

**Acceptance Criterion 5.3:**  
Given the apple has received the required number of bites, when the final successful bite occurs, then a completion message should be displayed.

---

## User Story 6 — Restart the Animation

**Type:** Functional Requirement

**User Story:**  
As a player, I want to restart the animation after completing it so that I can play it again without restarting the Processing program.

**Acceptance Criterion 6.1:**  
Given the animation has been completed, when the player presses the R key, then the vampire position, apple state, score and completion state should return to their initial values.

---

## User Story 7 — Reliable Keyboard Interaction

**Type:** Non-Functional Requirement

**User Story:**  
As a player, I want the program to respond reliably to keyboard input so that I can interact with the animation without unexpected crashes or freezes.

**Acceptance Criterion 7.1:**  
Given the program is running, when the player repeatedly uses the movement, bite and restart controls during normal operation, then the program should continue running without crashing or freezing.

**Acceptance Criterion 7.2:**  
Given a valid keyboard control is pressed, when the input is detected by the program, then the corresponding action should respond without a noticeable delay.
