class Country {
  final String? id;
  final String? order_id;
  final String? order_amount;
  final String? payment_status;
  final String? created_at;
  final String? updated_at;
  final String? series_id;
  final String? brand_details;
  final String? model_details;

  Country(
      {this.id,
      this.order_id,
      this.order_amount,
      this.payment_status,
      this.created_at,
      this.updated_at,
      this.series_id,
      this.brand_details,
      this.model_details});
  factory Country.fromJson(Map<String, dynamic> json) {
    return new Country(
      id: json['id'] as String,
      order_id: json['order_id'] as String,
      order_amount: json['order_amount'] as String,
      payment_status: json['payment_status']as String,
      created_at: json['created_at']as String,
      updated_at: json['updated_at']as String,
        series_id: json['series_id']as String,
        brand_details: Brand_details.fromJson(json["brand_details"])as String,
        // brand_details:json['brand_details']as String,
        model_details:json['model_details']as String
    );
  }
}
class Brand_details{
  // "id": 4,
  // "name": "Apple",
  // "logo": "Brand/logo/wUtgcKuhqk9NBe2FZuX0Oe6T5wXlod.png",
  // "status": "active",
  // "created_at": "2021-07-31T11:25:49.000000Z",
  // "updated_at": "2021-07-31T11:25:49.000000Z"
  final String? ids;
  final String? name;
  final String? status;
  final String? created;
  final String? updated;
  Brand_details({
this.ids, this.name,this.status,this.created,this.updated
});
  factory Brand_details.fromJson(Map<String, dynamic> json) {
    return new Brand_details(
      ids: json['id']as String,
      name: json['name'],
      status: json['status'],
      created: json['created_at'],
      updated: json['updated_at'],
      // id: json['id'] as String,
    );
  }
  }