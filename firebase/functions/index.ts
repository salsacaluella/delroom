import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';

admin.initializeApp();

// Example Cloud Function for handling bookings
export const createBooking = functions.firestore
  .document('bookings/{bookingId}')
  .onCreate(async (snap, context) => {
    const bookingData = snap.data();
    
    // TODO: Add booking logic here
    // - Send confirmation email
    // - Update room availability
    // - Process payment
    
    console.log('New booking created:', bookingData);
  });

// Example Cloud Function for user management
export const onUserCreate = functions.auth.user().onCreate(async (user) => {
  // TODO: Create user document in Firestore
  const userDoc = {
    uid: user.uid,
    email: user.email,
    displayName: user.displayName,
    createdAt: admin.firestore.FieldValue.serverTimestamp(),
  };
  
  return admin.firestore().collection('users').doc(user.uid).set(userDoc);
});