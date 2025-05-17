{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 472.0, 410.0, 708.0, 361.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 155.0, 272.0, 68.0, 22.0 ],
					"text" : "mc.stereo~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 28.0, 87.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 28.0, 127.0, 68.0, 22.0 ],
					"text" : "sats.waves"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 450.0, 338.0, 599.0, 262.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 32.0, 207.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 32.0, 27.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 358.0, 27.0, 38.0, 22.0 ],
									"text" : "pink~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"lastchannelcount" : 32,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 32.0, 139.0, 218.0, 50.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "mc.live.gain~[4]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 3,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "pink",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "mc.live.gain~[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 32,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 32.0, 101.0, 344.5, 22.0 ],
									"text" : "mc.pack~ 32"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 32,
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 32.0, 62.0, 344.5, 22.0 ],
									"text" : "gate~ 32"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 31 ],
									"source" : [ "obj-2", 31 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 30 ],
									"source" : [ "obj-2", 30 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 29 ],
									"source" : [ "obj-2", 29 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 28 ],
									"source" : [ "obj-2", 28 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 27 ],
									"source" : [ "obj-2", 27 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 26 ],
									"source" : [ "obj-2", 26 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 25 ],
									"source" : [ "obj-2", 25 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 24 ],
									"source" : [ "obj-2", 24 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 23 ],
									"source" : [ "obj-2", 23 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 22 ],
									"source" : [ "obj-2", 22 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 21 ],
									"source" : [ "obj-2", 21 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 20 ],
									"source" : [ "obj-2", 20 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 19 ],
									"source" : [ "obj-2", 19 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 18 ],
									"source" : [ "obj-2", 18 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 17 ],
									"source" : [ "obj-2", 17 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 16 ],
									"source" : [ "obj-2", 16 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 15 ],
									"source" : [ "obj-2", 15 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 14 ],
									"source" : [ "obj-2", 14 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 13 ],
									"source" : [ "obj-2", 13 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 12 ],
									"source" : [ "obj-2", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 11 ],
									"source" : [ "obj-2", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 10 ],
									"source" : [ "obj-2", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 9 ],
									"source" : [ "obj-2", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 8 ],
									"source" : [ "obj-2", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 7 ],
									"source" : [ "obj-2", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 6 ],
									"source" : [ "obj-2", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 5 ],
									"source" : [ "obj-2", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 4 ],
									"source" : [ "obj-2", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 3 ],
									"source" : [ "obj-2", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 2 ],
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"originid" : "pat-3536"
					}
