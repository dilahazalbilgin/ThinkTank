import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import '../../Screens/SoruSor.dart';

class ItemContainer extends StatefulWidget {
  const ItemContainer({
    Key? key,
    required this.imgPath,
    required this.reactions,
  }) : super(key: key);

  final String imgPath;
  final List<Reaction<String>> reactions;

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer>
    with AutomaticKeepAliveClientMixin {
  String? _selectedReaction;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: AspectRatio(
        aspectRatio: 2,
        child: Stack(
          children: [
            Card(
              margin: EdgeInsets.zero,
              elevation: 2,
              clipBehavior: Clip.antiAlias,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: ReactionContainer<String>(
                onReactionChanged: (String? value) {
                  setState(() {
                    _selectedReaction = value;
                  });
                  debugPrint('Selected value: $value');
                },
                reactions: widget.reactions,
                child: Image.asset(
                  widget.imgPath,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
