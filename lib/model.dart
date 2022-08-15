class Question{
 final String text;
 final List<Option>options;
 bool isLocked;
 Option? selectecdOption;

  Question({
     required this.text,
     required this.options,
     this.isLocked=false,
     this.selectecdOption,
  });
}

 class Option {
   final String text;
   final bool isCorrect;
 

 const Option({
    required this.text,
    required this.isCorrect,
 });

 }


 final questions = [

  Question(
    text: 'Where have yor been ? Why are you wearing shorts ? ........ tennis ?',
   options: [
      const Option(text: '(a)   Did you use to play', isCorrect: false),
      const Option(text: '(b)   Did you play', isCorrect: false),
      const Option(text: '(c)   Have you been playing', isCorrect: true),
      const Option(text: '(d)   Have you played', isCorrect: false),
   ],
  ),
         Question(
    text: 'Harry has travelled a lot . He  ....... four or five different languages .',
   options: [
      const Option(text: '(a)   is able to speaking', isCorrect: false),
      const Option(text: '(b)   knows speaking', isCorrect: false),
      const Option(text: '(c)   can speak', isCorrect: true),
      const Option(text: '(d)   knows to speak', isCorrect: false),
   ],
   ),
         Question(
    text: '''I have to meet my wife in ten minutes , I  ....... go now or I'll be late .''',
   options: [
      const Option(text: '(a)   would better', isCorrect: false),
      const Option(text: '(b)   had better', isCorrect: true),
      const Option(text: '(c)   had rather', isCorrect: false),
      const Option(text: '(d)   would rather', isCorrect: false),
   ],
   ),
     Question(
    text: 'I took my car to the garage .......... .',
   options: [
      const Option(text: '(a)   for haveing it serviced', isCorrect: false),
      const Option(text: '(b)   to have it seviced', isCorrect: true),
      const Option(text: '(c)   to service it', isCorrect: false),
      const Option(text: '(d)   for servicing it', isCorrect: false),
   ],
  ),
    Question(
    text: '''The meeting will start at 3 o'clock  ........... so don't be late .''',
   options: [
      const Option(text: '(a)   on the point', isCorrect: false),
      const Option(text: '(b)   in the point', isCorrect: false),
      const Option(text: '(c)   on the dot', isCorrect: true),
      const Option(text: '(d)   in the dot', isCorrect: false),
   ],
  ),
    Question(
    text: 'We get a bonus at the end of the years , the equivalent of  .......... .',
   options: [
      const Option(text: '(a)   a one-month salary', isCorrect: false),
      const Option(text: '(b)   a month\'s salary', isCorrect: false),
      const Option(text: '(c)   the salary of a month', isCorrect: true),
      const Option(text: '(d)   a month\'s salary', isCorrect: false),
   ],
  ),
    Question(
    text: '''I didn't know you were in hospital . if I .......... , I would have come to visit you .''',
   options: [
      const Option(text: '(a)   knew ', isCorrect: false),
      const Option(text: '(b)   would know', isCorrect: false),
      const Option(text: '(c)   would have known', isCorrect: false),
      const Option(text: '(d)   had known', isCorrect: true),
   ],
  ),
   Question(
    text: '''Don't you get lonely sometimes ? No , I'm  ......... alone . In fact , I actually enjoy being on my own .''',
   options: [
      const Option(text: '(a)   use to living  ', isCorrect: false),
      const Option(text: '(b)   use to live ', isCorrect: false),
      const Option(text: '(c)   used to living', isCorrect: true),
      const Option(text: '(d)   used to live', isCorrect: false),
   ],
  ),
   Question(
    text: '''Do you know where  .......... gone ? No , sorry . I've no idea .''',
   options: [
      const Option(text: '(a)   has Frank', isCorrect: false),
      const Option(text: '(b)   is Frank', isCorrect: false),
      const Option(text: '(c)   Frank is', isCorrect: false),
      const Option(text: '(d)   Frank\'s', isCorrect: true),
   ],
  ),
   Question(
    text: '''You haven't got a light , .......... ? Sorry , I don't  smoke .''',
   options: [
      const Option(text: '(a)   haven\'t you', isCorrect: false),
      const Option(text: '(b)   have you', isCorrect: true),
      const Option(text: '(c)   do you', isCorrect: false),
      const Option(text: '(d)   don\'t you', isCorrect: false),
   ],
  ),
   Question(
    text: 'I was just  ........  of going home when the boss asked me to type an urgent letter . ',
   options: [
      const Option(text: '(a)   at the point', isCorrect: false),
      const Option(text: '(b)   on the point', isCorrect: true),
      const Option(text: '(c)   to the point', isCorrect: false),
      const Option(text: '(d)   on the dot', isCorrect: false),
   ],
  ),
   Question(
    text: '''I'd like  ..........  to tidy up the garage next Saturday . It's a terrible mess . ''',
   options: [
      const Option(text: '(a)   you helping me', isCorrect: false),
      const Option(text: '(b)   you to help me', isCorrect: true),
      const Option(text: '(c)   you to help me', isCorrect: false),
      const Option(text: '(d)   that you\'ll help me', isCorrect: false),
   ],
  ),
     Question(
    text: '''Don't phone between 7 and 8 o'clock .  ..........  dinner then and my wife doesn't like being disturbed when we're eating . ''',
   options: [
      const Option(text: '(a)   We\'ll be having', isCorrect: true),
      const Option(text: '(b)   We\'ll have', isCorrect: false),
      const Option(text: '(c)   We\'d have', isCorrect: false),
      const Option(text: '(d)   We\'d be having', isCorrect: false),
   ],
  ),
   Question(
    text: '''I've heard a lot about yourson . He sounds like a very interesting person . I'm looking forward  ............. him . ''',
   options: [
      const Option(text: '(a)   to meet', isCorrect: false),
      const Option(text: '(b)   to meeting', isCorrect: true),
      const Option(text: '(c)   until meeting', isCorrect: false),
      const Option(text: '(d)   until I meet', isCorrect: false),
   ],
  ),
  Question(
    text: '''The exam wasn't too difficult , but I couldn't answer  ...........  .''',
   options: [
      const Option(text: '(a)   to question 4', isCorrect: false),
      const Option(text: '(b)   to the question 4', isCorrect: false),
      const Option(text: '(c)   question 4', isCorrect: true),
      const Option(text: '(d)   the question 4', isCorrect: false),
   ],
  ),
    Question(
    text: '''She woke up in the middle of the night , frightened and confused . Then she recognised her room . Slowly she realised that she  ..............  . ''',
   options: [
      const Option(text: '(a)   had dreamed', isCorrect: false),
      const Option(text: '(b)   had been dreaming', isCorrect: true),
      const Option(text: '(c)   dreamed', isCorrect: false),
      const Option(text: '(d)   was dreaming', isCorrect: false),
   ],
  ),
   Question(
    text: '''I'm going to a wedding in London next week .  ..............  is getting married and I've agreed to act as best man . ''',
   options: [
      const Option(text: '(a)   A friend of mine\'s', isCorrect: false),
      const Option(text: '(b)   One friend of mine', isCorrect: false),
      const Option(text: '(c)   A friend of mine', isCorrect: true),
      const Option(text: '(d)   A friend of me', isCorrect: false),
   ],
  ),
   Question(
    text: '''In my opinion the situation is extremely serious . Something  ..............  before it's too late .''',
   options: [
      const Option(text: '(a)   they must do', isCorrect: false),
      const Option(text: '(b)   must to be done', isCorrect: false),
      const Option(text: '(c)   must be done', isCorrect: true),
      const Option(text: '(d)   have to be done', isCorrect: false),
   ],
  ),
       Question(
    text: '''There have been no changes ,  ..............  the same as before .''',
   options: [
      const Option(text: '(a)   All is ', isCorrect: false),
      const Option(text: '(b)   All things are', isCorrect: false),
      const Option(text: '(c)   Everying is', isCorrect: true),
      const Option(text: '(d)   Everying things are', isCorrect: false),
   ],
  ),    
        Question(
    text: '''The government has decided to increase the tax on cigarettes  ..............  from 1st April  . ''',
   options: [
      const Option(text: '(a)   in effect', isCorrect: false),
      const Option(text: '(b)   with effect', isCorrect: true),
      const Option(text: '(c)   to part', isCorrect: false),
      const Option(text: '(d)   to commence', isCorrect: false),
   ],
  ), 
    Question(
    text: '''Sally wasn't very friendly . She  ..............  to me . ''',
   options: [
      const Option(text: '(a)   spoke hardly', isCorrect: false),
      const Option(text: '(b)   hardly spoke', isCorrect: true),
      const Option(text: '(c)   spoke hard', isCorrect: false),
      const Option(text: '(d)   spoke with hardness', isCorrect: false),
   ],
  ),
      Question(
    text: '''It's  ...............  you can't come to the party . ''',
   options: [
      const Option(text: '(a)   what a pity', isCorrect: false),
      const Option(text: '(b)   such a pity', isCorrect: true),
      const Option(text: '(c)   a such pity', isCorrect: false),
      const Option(text: '(d)   a pain', isCorrect: false),
   ],
  ),
   Question(
    text: '''If hadn't been so tired , I  .............  out . ''',
   options: [
      const Option(text: '(a)   would have gone', isCorrect: true),
      const Option(text: '(b)   would go', isCorrect: false),
      const Option(text: '(c)   had gone', isCorrect: false),
      const Option(text: '(d)   was going', isCorrect: false),
   ],
  ),
  Question(
    text: '''I'm worried about Sue . We haven't heard from her for weeks .Well , .................  as they say . ''',
   options: [
      const Option(text: '(a)   no news is a good sign', isCorrect: false),
      const Option(text: '(b)   new news is bad news', isCorrect: false),
      const Option(text: '(c)   no news is a bad sign', isCorrect: false),
      const Option(text: '(d)   no news is good news', isCorrect: true),
   ],
  ),
  Question(
    text: '''The photocopier isn't working . Try  ..............  the red button .''',
   options: [
      const Option(text: '(a)   pressing on ', isCorrect: false),
      const Option(text: '(b)   to press on ', isCorrect: false),
      const Option(text: '(c)   pressing', isCorrect: true),
      const Option(text: '(d)   to press', isCorrect: false),
   ],
  ),
  Question(
    text: '''Do you know the girl  ..............  to jim ? No , I've never seen her before .''',
   options: [
      const Option(text: '(a)   talking', isCorrect: true),
      const Option(text: '(b)   is talking', isCorrect: false),
      const Option(text: '(c)   who talking', isCorrect: false),
      const Option(text: '(d)   whose talking', isCorrect: false),
   ],
  ),
   Question(
    text: '''Dr Grimski's lecture on climate change has given us all plenty of  .................  .''',
   options: [
      const Option(text: '(a)   food for thoughts', isCorrect: false),
      const Option(text: '(b)   food for thought', isCorrect: true),
      const Option(text: '(c)   thoughts of food', isCorrect: false),
      const Option(text: '(d)   thought for food', isCorrect: false),
   ],
  ),
   Question(
    text: '''Do you want a big bag ? Yeah , ............. . I have a lot of stuff here .''',
   options: [
      const Option(text: '(a)   the bigger , the better', isCorrect: true),
      const Option(text: '(b)   the bigger , better', isCorrect: false),
      const Option(text: '(c)   bigger , better', isCorrect: false),
      const Option(text: '(d)   bigger , the better', isCorrect: false),
   ],
  ),
  Question(
    text: '''It was stupid thing to say . I realise that now . I wish I  ................  it .''',
   options: [
      const Option(text: '(a)   haven\'t said', isCorrect: false),
      const Option(text: '(b)   wouldn\'t have said', isCorrect: false),
      const Option(text: '(c)   didn\'t say', isCorrect: false),
      const Option(text: '(d)   hadn\'t said', isCorrect: true),
   ],
  ),
  Question(
    text: '''So your'e a teacher , eh ? How long  ................  ?''',
   options: [
      const Option(text: '(a)   have you been teaching', isCorrect: true),
      const Option(text: '(b)   have you taught', isCorrect: false),
      const Option(text: '(c)   had you taught', isCorrect: false),
      const Option(text: '(d)   are you teaching', isCorrect: false),
   ],
  ),
 ];