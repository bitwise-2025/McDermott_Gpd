DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_Summary_Progress_Report_OA_Data_Ruya11_D7507'

delete from [dbo].[plp_pipeline] where [pipeline_code] = @v_pipelinename
delete from [dbo].[plp_pipeline_parameter] where [pipeline_code] = @v_pipelinename
delete from [dbo].[plp_parameter_value] where [pipeline_code] = @v_pipelinename


--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'NCSA','Manual Excel File Direct Source To Synapse',NULL,1,'aditya.anand2@mcdermott.com',@Date,9)


--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','end_date',2,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','source_directory',3,'source_directory','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','table_name',4,'table_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','logicapp_url',5,'logicapp_url','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','project_number',6,'project_number','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_name',7,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','sheetname',8,'sheetname','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','range',9,'range','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

--PLP Pipeline values


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','*.xlsx',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('sheetname','OA Data',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('range','A2:AAA50000',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')



INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2021-10-07 11:33:55',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','07. D7507 - RUYA 11/05. Level-I Progress Summary/',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('table_name','Summary_Progress_Report_OA_Data_Ruya11_D7507',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')	 
	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('project_number','D7507',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')



GO



CREATE TABLE [epr].[Summary_Progress_Report_OA_Data_Ruya11_D7507]
(
[serial_no] [int] IDENTITY(1,1) NOT NULL,
[Prop_0] [varchar](1000) NULL,
[Prop_1] [varchar](1000) NULL,
[Prop_2] [varchar](1000) NULL,
[Prop_3] [varchar](1000) NULL,
[Prop_4] [varchar](1000) NULL,
[Prop_5] [varchar](1000) NULL,
[Prop_6] [varchar](1000) NULL,
[Prop_7] [varchar](100) NULL,
[Prop_8] [varchar](100) NULL,
[Prop_9] [varchar](100) NULL,
[Prop_10] [varchar](100) NULL,
[Prop_11] [varchar](100) NULL,
[Prop_12] [varchar](100) NULL,
[Prop_13] [varchar](100) NULL,
[Prop_14] [varchar](100) NULL,
[Prop_15] [varchar](100) NULL,
[Prop_16] [varchar](100) NULL,
[Prop_17] [varchar](100) NULL,
[Prop_18] [varchar](100) NULL,
[Prop_19] [varchar](100) NULL,
[Prop_20] [varchar](100) NULL,
[Prop_21] [varchar](100) NULL,
[Prop_22] [varchar](100) NULL,
[Prop_23] [varchar](100) NULL,
[Prop_24] [varchar](100) NULL,
[Prop_25] [varchar](100) NULL,
[Prop_26] [varchar](100) NULL,
[Prop_27] [varchar](100) NULL,
[Prop_28] [varchar](100) NULL,
[Prop_29] [varchar](100) NULL,
[Prop_30] [varchar](100) NULL,
[Prop_31] [varchar](100) NULL,
[Prop_32] [varchar](100) NULL,
[Prop_33] [varchar](100) NULL,
[Prop_34] [varchar](100) NULL,
[Prop_35] [varchar](100) NULL,
[Prop_36] [varchar](100) NULL,
[Prop_37] [varchar](100) NULL,
[Prop_38] [varchar](100) NULL,
[Prop_39] [varchar](100) NULL,
[Prop_40] [varchar](100) NULL,
[Prop_41] [varchar](100) NULL,
[Prop_42] [varchar](100) NULL,
[Prop_43] [varchar](100) NULL,
[Prop_44] [varchar](100) NULL,
[Prop_45] [varchar](100) NULL,
[Prop_46] [varchar](100) NULL,
[Prop_47] [varchar](100) NULL,
[Prop_48] [varchar](100) NULL,
[Prop_49] [varchar](100) NULL,
[Prop_50] [varchar](100) NULL,
[Prop_51] [varchar](100) NULL,
[Prop_52] [varchar](100) NULL,
[Prop_53] [varchar](100) NULL,
[Prop_54] [varchar](100) NULL,
[Prop_55] [varchar](100) NULL,
[Prop_56] [varchar](100) NULL,
[Prop_57] [varchar](100) NULL,
[Prop_58] [varchar](100) NULL,
[Prop_59] [varchar](100) NULL,
[Prop_60] [varchar](100) NULL,
[Prop_61] [varchar](100) NULL,
[Prop_62] [varchar](100) NULL,
[Prop_63] [varchar](100) NULL,
[Prop_64] [varchar](100) NULL,
[Prop_65] [varchar](100) NULL,
[Prop_66] [varchar](100) NULL,
[Prop_67] [varchar](100) NULL,
[Prop_68] [varchar](100) NULL,
[Prop_69] [varchar](100) NULL,
[Prop_70] [varchar](100) NULL,
[Prop_71] [varchar](100) NULL,
[Prop_72] [varchar](100) NULL,
[Prop_73] [varchar](100) NULL,
[Prop_74] [varchar](100) NULL,
[Prop_75] [varchar](100) NULL,
[Prop_76] [varchar](100) NULL,
[Prop_77] [varchar](100) NULL,
[Prop_78] [varchar](100) NULL,
[Prop_79] [varchar](100) NULL,
[Prop_80] [varchar](100) NULL,
[Prop_81] [varchar](100) NULL,
[Prop_82] [varchar](100) NULL,
[Prop_83] [varchar](100) NULL,
[Prop_84] [varchar](100) NULL,
[Prop_85] [varchar](100) NULL,
[Prop_86] [varchar](100) NULL,
[Prop_87] [varchar](100) NULL,
[Prop_88] [varchar](100) NULL,
[Prop_89] [varchar](100) NULL,
[Prop_90] [varchar](100) NULL,
[Prop_91] [varchar](100) NULL,
[Prop_92] [varchar](100) NULL,
[Prop_93] [varchar](100) NULL,
[Prop_94] [varchar](100) NULL,
[Prop_95] [varchar](100) NULL,
[Prop_96] [varchar](100) NULL,
[Prop_97] [varchar](100) NULL,
[Prop_98] [varchar](100) NULL,
[Prop_99] [varchar](100) NULL,
[Prop_100] [varchar](100) NULL,
[Prop_101] [varchar](100) NULL,
[Prop_102] [varchar](100) NULL,
[Prop_103] [varchar](100) NULL,
[Prop_104] [varchar](100) NULL,
[Prop_105] [varchar](100) NULL,
[Prop_106] [varchar](100) NULL,
[Prop_107] [varchar](100) NULL,
[Prop_108] [varchar](100) NULL,
[Prop_109] [varchar](100) NULL,
[Prop_110] [varchar](100) NULL,
[Prop_111] [varchar](100) NULL,
[Prop_112] [varchar](100) NULL,
[Prop_113] [varchar](100) NULL,
[Prop_114] [varchar](100) NULL,
[Prop_115] [varchar](100) NULL,
[Prop_116] [varchar](100) NULL,
[Prop_117] [varchar](100) NULL,
[Prop_118] [varchar](100) NULL,
[Prop_119] [varchar](100) NULL,
[Prop_120] [varchar](100) NULL,
[Prop_121] [varchar](100) NULL,
[Prop_122] [varchar](100) NULL,
[Prop_123] [varchar](100) NULL,
[Prop_124] [varchar](100) NULL,
[Prop_125] [varchar](100) NULL,
[Prop_126] [varchar](100) NULL,
[Prop_127] [varchar](100) NULL,
[Prop_128] [varchar](100) NULL,
[Prop_129] [varchar](100) NULL,
[Prop_130] [varchar](100) NULL,
[Prop_131] [varchar](100) NULL,
[Prop_132] [varchar](100) NULL,
[Prop_133] [varchar](100) NULL,
[Prop_134] [varchar](100) NULL,
[Prop_135] [varchar](100) NULL,
[Prop_136] [varchar](100) NULL,
[Prop_137] [varchar](100) NULL,
[Prop_138] [varchar](100) NULL,
[Prop_139] [varchar](100) NULL,
[Prop_140] [varchar](100) NULL,
[Prop_141] [varchar](100) NULL,
[Prop_142] [varchar](100) NULL,
[Prop_143] [varchar](100) NULL,
[Prop_144] [varchar](100) NULL,
[Prop_145] [varchar](100) NULL,
[Prop_146] [varchar](100) NULL,
[Prop_147] [varchar](100) NULL,
[Prop_148] [varchar](100) NULL,
[Prop_149] [varchar](100) NULL,
[Prop_150] [varchar](100) NULL,
[Prop_151] [varchar](100) NULL,
[Prop_152] [varchar](100) NULL,
[Prop_153] [varchar](100) NULL,
[Prop_154] [varchar](100) NULL,
[Prop_155] [varchar](100) NULL,
[Prop_156] [varchar](100) NULL,
[Prop_157] [varchar](100) NULL,
[Prop_158] [varchar](100) NULL,
[Prop_159] [varchar](100) NULL,
[Prop_160] [varchar](100) NULL,
[Prop_161] [varchar](100) NULL,
[Prop_162] [varchar](100) NULL,
[Prop_163] [varchar](100) NULL,
[Prop_164] [varchar](100) NULL,
[Prop_165] [varchar](100) NULL,
[Prop_166] [varchar](100) NULL,
[Prop_167] [varchar](100) NULL,
[Prop_168] [varchar](100) NULL,
[Prop_169] [varchar](100) NULL,
[Prop_170] [varchar](100) NULL,
[Prop_171] [varchar](100) NULL,
[Prop_172] [varchar](100) NULL,
[Prop_173] [varchar](100) NULL,
[Prop_174] [varchar](100) NULL,
[Prop_175] [varchar](100) NULL,
[Prop_176] [varchar](100) NULL,
[Prop_177] [varchar](100) NULL,
[Prop_178] [varchar](100) NULL,
[Prop_179] [varchar](100) NULL,
[Prop_180] [varchar](100) NULL,
[Prop_181] [varchar](100) NULL,
[Prop_182] [varchar](100) NULL,
[Prop_183] [varchar](100) NULL,
[Prop_184] [varchar](100) NULL,
[Prop_185] [varchar](100) NULL,
[Prop_186] [varchar](100) NULL,
[Prop_187] [varchar](100) NULL,
[Prop_188] [varchar](100) NULL,
[Prop_189] [varchar](100) NULL,
[Prop_190] [varchar](100) NULL,
[Prop_191] [varchar](100) NULL,
[Prop_192] [varchar](100) NULL,
[Prop_193] [varchar](100) NULL,
[Prop_194] [varchar](100) NULL,
[Prop_195] [varchar](100) NULL,
[Prop_196] [varchar](100) NULL,
[Prop_197] [varchar](100) NULL,
[Prop_198] [varchar](100) NULL,
[Prop_199] [varchar](100) NULL,
[Prop_200] [varchar](100) NULL,
[Prop_201] [varchar](100) NULL,
[Prop_202] [varchar](100) NULL,
[Prop_203] [varchar](100) NULL,
[Prop_204] [varchar](100) NULL,
[Prop_205] [varchar](100) NULL,
[Prop_206] [varchar](100) NULL,
[Prop_207] [varchar](100) NULL,
[Prop_208] [varchar](100) NULL,
[Prop_209] [varchar](100) NULL,
[Prop_210] [varchar](100) NULL,
[Prop_211] [varchar](100) NULL,
[Prop_212] [varchar](100) NULL,
[Prop_213] [varchar](100) NULL,
[Prop_214] [varchar](100) NULL,
[Prop_215] [varchar](100) NULL,
[Prop_216] [varchar](100) NULL,
[Prop_217] [varchar](100) NULL,
[Prop_218] [varchar](100) NULL,
[Prop_219] [varchar](100) NULL,
[Prop_220] [varchar](100) NULL,
[Prop_221] [varchar](100) NULL,
[Prop_222] [varchar](100) NULL,
[Prop_223] [varchar](100) NULL,
[Prop_224] [varchar](100) NULL,
[Prop_225] [varchar](100) NULL,
[Prop_226] [varchar](100) NULL,
[Prop_227] [varchar](100) NULL,
[Prop_228] [varchar](100) NULL,
[Prop_229] [varchar](100) NULL,
[Prop_230] [varchar](100) NULL,
[Prop_231] [varchar](100) NULL,
[Prop_232] [varchar](100) NULL,
[Prop_233] [varchar](100) NULL,
[Prop_234] [varchar](100) NULL,
[Prop_235] [varchar](100) NULL,
[Prop_236] [varchar](100) NULL,
[Prop_237] [varchar](100) NULL,
[Prop_238] [varchar](100) NULL,
[Prop_239] [varchar](100) NULL,
[Prop_240] [varchar](100) NULL,
[Prop_241] [varchar](100) NULL,
[Prop_242] [varchar](100) NULL,
[Prop_243] [varchar](100) NULL,
[Prop_244] [varchar](100) NULL,
[Prop_245] [varchar](100) NULL,
[Prop_246] [varchar](100) NULL,
[Prop_247] [varchar](100) NULL,
[Prop_248] [varchar](100) NULL,
[Prop_249] [varchar](100) NULL,
[Prop_250] [varchar](100) NULL,
[Prop_251] [varchar](100) NULL,
[Prop_252] [varchar](100) NULL,
[Prop_253] [varchar](100) NULL,
[Prop_254] [varchar](100) NULL,
[Prop_255] [varchar](100) NULL,
[Prop_256] [varchar](100) NULL,
[Prop_257] [varchar](100) NULL,
[Prop_258] [varchar](100) NULL,
[Prop_259] [varchar](100) NULL,
[Prop_260] [varchar](100) NULL,
[Prop_261] [varchar](100) NULL,
[Prop_262] [varchar](100) NULL,
[Prop_263] [varchar](100) NULL,
[Prop_264] [varchar](100) NULL,
[Prop_265] [varchar](100) NULL,
[Prop_266] [varchar](100) NULL,
[Prop_267] [varchar](100) NULL,
[Prop_268] [varchar](100) NULL,
[Prop_269] [varchar](100) NULL,
[Prop_270] [varchar](100) NULL,
[Prop_271] [varchar](100) NULL,
[Prop_272] [varchar](100) NULL,
[Prop_273] [varchar](100) NULL,
[Prop_274] [varchar](100) NULL,
[Prop_275] [varchar](100) NULL,
[Prop_276] [varchar](100) NULL,
[Prop_277] [varchar](100) NULL,
[Prop_278] [varchar](100) NULL,
[Prop_279] [varchar](100) NULL,
[Prop_280] [varchar](100) NULL,
[Prop_281] [varchar](100) NULL,
[Prop_282] [varchar](100) NULL,
[Prop_283] [varchar](100) NULL,
[Prop_284] [varchar](100) NULL,
[Prop_285] [varchar](100) NULL,
[Prop_286] [varchar](100) NULL,
[Prop_287] [varchar](100) NULL,
[Prop_288] [varchar](100) NULL,
[Prop_289] [varchar](100) NULL,
[Prop_290] [varchar](100) NULL,
[Prop_291] [varchar](100) NULL,
[Prop_292] [varchar](100) NULL,
[Prop_293] [varchar](100) NULL,
[Prop_294] [varchar](100) NULL,
[Prop_295] [varchar](100) NULL,
[Prop_296] [varchar](100) NULL,
[Prop_297] [varchar](100) NULL,
[Prop_298] [varchar](100) NULL,
[Prop_299] [varchar](100) NULL,
[Prop_300] [varchar](100) NULL,
[Prop_301] [varchar](100) NULL,
[Prop_302] [varchar](100) NULL,
[Prop_303] [varchar](100) NULL,
[Prop_304] [varchar](100) NULL,
[Prop_305] [varchar](100) NULL,
[Prop_306] [varchar](100) NULL,
[Prop_307] [varchar](100) NULL,
[Prop_308] [varchar](100) NULL,
[Prop_309] [varchar](100) NULL,
[Prop_310] [varchar](100) NULL,
[Prop_311] [varchar](100) NULL,
[Prop_312] [varchar](100) NULL,
[Prop_313] [varchar](100) NULL,
[Prop_314] [varchar](100) NULL,
[Prop_315] [varchar](100) NULL,
[Prop_316] [varchar](100) NULL,
[Prop_317] [varchar](100) NULL,
[Prop_318] [varchar](100) NULL,
[Prop_319] [varchar](100) NULL,
[Prop_320] [varchar](100) NULL,
[Prop_321] [varchar](100) NULL,
[Prop_322] [varchar](100) NULL,
[Prop_323] [varchar](100) NULL,
[Prop_324] [varchar](100) NULL,
[Prop_325] [varchar](100) NULL,
[Prop_326] [varchar](100) NULL,
[Prop_327] [varchar](100) NULL,
[Prop_328] [varchar](100) NULL,
[Prop_329] [varchar](100) NULL,
[Prop_330] [varchar](100) NULL,
[Prop_331] [varchar](100) NULL,
[Prop_332] [varchar](100) NULL,
[Prop_333] [varchar](100) NULL,
[Prop_334] [varchar](100) NULL,
[Prop_335] [varchar](100) NULL,
[Prop_336] [varchar](100) NULL,
[Prop_337] [varchar](100) NULL,
[Prop_338] [varchar](100) NULL,
[Prop_339] [varchar](100) NULL,
[Prop_340] [varchar](100) NULL,
[Prop_341] [varchar](100) NULL,
[Prop_342] [varchar](100) NULL,
[Prop_343] [varchar](100) NULL,
[Prop_344] [varchar](100) NULL,
[Prop_345] [varchar](100) NULL,
[Prop_346] [varchar](100) NULL,
[Prop_347] [varchar](100) NULL,
[Prop_348] [varchar](100) NULL,
[Prop_349] [varchar](100) NULL,
[Prop_350] [varchar](100) NULL,
[Prop_351] [varchar](100) NULL,
[Prop_352] [varchar](100) NULL,
[Prop_353] [varchar](100) NULL,
[Prop_354] [varchar](100) NULL,
[Prop_355] [varchar](100) NULL,
[Prop_356] [varchar](100) NULL,
[Prop_357] [varchar](100) NULL,
[Prop_358] [varchar](100) NULL,
[Prop_359] [varchar](100) NULL,
[Prop_360] [varchar](100) NULL,
[Prop_361] [varchar](100) NULL,
[Prop_362] [varchar](100) NULL,
[Prop_363] [varchar](100) NULL,
[Prop_364] [varchar](100) NULL,
[Prop_365] [varchar](100) NULL,
[Prop_366] [varchar](100) NULL,
[Prop_367] [varchar](100) NULL,
[Prop_368] [varchar](100) NULL,
[Prop_369] [varchar](100) NULL,
[Prop_370] [varchar](100) NULL,
[Prop_371] [varchar](100) NULL,
[Prop_372] [varchar](100) NULL,
[Prop_373] [varchar](100) NULL,
[Prop_374] [varchar](100) NULL,
[Prop_375] [varchar](100) NULL,
[Prop_376] [varchar](100) NULL,
[Prop_377] [varchar](100) NULL,
[Prop_378] [varchar](100) NULL,
[Prop_379] [varchar](100) NULL,
[Prop_380] [varchar](100) NULL,
[Prop_381] [varchar](100) NULL,
[Prop_382] [varchar](100) NULL,
[Prop_383] [varchar](100) NULL,
[Prop_384] [varchar](100) NULL,
[Prop_385] [varchar](100) NULL,
[Prop_386] [varchar](100) NULL,
[Prop_387] [varchar](100) NULL,
[Prop_388] [varchar](100) NULL,
[Prop_389] [varchar](100) NULL,
[Prop_390] [varchar](100) NULL,
[Prop_391] [varchar](100) NULL,
[Prop_392] [varchar](100) NULL,
[Prop_393] [varchar](100) NULL,
[Prop_394] [varchar](100) NULL,
[Prop_395] [varchar](100) NULL,
[Prop_396] [varchar](100) NULL,
[Prop_397] [varchar](100) NULL,
[Prop_398] [varchar](100) NULL,
[Prop_399] [varchar](100) NULL,
[Prop_400] [varchar](100) NULL,
[Prop_401] [varchar](100) NULL,
[Prop_402] [varchar](100) NULL,
[Prop_403] [varchar](100) NULL,
[Prop_404] [varchar](100) NULL,
[Prop_405] [varchar](100) NULL,
[Prop_406] [varchar](100) NULL,
[Prop_407] [varchar](100) NULL,
[Prop_408] [varchar](100) NULL,
[Prop_409] [varchar](100) NULL,
[Prop_410] [varchar](100) NULL,
[project_number] [varchar](100) NULL,
[SourceFileName] [varchar](1000) NULL,
[CreatedDateTime] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO





Create View epr.Summary_Progress_Report_OA_Data_Ruya11_D7507_v as 

select

[Prop_1]	as 	'Details'
,[Prop_5]	as 	'W.F (%)'
,[Prop_6]	as 	'Plan_Type'
,[Prop_7]	as 	'10/26/2023'
,[Prop_8]	as 	'11/2/2023'
,[Prop_9]	as 	'11/9/2023'
,[Prop_10]	as 	'11/16/2023'
,[Prop_11]	as 	'11/23/2023'
,[Prop_12]	as 	'11/30/2023'
,[Prop_13]	as 	'12/7/2023'
,[Prop_14]	as 	'12/14/2023'
,[Prop_15]	as 	'12/21/2023'
,[Prop_16]	as 	'12/28/2023'
,[Prop_17]	as 	'1/4/2024'
,[Prop_18]	as 	'1/11/2024'
,[Prop_19]	as 	'1/18/2024'
,[Prop_20]	as 	'1/25/2024'
,[Prop_21]	as 	'2/1/2024  '
,[Prop_22]	as 	'2/8/2024  '
,[Prop_23]	as 	'2/15/2024 '
,[Prop_24]	as 	'2/22/2024 '
,[Prop_25]	as 	'2/29/2024 '
,[Prop_26]	as 	'3/7/2024  '
,[Prop_27]	as 	'3/14/2024 '
,[Prop_28]	as 	'3/21/2024 '
,[Prop_29]	as 	'3/28/2024 '
,[Prop_30]	as 	'4/4/2024  '
,[Prop_31]	as 	'4/11/2024 '
,[Prop_32]	as 	'4/18/2024 '
,[Prop_33]	as 	'4/25/2024 '
,[Prop_34]	as 	'5/2/2024  '
,[Prop_35]	as 	'5/9/2024  '
,[Prop_36]	as 	'5/16/2024 '
,[Prop_37]	as 	'5/23/2024 '
,[Prop_38]	as 	'5/30/2024 '
,[Prop_39]	as 	'6/6/2024  '
,[Prop_40]	as 	'6/13/2024 '
,[Prop_41]	as 	'6/20/2024 '
,[Prop_42]	as 	'6/27/2024 '
,[Prop_43]	as 	'7/4/2024  '
,[Prop_44]	as 	'7/11/2024 '
,[Prop_45]	as 	'7/18/2024 '
,[Prop_46]	as 	'7/25/2024 '
,[Prop_47]	as 	'8/1/2024  '
,[Prop_48]	as 	'8/8/2024  '
,[Prop_49]	as 	'8/15/2024 '
,[Prop_50]	as 	'8/22/2024 '
,[Prop_51]	as 	'8/29/2024 '
,[Prop_52]	as 	'9/5/2024  '
,[Prop_53]	as 	'9/12/2024 '
,[Prop_54]	as 	'9/19/2024 '
,[Prop_55]	as 	'9/26/2024 '
,[Prop_56]	as 	'10/3/2024 '
,[Prop_57]	as 	'10/10/2024'
,[Prop_58]	as 	'10/17/2024'
,[Prop_59]	as 	'10/24/2024'
,[Prop_60]	as 	'10/31/2024'
,[Prop_61]	as 	'11/7/2024 '
,[Prop_62]	as 	'11/14/2024'
,[Prop_63]	as 	'11/21/2024'
,[Prop_64]	as 	'11/28/2024'
,[Prop_65]	as 	'12/5/2024 '
,[Prop_66]	as 	'12/12/2024'
,[Prop_67]	as 	'12/19/2024'
,[Prop_68]	as 	'12/26/2024'
,[Prop_69]	as 	'1/2/2025  '
,[Prop_70]	as 	'1/9/2025  '
,[Prop_71]	as 	'1/16/2025 '
,[Prop_72]	as 	'1/23/2025 '
,[Prop_73]	as 	'1/30/2025 '
,[Prop_74]	as 	'2/6/2025  '
,[Prop_75]	as 	'2/13/2025 '
,[Prop_76]	as 	'2/20/2025 '
,[Prop_77]	as 	'2/27/2025 '
,[Prop_78]	as 	'3/6/2025  '
,[Prop_79]	as 	'3/13/2025 '
,[Prop_80]	as 	'3/20/2025 '
,[Prop_81]	as 	'3/27/2025 '
,[Prop_82]	as 	'4/3/2025  '
,[Prop_83]	as 	'4/10/2025 '
,[Prop_84]	as 	'4/17/2025 '
,[Prop_85]	as 	'4/24/2025 '
,[Prop_86]	as 	'5/1/2025  '
,[Prop_87]	as 	'5/8/2025  '
,[Prop_88]	as 	'5/15/2025 '
,[Prop_89]	as 	'5/22/2025 '
,[Prop_90]	as 	'5/29/2025 '
,[Prop_91]	as 	'6/5/2025  '
,[Prop_92]	as 	'6/12/2025 '
,[Prop_93]	as 	'6/19/2025 '
,[Prop_94]	as 	'6/26/2025 '
,[Prop_95]	as 	'7/3/2025  '
,[Prop_96]	as 	'7/10/2025 '
,[Prop_97]	as 	'7/17/2025 '
,[Prop_98]	as 	'7/24/2025 '
,[Prop_99]	as 	'7/31/2025 '
,[Prop_100]	as 	'8/7/2025  '
,[Prop_101]	as 	'8/14/2025 '
,[Prop_102]	as 	'8/21/2025 '
,[Prop_103]	as 	'8/28/2025 '
,[Prop_104]	as 	'9/4/2025  '
,[Prop_105]	as 	'9/11/2025 '
,[Prop_106]	as 	'9/18/2025 '
,[Prop_107]	as 	'9/25/2025 '
,[Prop_108]	as 	'10/2/2025 '
,[Prop_109]	as 	'10/9/2025 '
,[Prop_110]	as 	'10/16/2025'
,[Prop_111]	as 	'10/23/2025'
,[Prop_112]	as 	'10/30/2025'
,[Prop_113]	as 	'11/6/2025 '
,[Prop_114]	as 	'11/13/2025'
,[Prop_115]	as 	'11/20/2025'
,[Prop_116]	as 	'11/27/2025'
,[Prop_117]	as 	'12/4/2025 '
,[Prop_118]	as 	'12/11/2025'
,[Prop_119]	as 	'12/18/2025'
,[Prop_120]	as 	'12/25/2025'
,[Prop_121]	as 	'1/1/2026  '
,[Prop_122]	as 	'1/8/2026  '
,[Prop_123]	as 	'1/15/2026 '
,[Prop_124]	as 	'1/22/2026 '
,[Prop_125]	as 	'1/29/2026 '
,[Prop_126]	as 	'2/5/2026  '
,[Prop_127]	as 	'2/12/2026 '
,[Prop_128]	as 	'2/19/2026 '
,[Prop_129]	as 	'2/26/2026 '
,[Prop_130]	as 	'3/5/2026  '
,[Prop_131]	as 	'3/12/2026 '
,[Prop_132]	as 	'3/19/2026 '
,[Prop_133]	as 	'3/26/2026 '
,[Prop_134]	as 	'4/2/2026  '
,[Prop_135]	as 	'4/9/2026  '
,[Prop_136]	as 	'4/16/2026 '
,[Prop_137]	as 	'4/23/2026 '
,[Prop_138]	as 	'4/30/2026 '
,[Prop_139]	as 	'5/7/2026  '
,[Prop_140]	as 	'5/14/2026 '
,[Prop_141]	as 	'5/21/2026 '
,[Prop_142]	as 	'5/28/2026 '
,[Prop_143]	as 	'6/4/2026  '
,[Prop_144]	as 	'6/11/2026 '
,[Prop_145]	as 	'6/18/2026 '
,[Prop_146]	as 	'6/25/2026 '
,[Prop_147]	as 	'7/2/2026  '
,[Prop_148]	as 	'7/9/2026  '
,[Prop_149]	as 	'7/16/2026 '
,[Prop_150]	as 	'7/23/2026 '
,[Prop_151]	as 	'7/30/2026 '
,[Prop_152]	as 	'8/6/2026  '
,[Prop_153]	as 	'8/13/2026 '
,[Prop_154]	as 	'8/20/2026 '
,[Prop_155]	as 	'8/27/2026 '
,[Prop_156]	as 	'9/3/2026  '
,[Prop_157]	as 	'9/10/2026 '
,[Prop_158]	as 	'9/17/2026 '
,[Prop_159]	as 	'9/24/2026 '
,[Prop_160]	as 	'10/1/2026 '
,[Prop_161]	as 	'10/8/2026 '
,[Prop_162]	as 	'10/15/2026'
,[Prop_163]	as 	'10/22/2026'
,[Prop_164]	as 	'10/29/2026'
,[Prop_165]	as 	'11/5/2026 '
,[Prop_166]	as 	'11/12/2026'
,[Prop_167]	as 	'11/19/2026'
,[Prop_168]	as 	'11/26/2026'
,[Prop_169]	as 	'12/3/2026 '
,[Prop_170]	as 	'12/10/2026'
,[Prop_171]	as 	'12/17/2026'
,[Prop_172]	as 	'12/24/2026'
,[Prop_173]	as 	'12/31/2026'
,[Prop_174]	as 	'1/7/2027  '
,[Prop_175]	as 	'1/14/2027 '
,[Prop_176]	as 	'1/21/2027 '
,[Prop_177]	as 	'1/28/2027 '
,[Prop_178]	as 	'2/4/2027  '
,[Prop_179]	as 	'2/11/2027 '
,[Prop_180]	as 	'2/18/2027 '
,[Prop_181]	as 	'2/25/2027 '
,[Prop_182]	as 	'3/4/2027  '
,[Prop_183]	as 	'3/11/2027 '
,[Prop_184]	as 	'3/18/2027 '
,[Prop_185]	as 	'3/25/2027 '
,[Prop_186]	as 	'4/1/2027  '
,[Prop_187]	as 	'4/8/2027  '
,[Prop_188]	as 	'4/15/2027 '
,[Prop_189]	as 	'4/22/2027 '
,[Prop_190]	as 	'4/29/2027 '
,[Prop_191]	as 	'5/6/2027  '
,[Prop_192]	as 	'5/13/2027 '
,[Prop_193]	as 	'5/20/2027 '
,[Prop_194]	as 	'5/27/2027 '
,[Prop_195]	as 	'6/3/2027  '
,[Prop_196]	as 	'6/10/2027 '
,[Prop_197]	as 	'6/17/2027 '
,[Prop_198]	as 	'6/24/2027 '
,[Prop_199]	as 	'7/1/2027  '
,[Prop_200]	as 	'7/8/2027  '
,[Prop_201]	as 	'7/15/2027 '
,[Prop_202]	as 	'7/22/2027 '
,[Prop_203]	as 	'7/29/2027 '
,[Prop_204]	as 	'8/5/2027  '
,[Prop_205]	as 	'8/12/2027 '
,[Prop_206]	as 	'8/19/2027 '
,[Prop_207]	as 	'8/26/2027 '
,[Prop_208]	as 	'9/2/2027  '
,[Prop_209]	as 	'9/9/2027  '
,[Prop_210]	as 	'9/16/2027 '
,[Prop_211]	as 	'9/23/2027 '
,[Prop_212]	as 	'9/30/2027 '
,[Prop_213]	as 	'10/7/2027 '
,[Prop_214]	as 	'10/14/2027'
,[Prop_215]	as 	'10/21/2027'
,[Prop_216]	as 	'10/28/2027'
,[Prop_217]	as 	'11/4/2027 '
,[Prop_218]	as 	'11/11/2027'
,[Prop_219]	as 	'11/18/2027'
,[Prop_220]	as 	'11/25/2027'
,[Prop_221]	as 	'12/2/2027 '
,[Prop_222]	as 	'12/9/2027 '
,[Prop_223]	as 	'12/16/2027'
,[Prop_224]	as 	'12/23/2027'
,[Prop_225]	as 	'12/30/2027'
,[Prop_226]	as 	'1/6/2028  '
,[Prop_227]	as 	'1/13/2028 '
,[Prop_228]	as 	'1/20/2028 '
,[Prop_229]	as 	'1/27/2028 '
,[Prop_230]	as 	'2/3/2028  '
,[Prop_231]	as 	'2/10/2028 '
,[Prop_232]	as 	'2/17/2028 '
,[Prop_233]	as 	'2/24/2028 '
,[Prop_234]	as 	'3/2/2028  '
,[Prop_235]	as 	'3/9/2028  '
,[Prop_236]	as 	'3/16/2028 '
,[Prop_237]	as 	'3/23/2028 '
,[Prop_238]	as 	'3/30/2028 '
,[Prop_239]	as 	'4/6/2028  '
,[Prop_240]	as 	'4/13/2028 '
,[Prop_241]	as 	'4/20/2028 '
,[Prop_242]	as 	'4/27/2028 '
,[Prop_243]	as 	'5/4/2028  '
,[Prop_244]	as 	'5/11/2028 '
,[Prop_245]	as 	'5/18/2028 '
,[Prop_246]	as 	'5/25/2028 '
,[Prop_247]	as 	'6/1/2028  '
,[Prop_248]	as 	'6/8/2028  '
,[Prop_249]	as 	'6/15/2028 '
,[Prop_250]	as 	'6/22/2028 '
,[Prop_251]	as 	'6/29/2028 '
,[Prop_252]	as 	'7/6/2028  '
,[Prop_253]	as 	'7/13/2028 '
,[Prop_254]	as 	'7/20/2028 '
,[Prop_255]	as 	'7/27/2028 '
,[Prop_256]	as 	'8/3/2028  '
,[Prop_257]	as 	'8/10/2028 '
,[Prop_258]	as 	'8/17/2028 '
,[Prop_259]	as 	'8/24/2028 '
,[Prop_260]	as 	'8/31/2028 '
,[Prop_261]	as 	'9/7/2028  '
,[Prop_262]	as 	'9/14/2028 '
,[Prop_263]	as 	'9/21/2028 '
,[Prop_264]	as 	'9/28/2028 '
,[Prop_265]	as 	'10/5/2028 '
,[Prop_266]	as 	'10/12/2028'
,[Prop_267]	as 	'10/19/2028'
,[Prop_268]	as 	'10/26/2028'
,[Prop_269]	as 	'11/2/2028 '
,[Prop_270]	as 	'11/9/2028 '
,[Prop_271]	as 	'11/16/2028'
,[Prop_272]	as 	'11/23/2028'
,[Prop_273]	as 	'11/30/2028'
,[Prop_274]	as 	'12/7/2028 '
,[Prop_275]	as 	'12/14/2028'
,[Prop_276]	as 	'12/21/2028'
,[Prop_277]	as 	'12/28/2028'
,[Prop_278]	as 	'1/4/2029  '
,[Prop_279]	as 	'1/11/2029 '
,[Prop_280]	as 	'1/18/2029 '
,[Prop_281]	as 	'1/25/2029 '
,[Prop_282]	as 	'2/1/2029  '
,[Prop_283]	as 	'2/8/2029  '
,[Prop_284]	as 	'2/15/2029'
,[Prop_285]	as 	'2/22/2029'
,[Prop_286]	as 	'3/1/2029'
,[Prop_287]	as 	'3/8/2029'
,[Prop_288]	as 	'3/15/2029'
,[Prop_289]	as 	'3/22/2029'
,[Prop_290]	as 	'3/29/2029'
,[Prop_291]	as 	'4/5/2029'
,[Prop_292]	as 	'4/12/2029'
,[Prop_293]	as 	'4/19/2029'
,[Prop_294]	as 	'4/26/2029'
,[Prop_295]	as 	'5/3/2029'
,[Prop_296]	as 	'5/10/2029'
,[Prop_297]	as 	'5/17/2029'
,[Prop_298]	as 	'5/24/2029'
,[Prop_299]	as 	'5/31/2029'
,[Prop_300]	as 	'6/7/2029'
,[Prop_301]	as 	'6/14/2029'
,[Prop_302]	as 	'6/21/2029'
,[Prop_303]	as 	'6/28/2029'
,[Prop_304]	as 	'7/5/2029'
,[Prop_305]	as 	'7/12/2029'
,[Prop_306]	as 	'7/19/2029'
,[Prop_307]	as 	'7/26/2029'
,[Prop_308]	as 	'8/2/2029'
,[Prop_309]	as 	'8/9/2029'
,[Prop_310]	as 	'8/16/2029'
,[Prop_311]	as 	'8/23/2029'
,[Prop_312]	as 	'8/30/2029'
,[Prop_313]	as 	'9/6/2029'
,[Prop_314]	as 	'9/13/2029'
,[Prop_315]	as 	'9/20/2029'
,[Prop_316]	as 	'9/27/2029'
,[Prop_317]	as 	'10/4/2029'
,project_number
,SourceFileName
,CreatedDateTime

from [epr].[Summary_Progress_Report_OA_Data_Ruya11_D7507]



GO

CREATE TABLE [epr].[Summary_Progress_Report_OA_Data_Ruya11_D7507_Unpivot]
(
	[Details] [varchar](500) NULL,
	[W.F (%)] [varchar](500) NULL,
	[Plan_Type] [varchar](500) NULL,
	[spread_date] [varchar](500) NULL,
	[spread_unit] [varchar](500) NULL,
	[project_number] [varchar](500) NULL,
	[SourceFileName] [varchar](5000) NULL,
	[CreatedDateTime] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


GO

CREATE View [epr].[Summary_Progress_Report_OA_Data_Ruya11_D7507_Unpivot_v] as
select	[Details]
		,[W.F (%)] as [W.F Percentage]
		,[Plan_Type] as [Plan Type]
		,[spread_date] as [Spread Date]
		,[spread_unit] as [Spread Unit]
		,[project_number] as [Project Number]
		,[SourceFileName] as [Source File Name]
		,[CreatedDateTime] as [Created Date Time]
from [epr].[Summary_Progress_Report_OA_Data_Ruya11_D7507_Unpivot]


GO


