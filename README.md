
<a href="https://github.com/my-rspec/mocking-hell-mikuse-team">
    <img src="https://mmiki26.nstrefa.pl/studia/mikuse.PNG" alt="logo" title="mikuse_logo" align="right" height="60" />
</a>

# [![Awesome](https://mmiki26.nstrefa.pl/run.PNG)](https://github.com/my-rspec/mocking-hell-mikuse-team) Sport Timer

<table>
  <tr>
    <td>  <b>Autorzy</b>     </td>
    <td>   <a href="https://github.com/sakovski"> <img src="https://avatars0.githubusercontent.com/u/26367365?s=460&v=4" width="20"> Seweryn Rutkowski</a>, 
    <a href="https://github.com/ronek22"> <img src="https://avatars0.githubusercontent.com/u/5845876?s=460&v=4" width="20"> Jakub Ronkiewicz</a>, 
    <a href="https://github.com/mikolaj-bronk"> <img src="https://avatars3.githubusercontent.com/u/32479479?s=460&v=4" width="20"> Mikołaj Bronk</a>, 
    <a href="https://github.com/mixset"> <img src="https://avatars2.githubusercontent.com/u/7943680?s=460&v=4" width="20"> Dominik Ryńko</a>
    </td>  
  </tr>
  
  <tr>
  <td> <b>Travis Status</b> </td>
  <td> <a href="https://travis-ci.org/my-rspec/mocking-hell-mikuse-team"> <img src="https://travis-ci.org/my-rspec/mocking-hell-mikuse-team.svg?branch=master"></a> </td>
 </tr>
 
 <tr><td> <b>Maintainability</b> </td>
  <td> <a href="https://codeclimate.com/github/my-rspec/mocking-hell-mikuse-team/maintainability"> <img src="https://api.codeclimate.com/v1/badges/9dbd04fdfe072b95d34b/maintainability"></a> </td>
</tr>  
  
  <tr><td> <b>Test Coverage</b> </td>
  <td>  <a href="https://codeclimate.com/github/my-rspec/mocking-hell-mikuse-team/test_coverage"> <img src="https://api.codeclimate.com/v1/badges/9dbd04fdfe072b95d34b/test_coverage"></a></td></tr>
  </table>


# [![Awesome](https://mmiki26.nstrefa.pl/run.PNG)](https://github.com/my-rspec/mocking-hell-mikuse-team) O programie

Sport timer to aplikacja dla biegacza lub trenera personalnego. Służy ona do przechowywania informacji o wynikach sportowców, co pozwala na późniejszą analizę postępu.

# [![Awesome](https://mmiki26.nstrefa.pl/run.PNG)](https://github.com/my-rspec/mocking-hell-mikuse-team) Uruchamianie

Aby uruchomić program z konsoli należy przejść do katalogu `bin` i wpisać komendę:
 
`ruby run`

# [![Awesome](https://mmiki26.nstrefa.pl/run.PNG)](https://github.com/my-rspec/mocking-hell-mikuse-team) Mockowanie


### Person

<table>
  <th>id</th><th>firstname</th><th>lastname</th><th>country</th>
  <tr>
   <td>1</td> <td>Jozef</td> <td>Brzdakal</td> <td>Poland</td>
  </tr>
</table>

### Account
<table>
    <th>id</th><th>login</th><th>password</th><th>Person</th>
  <tr>
     <td>1</td><td>jbrzdakal</td> <td>pass123</td><td>1</td> 
  </tr>
</table>

### Workout

<table>
  <th>id</th><th>Account</th><th>date</th><th>distance</th><th>duration</th>
  <tr>
   <td>1</td> <td>1</td> <td>2018-01-05</td> <td>5</td><td>00:18:30</td>
  </tr>
</table>

### Progress

<table>
  <th>id</th><th>Account</th><th>Workout</th>
  <tr>
   <td>1</td> <td>1</td> <td>1</td>
  </tr>
</table>


