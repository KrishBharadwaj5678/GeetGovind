import 'package:flutter/material.dart';

class GeetGovindConstant {
  static final List geetGovindLyrics = [
    "श्रितकमलाकुचमण्डल धृतकुण्डल ए |\nकलितललितवनमाल जय जय देव हरे ||",
    "दिनमणिमण्डलमण्डन भवखण्डन ए |\nमुनिजनमानसहंस जय जय देव हरे ||",
    "कालियविषधरगंजन जनरंजन ए |\nयदुकुलनलिनदिनेश जय जय देव हरे ||",
    "मधुमुरनरकविनाशन गरुडासन ए |\nसुरकुलकेलिनिदान जय जय देव हरे ||",
    "राधे कृष्णा हरे गोविंद गोपाला \nनन्द जू को लाला यशोदा दुलाला \nजय जय देव हरे ||",
    "अमलकमलदललोचन भवमोचन ए |\nत्रिभुवनभवननिधान जय जय देव हरे ||",
    "जनकसुताकृतभूषण जितदूषण ए |\nसमरशमितदशकण्ठ जय जय देव हरे ||",
    "अभिनवजलधरसुन्दर धृतमन्दर ए |\nश्रीमुखचन्द्रचकोर जय जय देव हरे ||",
    "तव चरणे प्रणता वयमिति भावय ए |\nकुरु कुशलंव प्रणतेषु जय जय देव हरे ||",
    "श्रीजयदेवकवेरुदितमिदं कुरुते मृदम् |\nमंगलमंजुलगीतं जय जय देव हरे ||",
    "राधे कृष्णा हरे गोविंद गोपाला \nनन्द जू को लाला यशोदा दुलाला \nजय जय देव हरे ||",
  ];
  static TextStyle geetGovindText = TextStyle(
    fontSize: 22.2,
    fontWeight: FontWeight.w500,
  );

  static Map<String, double> buttonSize = {"width": 130, "height": 55};

  static ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    backgroundColor: Color.fromRGBO(227, 187, 41, 1),
  );

  static TextStyle preTxtBtn = TextStyle(
    color: Colors.white,
    fontSize: 17.8,
    fontWeight: FontWeight.w500,
  );

  static TextStyle nxtTxtBtn = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}
