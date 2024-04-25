import 'package:flutter/material.dart';
import 'package:pcb_design/components/SocialHandle.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text(
              'Contact Us',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(height: 10),
            InputField(
              labelText: 'Email',
              hintText: 'abc@gmail.com',
            ),
            InputField(
              hintText: 'Is it eco-friendly?',
              labelText: 'Comments',
            ),
          ],
        ),
        SubmitButton(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialHandle(path: 'assets/images/Facebook.png'),
            SocialHandle(path: 'assets/images/LinkedIn.png'),
            SocialHandle(path: 'assets/images/Instagram.png'),
            SocialHandle(path: 'assets/images/Twitter.png'),
          ],
        )
      ],
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 35,
          width: 80,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Color(0xFF40B393),
          ),
          child: const Text(
            'Submit',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class InputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  const InputField({
    super.key,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 3,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            maxLines: labelText == 'Comments' ? 5 : 1,
            maxLength: labelText == 'Comments' ? 240 : 35,
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                hintText: hintText,
                filled: true,
                fillColor: Colors.white.withAlpha(245)),
          ),
        ),
      ],
    );
  }
}
