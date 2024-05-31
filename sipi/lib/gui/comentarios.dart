import 'package:flutter/material.dart';
import 'package:sipi/dominio/comentario.dart';

class CommentsSection extends StatefulWidget {
  @override
  _CommentsSectionState createState() => _CommentsSectionState();
}

class _CommentsSectionState extends State<CommentsSection> {
  final List<Comentario> _comments = [];
  final TextEditingController _commentController = TextEditingController();

  void _addComment(String text) {
    setState(() {
      //_comments.add(Comentario(text));
    });
    //_commentController.clear();
  }

  void _toggleLike(Comentario comment) {
    setState(() {
      //comment.isLiked = !comment.isLiked;
    });
  }

  void _toggleDislike(Comentario comment) {
    setState(() {
      //comment.isDisliked = !comment.isDisliked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ..._comments.map((comment) {
          return ListTile(
            title: Text("comment.text"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    /*comment.isLiked ? Icons.thumb_up :*/ Icons.thumb_up_off_alt,
                    //color: comment.isLiked ? Colors.blue : null,
                  ),
                  onPressed: () => _toggleLike(comment),
                ),
                IconButton(
                  icon: Icon(
                    /*comment.isDisliked ? Icons.thumb_down :*/ Icons.thumb_down_off_alt,
                    //color: comment.isDisliked ? Colors.red : null,
                  ),
                  onPressed: () => _toggleDislike(comment),
                ),
              ],
            ),
          );
        }).toList(),
        TextField(
          controller: _commentController,
          decoration: InputDecoration(
            labelText: 'Escribe un comentario...',
            suffixIcon: IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _addComment(_commentController.text),
            ),
          ),
        ),
      ],
    );
  }
}