,
					"patching_rect" : [ 93.0, 272.0, 41.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p pink"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 18.0, 200.0, 20.0 ],
					"text" : "memory planes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 581.0, 519.0, 446.0, 249.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 139.0, 146.5, 31.0, 22.0 ],
									"text" : "plug"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 223.0, 61.5, 107.0, 22.0 ],
									"text" : "\"Analyzer Mode\" 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 163.0, 61.5, 41.0, 22.0 ],
									"text" : "Mix 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 163.0, 19.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 261.0, 105.0, 163.0, 20.0 ],
									"text" : "dsp cathedral setting"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 24.0, 19.0, 121.0, 22.0 ],
									"text" : "mc.receive~ reverb 6"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 189.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 24.0, 146.5, 97.0, 22.0 ],
									"text" : "mc.interleave~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "multichannelsignal" ],
									"patching_rect" : [ 24.0, 61.5, 110.0, 22.0 ],
									"text" : "mc.deinterleave~ 2"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"data" : 									{
										"autosave" : 1,
										"snapshot" : 										{
											"filetype" : "C74Snapshot",
											"version" : 2,
											"minorversion" : 0,
											"name" : "snapshotlist",
											"origin" : "vst~",
											"type" : "list",
											"subtype" : "Undefined",
											"embed" : 1,
											"snapshot" : 											{
												"pluginname" : "FabFilter Pro-R 2.vst3",
												"plugindisplayname" : "Pro-R 2",
												"pluginsavedname" : "",
												"pluginsaveduniqueid" : 0,
												"version" : 1,
												"isbank" : 0,
												"isbase64" : 1,
												"blob" : "1255.VMjLg3MA...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9TiM33hQYoFTSUjKt3hKtflKt3hKt3hKtrhKt3hKt3hKt3hcO4hKt3xJt3hKt3hYrkEau8jKt3hKtvTdLk2MC4hKt3hKHcjKyETPt3hKt3hKt3hKt3hKlQ1PA4hKt3hKt3hKt3hKt3hKt.EdIQTLC4hKt3hKt3hKt3hKt3hK4LjKt3xLOsxalQlKAgSYTYyRkMTcw8jKt3hYq3hKt3RNC4hKtLySt3hKlsBR281cDQjTOQjb0wTZXgVNt3hKt3hKt3hKy7jKt3hKt3hKt3hKlESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3hKt3hKt3hVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKt3hKt3hKtgiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3hKt3hKtXVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKt3hKt3hKZ8jLKETPt3hKtbiRMY1cO4hKt3hKt3hKtjyPt3hKt.kKt3hYq3hKt3RNC4hKtLyShsBSVETPt3hKtvjKt3hcO4hKtXlKA4hKtjyPt3hKt.kKt3hYq3hKt3RNC4hKtLyS4nVMDETPt3BTBcCbqshbO4hKt3hKt3hKtjyPt3hKt.kKt3hYq3hKt3hKt3hKt3hKZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hYq3hKt3hKt3hKt3hKZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hYq3hKt3hKt3hKt3hKZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hYq3hKt3xMC4hKtX2St3hKtrhKt3hK2LjKt3hcO4hKt3xJt3hKtbyPt3hK18jKt3hKq3hKt3hKPkGS4o2SMkGSSshKt3hK2LjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKD4hKtLySt3hKt3BVpEkcIckKt3hKt3hKt3hKtvyKIMzasA2atUlaz4COIUDYoQ2Pu4Fcx8FarUlb9HSM43hQIsFS10jKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwj0JqrxJqbjKt3hKt3hKt3hKt3hKt3BSTM1TYUkKt3hKtLjKt3hKX4hKt3BTPUUTEI0SIUkPt3hKtXTQrgkQqYTX5UEahsjKt3hKPQUTS0jZTkTPEUUR3n1TxDjKt3BTEo0aMcDRu0zQHo2YVkkYPYUVrUjUiIWTGgjcIcUV4UkQiYFVwDFdAIDU3giUKIUPnwjbtf2XtsVLX4VPRoUdAITX0UjQYsVTFgDa3vlXlQEaisVRWQlYyXUVxDjTZQWSGM1YzDCVqQCZBoDVTk0Z2YDRrkzUYsVPBMVcAgGVvzzQiUGLVoUMUYDRuE0QHcVSGgDM3X0XlYmUZEWUVgDQt3hKt.UUPcTSvPjKt3hKpUEaYcVUGEld2IjVmcmQgImdVkkZqY0XykkZQsVTF4hKt3hKt3hKlshK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
											}
,
											"snapshotlist" : 											{
												"current_snapshot" : 0,
												"entries" : [ 													{
														"filetype" : "C74Snapshot",
														"version" : 2,
														"minorversion" : 0,
														"name" : "Pro-R 2",
														"origin" : "FabFilter Pro-R 2.vst3",
														"type" : "VST3",
														"subtype" : "MidiEffect",
														"embed" : 1,
														"snapshot" : 														{
															"pluginname" : "FabFilter Pro-R 2.vst3",
															"plugindisplayname" : "Pro-R 2",
															"pluginsavedname" : "",
															"pluginsaveduniqueid" : 0,
															"version" : 1,
															"isbank" : 0,
															"isbase64" : 1,
															"blob" : "1255.VMjLg3MA...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9TiM33hQYoFTSUjKt3hKtflKt3hKt3hKtrhKt3hKt3hKt3hcO4hKt3xJt3hKt3hYrkEau8jKt3hKtvTdLk2MC4hKt3hKHcjKyETPt3hKt3hKt3hKt3hKlQ1PA4hKt3hKt3hKt3hKt3hKt.EdIQTLC4hKt3hKt3hKt3hKt3hK4LjKt3xLOsxalQlKAgSYTYyRkMTcw8jKt3hYq3hKt3RNC4hKtLySt3hKlsBR281cDQjTOQjb0wTZXgVNt3hKt3hKt3hKy7jKt3hKt3hKt3hKlESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3hKt3hKt3hVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKt3hKt3hKtgiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3hKt3hKtXVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKt3hKt3hKZ8jLKETPt3hKtbiRMY1cO4hKt3hKt3hKtjyPt3hKt.kKt3hYq3hKt3RNC4hKtLyShsBSVETPt3hKtvjKt3hcO4hKtXlKA4hKtjyPt3hKt.kKt3hYq3hKt3RNC4hKtLyS4nVMDETPt3BTBcCbqshbO4hKt3hKt3hKtjyPt3hKt.kKt3hYq3hKt3hKt3hKt3hKZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hYq3hKt3hKt3hKt3hKZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hYq3hKt3hKt3hKt3hKZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hYq3hKt3xMC4hKtX2St3hKtrhKt3hK2LjKt3hcO4hKt3xJt3hKtbyPt3hK18jKt3hKq3hKt3hKPkGS4o2SMkGSSshKt3hK2LjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKD4hKtLySt3hKt3BVpEkcIckKt3hKt3hKt3hKtvyKIMzasA2atUlaz4COIUDYoQ2Pu4Fcx8FarUlb9HSM43hQIsFS10jKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwj0JqrxJqbjKt3hKt3hKt3hKt3hKt3BSTM1TYUkKt3hKtLjKt3hKX4hKt3BTPUUTEI0SIUkPt3hKtXTQrgkQqYTX5UEahsjKt3hKPQUTS0jZTkTPEUUR3n1TxDjKt3BTEo0aMcDRu0zQHo2YVkkYPYUVrUjUiIWTGgjcIcUV4UkQiYFVwDFdAIDU3giUKIUPnwjbtf2XtsVLX4VPRoUdAITX0UjQYsVTFgDa3vlXlQEaisVRWQlYyXUVxDjTZQWSGM1YzDCVqQCZBoDVTk0Z2YDRrkzUYsVPBMVcAgGVvzzQiUGLVoUMUYDRuE0QHcVSGgDM3X0XlYmUZEWUVgDQt3hKt.UUPcTSvPjKt3hKpUEaYcVUGEld2IjVmcmQgImdVkkZqY0XykkZQsVTF4hKt3hKt3hKlshK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
														}
,
														"fileref" : 														{
															"name" : "Pro-R 2",
															"filename" : "Pro-R 2_20250502.maxsnap",
															"filepath" : "~/Documents/Max 9/Snapshots",
															"filepos" : -1,
															"snapshotfileid" : "89c03a2100c6ef2546ec0092232ac21b"
														}

													}
, 													{
														"filetype" : "C74Snapshot",
														"version" : 2,
														"minorversion" : 0,
														"name" : "Pro-R 2",
														"origin" : "FabFilter Pro-R 2.vst3",
														"type" : "VST3",
														"subtype" : "MidiEffect",
														"embed" : 0,
														"fileref" : 														{
															"name" : "Pro-R 2",
															"filename" : "Pro-R 2.maxsnap",
															"filepath" : "~/Documents/Max 9/Snapshots",
															"filepos" : -1,
															"snapshotfileid" : "516af72951e5d88121dcacbd343b5c7b"
														}

													}
 ]
											}

										}

									}
