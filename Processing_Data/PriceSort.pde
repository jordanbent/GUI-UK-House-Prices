class PriceSort implements Comparator<House> {

  public int compare(House o1, House o2) {
    return o1.price - o2.price;
  }
}