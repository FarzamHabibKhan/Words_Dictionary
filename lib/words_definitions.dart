import 'package:flutter/material.dart';

const kWordStyle = TextStyle(fontSize: 25);
const kDefinitionStyle = TextStyle(fontSize: 18);

class WordDefinition extends StatefulWidget {
  @override
  State<WordDefinition> createState() => _WordDefinitionState();
}

class _WordDefinitionState extends State<WordDefinition> {
  int tappedWordIndex = 0;

  // returns definition of the tapped word
  Widget getDefinition(int index) {
    if (index == tappedWordIndex) {
      return Text(
        definitions[tappedWordIndex],
        style: kDefinitionStyle,
      );
    } else {
      return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      itemBuilder: (context, int index) {
        return ListTile(
            onTap: () {
              setState(() {
                tappedWordIndex = index;
              });
            },
            title: Text(
              words[index],
              style: kWordStyle,
            ),
            subtitle: getDefinition(index));
      },
      itemCount: words.length,
    );
  }
}

List<String> words = [
  "abbess",
  "abdominous",
  "abelard",
  "abhenry",
  "abnormally",
  "aborigine",
  "absolved",
  "accusation",
  "acquirable",
  "adage",
  "affixation",
  "appellant",
  "backswimmer",
  "backwood",
  "badger",
  "bagpipe",
  "bakeware",
  "bassy",
  "confectioner",
  "confirmatory",
  "entirety",
  "environs",
  "episodic",
  "thin",
];

List<String> definitions = [
  "the superior of a group of nuns",
  "having a large belly",
  "French philosopher and theologian; lover of Heloise (1079-1142)",
  "a unit of inductance equal to one billionth of a henry",
  "in an abnormal manner",
  "a member of the people living in Australia when Europeans arrived",
  "freed from any question of guilt",
  "a formal charge of wrongdoing brought against a person; the act of imputing blame or guilt",
  "capable of being acquired",
  "a condensed but memorable saying embodying some important fact of experience that is taken as true by many people",
  "the act of attaching or affixing something",
  "of or relating to or taking account of appeals (usually legal appeals)",
  "predaceous aquatic insect that swims on its back and may inflict painful bites",
  "(classical mythology) a priestess or votary of Bacchus",
  "annoy persistently",
  "a tubular wind instrument; the player blows air into a bag and squeezes it out through the drone",
  "the condition of having no hair on the top of the head",
  "strong woody fibers obtained especially from the phloem of from various plants",
  "someone who makes candies and other sweets",
  "serving to support or corroborate",
  "the state of being total and complete",
  "an outer adjacent area of any place",
  "occurring or appearing at usually irregular intervals",
  "lacking excess flesh"
];