,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-43",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 9,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "multichannelsignal", "multichannelsignal", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 24.0, 104.0, 189.0, 22.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 1,
										"parameter_mappable" : 0
									}
,
									"text" : "mc.vst~ \"FabFilter Pro-R 2.vst3\" 3",
									"varname" : "mc.vst~",
									"viewvisibility" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"source" : [ "obj-43", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 1 ],
									"source" : [ "obj-44", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"originid" : "pat-3538"
					}
,
					"patching_rect" : [ 443.0, 17.0, 53.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p reverb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"lastchannelcount" : 64,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 443.0, 166.0, 218.0, 50.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~[3]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "wfs out",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"lastchannelcount" : 6,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 443.0, 49.0, 77.0, 50.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~[2]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "reverb send",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 517.0, 115.0, 139.0, 22.0 ],
					"text" : "sats.wfsReverbPositions"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 443.0, 115.0, 62.0, 22.0 ],
					"text" : "sats.wfs 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"lastchannelcount" : 64,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 28.0, 166.0, 403.0, 50.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "wfs out",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 272.0, 54.0, 22.0 ],
					"text" : "mc.dac~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 37.5, 151.0, 37.5, 151.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 37.5, 217.0, 37.5, 217.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 452.5, 237.0, 37.5, 237.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"originid" : "pat-3092",
		"parameters" : 		{
			"obj-12::obj-35" : [ "mc.live.gain~[8]", "send", 0 ],
			"obj-12::obj-43" : [ "mc.live.gain~[9]", "supernovae", 0 ],
			"obj-12::obj-50" : [ "mc.live.gain~[7]", "supernovae", 0 ],
			"obj-12::obj-58" : [ "mc.live.gain~[10]", "send", 0 ],
			"obj-13" : [ "mc.live.gain~[1]", "wfs out", 0 ],
			"obj-3" : [ "mc.live.gain~[2]", "reverb send", 0 ],
			"obj-6" : [ "mc.live.gain~[3]", "wfs out", 0 ],
			"obj-7::obj-43" : [ "vst~", "vst~", 0 ],
			"obj-9::obj-11" : [ "mc.live.gain~[4]", "pink", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Pro-R 2.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Pro-R 2_20250502.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "moogLadderFilter.genexpr",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 9/Examples/gen",
				"patcherrelativepath" : "../../../Library/Application Support/Cycling '74/Max 9/Examples/gen",
				"type" : "GenX",
				"implicit" : 1
			}
, 			{
				"name" : "mp.memorySender.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mp.polyMemory.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "poly.moogladderx2.maxpat",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 9/Examples/gen",
				"patcherrelativepath" : "../../../Library/Application Support/Cycling '74/Max 9/Examples/gen",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.area.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.dumbTravel.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.fmSynth.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.polyNova.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.spatConfig.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.spatReverb.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.travel.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.unarea.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.waves.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.wfs.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.wfsReverbPositions.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.osc.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.pan~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.viewer.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.wfs~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "wfs.64speakerConfig.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "wfs.format.maxpat",
				"bootpath" : "~/git/wfs-patches/memory-planes",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
