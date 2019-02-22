# custom_titleize
A custom method that will not capitalize every word in the string.
### Method Call
```
String.titleize(custom,articles)
```
### Parameters
  - custom == Boolean
    - false (DEFAULT) => default titleize behavior
    - true => custom titleize behavior
  - articles == Array
    - ['a','an','the' ... ]
    
### Examples
```
'x is a test. a is also an amazing test! will c be the final test?'.titleize(true)
  => "X is a Test. A is Also an Amazing Test! Will C Be the Final Test?" 
```
```
'the string is being titleized correctly! as a final test, hello world! it better work.'.titleize true
  => "The String is Being Titleized Correctly! As a Final Test, Hello World! It Better Work." 
```
```
'1.) test'.titleize
  => "1.) Test" 
```
```
'1.) a test'.titleize
  => "1.) A Test" 
  ```
