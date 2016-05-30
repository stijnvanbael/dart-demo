sendEmail(String address, [String name]) {
  if(name != null)
    print('Sending email to $name <$address>');
  else
    print('Sending email to $address');
}

main() {
  sendEmail('john.doe@acme.com');
  sendEmail('john.doe@acme.com', 'John Doe');
}