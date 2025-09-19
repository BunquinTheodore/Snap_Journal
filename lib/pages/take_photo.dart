import 'dart:developer' as developer;

import 'package:flutter/material.dart';

class TakePhoto extends StatefulWidget {
	const TakePhoto({super.key});
	@override
		TakePhotoState createState() => TakePhotoState();
	}
class TakePhotoState extends State<TakePhoto> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: Container(
					constraints: const BoxConstraints.expand(),
					color: Color(0xFFFFFFFF),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Expanded(
								child: Container(
									decoration: BoxDecoration(
										borderRadius: BorderRadius.circular(24),
										color: Color(0xFFFFFFFF),
										boxShadow: [
											BoxShadow(
												color: Color(0x1A000000),
												blurRadius: 20,
												offset: Offset(0, 10),
											),
										],
									),
									width: double.infinity,
									height: double.infinity,
									child: SingleChildScrollView(
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												IntrinsicHeight(
													child: Container(
														color: Color(0xFF000000),
														width: double.infinity,
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																IntrinsicHeight(
																	child: Container(
																		margin: const EdgeInsets.only( bottom: 333),
																		width: double.infinity,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				image: NetworkImage("https://storage.googleapis.com/tagjs-prod.appspot.com/v1/8Bwc2SsGG9/cman8nts_expires_30_days.png"),
																				fit: BoxFit.cover
																			),
																		),
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: SizedBox(
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: SizedBox(
																											width: double.infinity,
																											child: Stack(
																												clipBehavior: Clip.none,
																												children: [
																													Column(
																														crossAxisAlignment: CrossAxisAlignment.start,
																														children: [
																															Container(
																																decoration: BoxDecoration(
																																	border: Border.all(
																																		color: Color(0x33FFFEFE),
																																		width: 1,
																																	),
																																),
																																height: 85,
																																width: double.infinity,
																																child: SizedBox(),
																															),
																														]
																													),
																													Positioned(
																														top: 0,
																														left: 0,
																														width: 384,
																														child: IntrinsicHeight(
																															child: Container(
																																decoration: BoxDecoration(
																																	gradient: LinearGradient(
																																		begin: Alignment(-1, -1),
																																		end: Alignment(-1, 1),
																																		colors: [
																																			Color(0x80000000),
																																			Color(0x00000000),
																																		],
																																	),
																																),
																																width: 384,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			margin: const EdgeInsets.only( top: 24, bottom: 24, left: 26),
																																			width: 16,
																																			height: 16,
																																			child: Image.network(
																																				"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/8Bwc2SsGG9/ksi5tbex_expires_30_days.png",
																																				fit: BoxFit.fill,
																																			)
																																		),
																																	]
																																),
																															),
																														),
																													),
																												]
																											),
																										),
																									),
																								),
																								Expanded(
																									child: Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0x33FFFEFE),
																												width: 1,
																											),
																										),
																										height: 85,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																								),
																								Expanded(
																									child: Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0x33FFFEFE),
																												width: 1,
																											),
																										),
																										height: 85,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: SizedBox(
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0x33FFFEFE),
																												width: 1,
																											),
																										),
																										height: 85,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																								),
																								Expanded(
																									child: Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0x33FFFEFE),
																												width: 1,
																											),
																										),
																										height: 85,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																								),
																								Expanded(
																									child: Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0x33FFFEFE),
																												width: 1,
																											),
																										),
																										height: 85,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: SizedBox(
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0x33FFFEFE),
																												width: 1,
																											),
																										),
																										height: 85,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																								),
																								Expanded(
																									child: Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0x33FFFEFE),
																												width: 1,
																											),
																										),
																										height: 85,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																								),
																								Expanded(
																									child: Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0x33FFFEFE),
																												width: 1,
																											),
																										),
																										height: 85,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																								),
																							]
																						),
																					),
																				),
																			]
																		),
																	),
																),
																IntrinsicHeight(
																	child: Container(
																		decoration: BoxDecoration(
																			gradient: LinearGradient(
																				begin: Alignment(-1, -1),
																				end: Alignment(-1, 1),
																				colors: [
																					Color(0xB0000000),
																					Color(0x00000000),
																				],
																			),
																		),
																		padding: const EdgeInsets.symmetric(vertical: 40),
																		width: double.infinity,
																		child: Column(
																			children: [
																				InkWell(
																					onTap: () 
                                          { developer.log ('Pressed'); },
																					child: IntrinsicWidth(
																						child: IntrinsicHeight(
																							child: Container(
																								decoration: BoxDecoration(
																									border: Border.all(
																										color: Color(0xFFD0D5DB),
																										width: 4,
																									),
																									borderRadius: BorderRadius.circular(33554400),
																									color: Color(0xFFFFFFFF),
																									boxShadow: [
																										BoxShadow(
																											color: Color(0x1A000000),
																											blurRadius: 6,
																											offset: Offset(0, 4),
																										),
																									],
																								),
																								padding: const EdgeInsets.all(8),
																								child: Column(
																									crossAxisAlignment: CrossAxisAlignment.start,
																									children: [
																										Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(33554400),
																												color: Color(0xFFFFFFFF),
																												boxShadow: [
																													BoxShadow(
																														color: Color(0x0D000000),
																														blurRadius: 4,
																														offset: Offset(0, 2),
																													),
																												],
																											),
																											width: 64,
																											height: 64,
																											child: SizedBox(),
																										),
																									]
																								),
																							),
																						),
																					),
																				),
																			]
																		),
																	),
																),
															]
														),
													),
												),
											],
										)
									),
								),
							),
						],
					),
				),
			),
		);
	}
}