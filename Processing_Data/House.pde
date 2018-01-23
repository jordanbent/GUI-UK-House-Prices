class House
{
  int price;
  String date;
  String postcode;
  String type;
  String old_new;
  String number;
  String street;
  String locality;
  String town;
  String district;
  String county;

  House(String info)
  {
    String[] data = split(info, ",");

    this.price = int(data[0]);

    data[1] = data[1].substring(0, 8);
    this.date = data[1];

    this.postcode = data[2];
    this.type = data[3];
    this.old_new = data[4];
    this.number = data[5];
    this.street = data[6];
    this.locality = data[7];
    this.town = data[8];
    this.district = data[9];
    this.county = data[10];
  }


  public int compareTo(House in)
  {
    return this.price - in.price;
  }
}