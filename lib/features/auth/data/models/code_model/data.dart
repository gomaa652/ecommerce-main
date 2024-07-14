class Data {
	int? id;
	dynamic name;
	dynamic email;
	String? phone;
	dynamic code;
	int? balance;
	String? fcmToken;
	String? status;
	String? token;

	Data({
		this.id, 
		this.name, 
		this.email, 
		this.phone, 
		this.code, 
		this.balance, 
		this.fcmToken, 
		this.status, 
		this.token, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => Data(
				id: json['id'] as int?,
				name: json['name'] as dynamic,
				email: json['email'] as dynamic,
				phone: json['phone'] as String?,
				code: json['code'] as dynamic,
				balance: json['balance'] as int?,
				fcmToken: json['fcm_token'] as String?,
				status: json['status'] as String?,
				token: json['token'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'email': email,
				'phone': phone,
				'code': code,
				'balance': balance,
				'fcm_token': fcmToken,
				'status': status,
				'token': token,
			};
}
