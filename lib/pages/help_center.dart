import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text('FAQ',style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Accordion(
        headerBorderColor: Colors.black12,
        headerBackgroundColor: Colors.black12,
        headerBorderColorOpened: Colors.black12,
        headerBackgroundColorOpened: Colors.black12,
        contentBackgroundColor: Colors.black12,
        contentBorderWidth: 0,
        contentHorizontalPadding: 20,
        scaleWhenAnimating: true,
        openAndCloseAnimation: true,
        headerPadding:
        const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
        sectionClosingHapticFeedback: SectionHapticFeedback.light,
        children: [
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('How do I register with popcornTime ?'),
            content: const Text(
                "Click on the 'Register' link on the homepage of popcornTime.com. Enter your full name, Email id., contact number, password and click on 'Submit' and you are registered with us."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('Why am I being asked for my Mobile number ?'),
            content: const Text(
                "Well, the simplest reason being that it is for the security of your transaction and also so that the booking confirmation can be sent to you via SMS. What's more, you also get the dope on discounts and offers."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('What are the benefits of registering on the site ?'),
            content: const Text(
                "By registering, you get access to your booking history on the site. You can also opt to get information on special offers."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('I have forgotten my password, how do I proceed?'),
            content: const Text(
                "On the popcornTime home page, enter your username in the login box on the top right hand corner, click on the Forgot Password link, and the password will be emailed to you on the email address registered with us."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('When does advance booking open on popcornTime ?'),
            content: const Text(
                "Commencement of booking depends entirely on cinema planning and the release date of the movie. Whenever the cinema opens the show for advance booking, the show is automatically made available on popcornTime."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('Do you charge extra fees for a booking ?'),
            content: const Text(
                "popcornTime internet handling fees of Rs. 5/- to Rs. 25/- (depending on the ticket price) per ticket and tax on the convenience fee w.e.f. July 1, 2009. Plus government taxes if applicable. "),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('Can I choose my seat at the cinema ?'),
            content: const Text(
                "Absolutely, this is one of the most beneficial features we offer so that our customers have a good ticketing experience. You have the choice of selecting or changing your seats at every step of the transaction. This facility is available to only those venues that offer seat selection."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('How many tickets can I book in one transaction ?'),
            content: const Text(
                "You are allowed a maximum of 10 tickets per transaction in each area category of the cinema screen. The maximum quantity of tickets available may vary from time to time. "),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('Is there a cut off time for booking tickets? '),
            content: const Text(
                " The cut-off time for booking may vary from cinema to cinema as it is governed by the cinema. It's usually 1-2 hours before the show start time."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('How can I confirm whether my tickets have been booked ?'),
            content: const Text(
                "As soon as your booking is confirmed, a confirmation e-mail and SMS containing your booking details is sent across to the contact details entered while booking. In case you have not received the confirmation e-mail/SMS, please click on the 'Resend Confirmation' button on the homepage and enter the contact details used while transacting, a confirmation e-mail/SMS would be resent to you."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('How much time before the show do I have to collect my tickets? '),
            content: const Text(
                "Since the ticket is already paid for, it is available for collection at the box office at any time before the show. However, we recommend collecting the ticket 10-15 minutes earlier in case of a last minute queue at the box office."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('I accidentally booked my tickets for today instead of tomorrow, can you change the tickets ?'),
            content: const Text(
                "Tickets once booked are deemed sold. Hence it is not possible to cancel, replace or refund a confirmed booking."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('Can I change my seat numbers ?'),
            content: const Text(
                "No. It is not possible to change the seat numbers of a ticket once booked."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('Can I change the show time that I have booked for ?'),
            content: const Text(
                "Once a ticket is booked, it is deemed as sold and there is no privilege to revise the booking details."),
          ),
          AccordionSection(
            rightIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 20,),
            leftIcon: const Icon(Icons.help_outline,size: 20,),
            header: const Text('Can we cancel or replace our tickets ?'),
            content: const Text(
                "As per cinema policy, once a ticket has been paid for, it is deemed sold. It cannot be replaced or cancelled."),
          ),

        ],
      ),
    );
  }
}
