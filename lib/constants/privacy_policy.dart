import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15).h,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'At popcornTime, we value your privacy and are committed to protecting the personally identifiable information (such as name, address, and telephone number) you entrust to us. We adhere to stringent standards to safeguard your privacy on our platform.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'Information Collection:',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'Personally Identifiable Information: We may collect personal information, including but not limited to your name, email, physical address, and telephone number, which you voluntarily provide to us.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'Automatically Collected Information: When you interact with our website or mobile application, we may gather certain information through technologies like cookies, SDKs, and others. This may include your IP address, device information, location, and network carrier.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'Use of Information:',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'We utilize the collected information for behavioral analytics and personalization, aiming to enhance your experience on our platform.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'popcornTime may share your information with third parties that integrate with our services or those we integrate with, always with your consent or where required by law.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'Opting Out and Access:',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'You have the option not to provide personally identifiable information. However, this might limit your access to certain features and services on popcornTime.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'We will notify you before sharing your information with third parties and provide you with the opportunity to opt out of certain uses of your data.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'Data Security:',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'We employ advanced technology, security features, and strict policy guidelines to protect your personally identifiable information from unauthorized access, misuse, or disclosure.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'As new technologies emerge, we continuously enhance our security measures to ensure the integrity of your data.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'Policy Updates:',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'Any changes to our privacy policy will be promptly communicated on our platform, along with an updated effective date. We encourage you to review our privacy policy regularly to stay informed about our practices.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'Contact Us:',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'For any questions or concerns regarding your privacy or this privacy policy, please reach out to us. We strive to address all reasonable inquiries within five business days.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'By using popcornTime, you agree to the terms outlined in this privacy policy. Your continued use of our services constitutes acceptance of any updates or modifications to this policy.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'popcornTime reserves the right to modify this privacy policy at any time without prior notice. Please refer to this page regularly for updates.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 25,
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
