class RetornaValor<T> {
  T values;

  RetornaValor(this.values);

  T mostraValor() {
    print(values);
    return values;
  }
}

void main() {
  RetornaValor<int> sla = RetornaValor(1);

  sla.mostraValor();
}
