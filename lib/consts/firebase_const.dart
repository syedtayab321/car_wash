import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
User? currentuser = auth.currentUser;
/////////
////collections
const userCollection = "users";
const productscollection = "products";
const cartcollection = "cart";
const Chatscollection = "chats";
const Messagingcollection = "messages";
const orderscollection = "orders";
