{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 778.0, 272.0, 667.0, 448.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 28.0, 260.0, 68.0, 22.0 ],
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
					"numinlets" : 2,
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
							"major" : 8,
							"minor" : 6,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 450.0, 338.0, 599.0, 262.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
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
 ]
					}
,
					"patching_rect" : [ 93.0, 364.0, 41.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
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
							"major" : 8,
							"minor" : 6,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1032.0, 720.0, 446.0, 249.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
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
									"patching_rect" : [ 233.0, 105.0, 163.0, 20.0 ],
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
												"pluginname" : "FabFilter Pro-R 2.vstinfo",
												"plugindisplayname" : "FabFilter Pro-R 2",
												"pluginsavedname" : "",
												"pluginsaveduniqueid" : 1179791984,
												"version" : 1,
												"isbank" : 0,
												"isbase64" : 1,
												"blob" : "898.CMlaKA....fQPMDZ....AXjTx.G...P.....APzTPAxPgQGZkQlbgwF......................LfQFYjPSE.....h.......f+....9S0KvxO7hRx8....9CuzsyONWHM+1yJZ7C........xBA............fdCA...............bfNs6C..............9C...3OX.fq.A...9SIevjO.....A...9C...3O...f+HwkzDDb4g2u9lFE+.........3O...f+....9ifAyMPf3V59Busb6C........f+....9C...3OxU0EAQgxt86sIPwO.........9C...3O...f+b7oDDDZlo2uwF3N+.........3O.........9iPBHQPb+PI+5HZp7C........f+....9C...3OX6iGAg45DCL33CsO.........9C....P...f+....9C...3OYW1.AQSJcETRVyrO.....A...9C....P...f+....9C...3OfR5PAAd1gET4wrqO...P.A...9C...HP...f+....9C...3OjhMWAA....vJSAmO...f.A....D....P...f+....9C...3OLe9HAAgHsBLT.vxO.........9C....P...f+....9C...3OZjBIAA35EAzHVevO.........9C...HP...f+....7C...vO....+....7C...vO....+....7C...vO....+.....PyLyzOMyLS+....7C....................................P.....XjTx.2.....M....PzTPAxPgQGZkQlbgw1+++++A.........P.....CU2TVE....v.....F....DTUTgzSRY....fXMElaoM1B....DUzTCIURPQURO4Dc....AAxYuI2Yk8VcywVdf7Fbk4FHg4FYfTlYl8lbzwVYyMGHxUlckImXfbWZzgFHgAhbkEFarkGHr8lamARdkQGHtEFc0IWXrABYkMVX44BHVUlb4ARa0MWZiEFafz1ajUGagQWZu4FHl8lbfPGZkABcgkFatn.A....TEzQS4C...fUkIWdfvTXxcVYrvzatcFKVklazE1YkwxSvUlar.UXjMGKV81Xgw1brvTYgQ1brXDVrLUdtQGZr.kbu0hTx."
											}
