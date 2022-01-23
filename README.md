# DESAFIO PLATHANUS

## Exercise 1: algorithm
* Option 1:
```
Please submit your solution to at least one of the 3 programming options below. 

Write a program to convert a natural number to its Roman number equivalent. See

https://en.wikipedia.org/wiki/Roman_numerals for the rules concerning the construction of Roman numbers using Roman numerals.

```

## BACKEND SOLUTION
* Foi feito o algoritmo seguindo até a milhar;
* Foi feito deploy no heroku
### Instruções:
* No aplicativo Postman ou similiar
```
url(post): https://plathanus-desafio.herokuapp.com/roman
body (json):
{
	"data": {
		"arabic": 4999
	}
}
```

### Observação
* Números arabicos > 4000, vão apresentar um - indicando leitura de mil