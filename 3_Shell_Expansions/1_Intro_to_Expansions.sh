: ' 
- when we write a command at the terminal and hit enter, the command is split into tokens and process is called tokenization
- After tokenization, the shell will parse and identify the tokens into simple and compound commands
- Then shell perdforms expansion
- After all expansions, quote removal is performed

- Shell expansion is the procedure to get the value from the referenced entity, like expanding a variable to get its value

- Types of Expansion and its order
  Brace expansion
  Tilde expansion
  Parameter and variable expansion
  Command substitution
  Arithmetic expansion
  Process Substitution
  Word splitting
  Filename expansion(Globbing)

  $ character introduces parameter and variable expansion
  EXAMPLE
  $PATH - expand the variable path to its value
'