,
											"snapshotlist" : 											{
												"current_snapshot" : 0,
												"entries" : [ 													{
														"filetype" : "C74Snapshot",
														"version" : 2,
														"minorversion" : 0,
														"name" : "Pro-R 2",
														"origin" : "FabFilter Pro-R 2.vstinfo",
														"type" : "VST",
														"subtype" : "MidiEffect",
														"embed" : 1,
														"snapshot" : 														{
															"pluginname" : "FabFilter Pro-R 2.vstinfo",
															"plugindisplayname" : "FabFilter Pro-R 2",
															"pluginsavedname" : "",
															"pluginsaveduniqueid" : 1179791984,
															"version" : 1,
															"isbank" : 0,
															"isbase64" : 1,
															"blob" : "898.CMlaKA....fQPMDZ....AXjTx.G...P.....APzTPAxPgQGZkQlbgwF......................LfQFYjPSE.....h.......f+....9S0KvxO7hRx8....9CuzsyONWHM+1yJZ7C........xBA............fdCA...............bfNs6C..............9C...3OX.fq.A...9SIevjO.....A...9C...3O...f+HwkzDDb4g2u9lFE+.........3O...f+....9ifAyMPf3V59Busb6C........f+....9C...3OxU0EAQgxt86sIPwO.........9C...3O...f+b7oDDDZlo2uwF3N+.........3O.........9iPBHQPb+PI+5HZp7C........f+....9C...3OX6iGAg45DCL33CsO.........9C....P...f+....9C...3OYW1.AQSJcETRVyrO.....A...9C....P...f+....9C...3OfR5PAAd1gET4wrqO...P.A...9C...HP...f+....9C...3OjhMWAA....vJSAmO...f.A....D....P...f+....9C...3OLe9HAAgHsBLT.vxO.........9C....P...f+....9C...3OZjBIAA35EAzHVevO.........9C...HP...f+....7C...vO....+....7C...vO....+....7C...vO....+.....PyLyzOMyLS+....7C....................................P.....XjTx.2.....M....PzTPAxPgQGZkQlbgw1+++++A.........P.....CU2TVE....v.....F....DTUTgzSRY....fXMElaoM1B....DUzTCIURPQURO4Dc....AAxYuI2Yk8VcywVdf7Fbk4FHg4FYfTlYl8lbzwVYyMGHxUlckImXfbWZzgFHgAhbkEFarkGHr8lamARdkQGHtEFc0IWXrABYkMVX44BHVUlb4ARa0MWZiEFafz1ajUGagQWZu4FHl8lbfPGZkABcgkFatn.A....TEzQS4C...fUkIWdfvTXxcVYrvzatcFKVklazE1YkwxSvUlar.UXjMGKV81Xgw1brvTYgQ1brXDVrLUdtQGZr.kbu0hTx."
														}
,
														"fileref" : 														{
															"name" : "Pro-R 2",
															"filename" : "Pro-R 2.maxsnap",
															"filepath" : "~/Documents/Max 8/Snapshots",
															"filepos" : -1,
															"snapshotfileid" : "30627127592bedca1981cff6392d07be"
														}

													}
, 													{
														"filetype" : "C74Snapshot",
														"version" : 2,
														"minorversion" : 0,
														"name" : "FabFilter Pro-R 2",
														"origin" : "FabFilter Pro-R 2.vstinfo",
														"type" : "VST",
														"subtype" : "MidiEffect",
														"embed" : 0,
														"fileref" : 														{
															"name" : "FabFilter Pro-R 2",
															"filename" : "FabFilter Pro-R 2.maxsnap",
															"filepath" : "~/Documents/Max 8/Snapshots",
															"filepos" : -1,
															"snapshotfileid" : "a295c8c3c64d1f59f45bec53822e671a"
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
 ]
					}
,
					"patching_rect" : [ 268.0, 18.0, 53.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p reverb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"lastchannelcount" : 32,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 268.0, 167.0, 218.0, 50.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~[3]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
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
					"patching_rect" : [ 268.0, 50.0, 77.0, 50.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~[2]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
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
					"patching_rect" : [ 342.0, 116.0, 139.0, 22.0 ],
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
					"patching_rect" : [ 268.0, 116.0, 62.0, 22.0 ],
					"text" : "sats.wfs 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"lastchannelcount" : 32,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 28.0, 166.0, 218.0, 50.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
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
					"patching_rect" : [ 28.0, 364.0, 54.0, 22.0 ],
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
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 37.5, 217.0, 37.5, 217.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-2", 0 ]
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
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 277.5, 237.0, 37.5, 237.0 ],
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
		"parameters" : 		{
			"obj-12::obj-35" : [ "mc.live.gain~[8]", "send", 0 ],
			"obj-12::obj-43" : [ "mc.live.gain~[9]", "supernovae", 0 ],
			"obj-12::obj-45::obj-76::obj-10" : [ "live.tab[6]", "live.tab", 0 ],
			"obj-12::obj-45::obj-76::obj-26" : [ "live.menu[5]", "live.menu", 0 ],
			"obj-12::obj-45::obj-76::obj-29" : [ "live.dial[13]", " ", 0 ],
			"obj-12::obj-45::obj-76::obj-50" : [ "live.dial[12]", "window", 0 ],
			"obj-12::obj-45::obj-76::obj-67" : [ "live.dial[11]", "scaling", 0 ],
			"obj-12::obj-45::obj-76::obj-68" : [ "live.dial[14]", "scaling", 0 ],
			"obj-12::obj-50" : [ "mc.live.gain~[7]", "supernovae", 0 ],
			"obj-12::obj-58" : [ "mc.live.gain~[10]", "send", 0 ],
			"obj-13" : [ "mc.live.gain~[1]", "wfs out", 0 ],
			"obj-3" : [ "mc.live.gain~[2]", "reverb send", 0 ],
			"obj-38::obj-76::obj-10" : [ "live.tab[3]", "live.tab", 0 ],
			"obj-38::obj-76::obj-26" : [ "live.menu[7]", "live.menu", 0 ],
			"obj-38::obj-76::obj-29" : [ "live.dial[21]", " ", 0 ],
			"obj-38::obj-76::obj-50" : [ "live.dial[19]", "window", 0 ],
			"obj-38::obj-76::obj-67" : [ "live.dial[22]", "scaling", 0 ],
			"obj-38::obj-76::obj-68" : [ "live.dial[20]", "scaling", 0 ],
			"obj-6" : [ "mc.live.gain~[3]", "wfs out", 0 ],
			"obj-7::obj-43" : [ "mc.vst~", "mc.vst~", 0 ],
			"obj-9::obj-11" : [ "mc.live.gain~[4]", "pink", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-38::obj-76::obj-10" : 				{
					"parameter_longname" : "live.tab[3]"
				}
,
				"obj-38::obj-76::obj-26" : 				{
					"parameter_longname" : "live.menu[7]"
				}
,
				"obj-38::obj-76::obj-29" : 				{
					"parameter_longname" : "live.dial[21]"
				}
,
				"obj-38::obj-76::obj-50" : 				{
					"parameter_longname" : "live.dial[19]"
				}
,
				"obj-38::obj-76::obj-67" : 				{
					"parameter_longname" : "live.dial[22]"
				}
,
				"obj-38::obj-76::obj-68" : 				{
					"parameter_longname" : "live.dial[20]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "FabFilter Pro-R 2.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Pro-R 2.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "moogLadderFilter.genexpr",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/gen",
				"patcherrelativepath" : "../../Library/Application Support/Cycling '74/Max 8/Examples/gen",
				"type" : "GenX",
				"implicit" : 1
			}
, 			{
				"name" : "poly.moogladderx2.maxpat",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/gen",
				"patcherrelativepath" : "../../Library/Application Support/Cycling '74/Max 8/Examples/gen",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.area.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.dumbTravel.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.fmSynth.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.polyNova.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.spatConfig.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.spatReverb.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.travel.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.unarea.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.waves.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.wfs.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sats.wfsReverbPositions.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
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
				"name" : "wfs.format.maxpat",
				"bootpath" : "~/Desktop/you-cant-compete-with-the-stars",
				"patcherrelativepath" : "../you-cant-compete-with-the-stars",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
