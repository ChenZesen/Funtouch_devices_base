.class public Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;
.super Ljava/lang/Object;
.source "AutoBrightnessAnimator.java"


# static fields
.field private static final mDefaultScreenCurveActually:[D

.field private static final mPD1420F_EXScrennCurveActually:[D

.field private static final mPd1408ScreenCurveActually:[D

.field private static final model:Ljava/lang/String;


# instance fields
.field private mScreenCurveActually:[D

.field private mSimulateCurve:Lcom/vivo/common/autobrightness/SimulateCurve;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xec

    .line 11
    const-string v0, "ro.product.model.bbk"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->model:Ljava/lang/String;

    .line 12
    new-array v0, v2, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mPD1420F_EXScrennCurveActually:[D

    .line 250
    new-array v0, v2, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mPd1408ScreenCurveActually:[D

    .line 483
    new-array v0, v2, [D

    fill-array-data v0, :array_2

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mDefaultScreenCurveActually:[D

    return-void

    .line 12
    :array_0
    .array-data 8
        0x4010666666666666L    # 4.1
        0x401399999999999aL    # 4.9
        0x4016cccccccccccdL    # 5.7
        0x401a19999999999aL    # 6.525
        0x401d666666666666L    # 7.35
        0x402059999999999aL    # 8.175
        0x4022000000000000L    # 9.0
        0x4023cccccccccccdL    # 9.9
        0x402599999999999aL    # 10.8
        0x4027666666666666L    # 11.7
        0x4029333333333333L    # 12.6
        0x402af33333333333L    # 13.475
        0x402cb33333333333L    # 14.35
        0x402e733333333333L    # 15.225
        0x403019999999999aL    # 16.1
        0x4031070a3d70a3d7L    # 17.0275
        0x4031f47ae147ae14L    # 17.955
        0x4032e1eb851eb852L    # 18.8825
        0x4033cf5c28f5c28fL    # 19.81
        0x4034bd70a3d70a3dL    # 20.74
        0x4035ab851eb851ecL    # 21.67
        0x403699999999999aL    # 22.6
        0x403787ae147ae148L    # 23.53
        0x403878f5c28f5c29L    # 24.4725
        0x40396a3d70a3d70aL    # 25.415
        0x403a5b851eb851ecL    # 26.3575
        0x403b4ccccccccccdL    # 27.3
        0x403c3ccccccccccdL    # 28.2375
        0x403d2ccccccccccdL    # 29.175
        0x403e1ccccccccccdL    # 30.1125
        0x403f0ccccccccccdL    # 31.05
        0x403feccccccccccdL    # 31.925
        0x4040666666666666L    # 32.8
        0x4040d66666666666L    # 33.675
        0x4041466666666666L    # 34.55
        0x4041bf5c28f5c28fL    # 35.495
        0x40423851eb851eb8L    # 36.44
        0x4042b147ae147ae1L    # 37.385
        0x40432a3d70a3d70aL    # 38.33
        0x4043a33333333333L    # 39.275
        0x40441c28f5c28f5cL    # 40.22
        0x4044951eb851eb85L    # 41.165
        0x40450e147ae147aeL    # 42.11
        0x404593851eb851ecL    # 43.1525
        0x404618f5c28f5c29L    # 44.195
        0x40469e6666666666L    # 45.2375
        0x404723d70a3d70a4L    # 46.28
        0x40479ae147ae147bL    # 47.21
        0x404811eb851eb852L    # 48.14
        0x404888f5c28f5c29L    # 49.07
        0x4049000000000000L    # 50.0
        0x40497dc28f5c28f6L    # 50.9825
        0x4049fb851eb851ecL    # 51.965
        0x404a7947ae147ae1L    # 52.9475
        0x404af70a3d70a3d7L    # 53.93
        0x404b723d70a3d70aL    # 54.8925
        0x404bed70a3d70a3dL    # 55.855
        0x404c68a3d70a3d71L    # 56.8175
        0x404ce3d70a3d70a4L    # 57.78
        0x404d5e147ae147aeL    # 58.735
        0x404dd851eb851eb8L    # 59.69
        0x404e528f5c28f5c3L    # 60.645
        0x404ecccccccccccdL    # 61.6
        0x404f47ae147ae148L    # 62.56
        0x404fc28f5c28f5c3L    # 63.52
        0x40501eb851eb851fL    # 64.48
        0x40505c28f5c28f5cL    # 65.44
        0x40509a3d70a3d70aL    # 66.41
        0x4050d851eb851eb8L    # 67.38
        0x4051166666666666L    # 68.35
        0x4051547ae147ae14L    # 69.32
        0x4051923d70a3d70aL    # 70.285
        0x4051d00000000000L    # 71.25
        0x40520dc28f5c28f6L    # 72.215
        0x40524b851eb851ecL    # 73.18
        0x405288a3d70a3d71L    # 74.135
        0x4052c5c28f5c28f6L    # 75.09
        0x405302e147ae147bL    # 76.045
        0x4053400000000000L    # 77.0
        0x40537d999999999aL    # 77.9625
        0x4053bb3333333333L    # 78.925
        0x4053f8cccccccccdL    # 79.8875
        0x4054366666666666L    # 80.85
        0x40547428f5c28f5cL    # 81.815
        0x4054b1eb851eb852L    # 82.78
        0x4054efae147ae148L    # 83.745
        0x40552d70a3d70a3dL    # 84.71
        0x4055a947ae147ae1L    # 86.645
        0x4056251eb851eb85L    # 88.58
        0x4056a0f5c28f5c29L    # 90.515
        0x40571ccccccccccdL    # 92.45
        0x405795999999999aL    # 94.3375
        0x40580e6666666666L    # 96.225
        0x4058873333333333L    # 98.1125
        0x4059000000000000L    # 100.0
        0x40597ccccccccccdL    # 101.95
        0x4059f9999999999aL    # 103.9
        0x405a766666666666L    # 105.85
        0x405af33333333333L    # 107.8
        0x405b6e6666666666L    # 109.725
        0x405be9999999999aL    # 111.65
        0x405c64cccccccccdL    # 113.575
        0x405ce00000000000L    # 115.5
        0x405d59999999999aL    # 117.4
        0x405dd33333333333L    # 119.3
        0x405e4ccccccccccdL    # 121.2
        0x405ec66666666666L    # 123.1
        0x405f3e6666666666L    # 124.975
        0x405fb66666666666L    # 126.85
        0x4060173333333333L    # 128.725
        0x4060533333333333L    # 130.6
        0x4060900000000000L    # 132.5
        0x4060cccccccccccdL    # 134.4
        0x406109999999999aL    # 136.3
        0x4061466666666666L    # 138.2
        0x4061826666666666L    # 140.075
        0x4061be6666666666L    # 141.95
        0x4061fa6666666666L    # 143.825
        0x4062366666666666L    # 145.7
        0x4062726666666666L    # 147.575
        0x4062ae6666666666L    # 149.45
        0x4062ea6666666666L    # 151.325
        0x4063266666666666L    # 153.2
        0x4063626666666666L    # 155.075
        0x40639e6666666666L    # 156.95
        0x4063da6666666666L    # 158.825
        0x4064166666666666L    # 160.7
        0x4064533333333333L    # 162.6
        0x4064900000000000L    # 164.5
        0x4064cccccccccccdL    # 166.4
        0x406509999999999aL    # 168.3
        0x4065440000000000L    # 170.125
        0x40657e6666666666L    # 171.95
        0x4065b8cccccccccdL    # 173.775
        0x4065f33333333333L    # 175.6
        0x40662f3333333333L    # 177.475
        0x40666b3333333333L    # 179.35
        0x4066a73333333333L    # 181.225
        0x4066e33333333333L    # 183.1
        0x40671e6666666666L    # 184.95
        0x406759999999999aL    # 186.8
        0x406794cccccccccdL    # 188.65
        0x4067d00000000000L    # 190.5
        0x40680b3333333333L    # 192.35
        0x4068466666666666L    # 194.2
        0x406881999999999aL    # 196.05
        0x4068bccccccccccdL    # 197.9
        0x4068f80000000000L    # 199.75
        0x4069333333333333L    # 201.6
        0x40696e6666666666L    # 203.45
        0x4069a9999999999aL    # 205.3
        0x4069e40000000000L    # 207.125
        0x406a1e6666666666L    # 208.95
        0x406a58cccccccccdL    # 210.775
        0x406a933333333333L    # 212.6
        0x406acd999999999aL    # 214.425
        0x406b080000000000L    # 216.25
        0x406b426666666666L    # 218.075
        0x406b7ccccccccccdL    # 219.9
        0x406bb73333333333L    # 221.725
        0x406bf1999999999aL    # 223.55
        0x406c2c0000000000L    # 225.375
        0x406c666666666666L    # 227.2
        0x406cbccccccccccdL    # 229.9
        0x406d133333333333L    # 232.6
        0x406d69999999999aL    # 235.3
        0x406dc00000000000L    # 238.0
        0x406e3ccccccccccdL    # 241.9
        0x406eb9999999999aL    # 245.8
        0x406f366666666666L    # 249.7
        0x406f7f3333333333L    # 251.975
        0x406fc80000000000L    # 254.25
        0x4070086666666666L    # 256.525
        0x40702ccccccccccdL    # 258.8
        0x4070533333333333L    # 261.2
        0x407079999999999aL    # 263.6
        0x4070a00000000000L    # 266.0
        0x4070d00000000000L    # 269.0
        0x4071000000000000L    # 272.0
        0x4071300000000000L    # 275.0
        0x40715b3333333333L    # 277.7
        0x4071866666666666L    # 280.4
        0x4071b1999999999aL    # 283.1
        0x4071dccccccccccdL    # 285.8
        0x407202aaaab39d51L    # 288.1666667
        0x40722888887f95e2L    # 290.5333333
        0x40724e6666666666L    # 292.9
        0x40727d55554c62afL    # 295.8333333
        0x4072ac44444d36eaL    # 298.7666667
        0x4072db3333333333L    # 301.7
        0x4073060000000000L    # 304.375
        0x407330cccccccccdL    # 307.05
        0x40735b999999999aL    # 309.725
        0x4073866666666666L    # 312.4
        0x4073ab3333333333L    # 314.7
        0x4073d00000000000L    # 317.0
        0x4073f4cccccccccdL    # 319.3
        0x407423bbbbb2c916L    # 322.2333333
        0x407452aaaab39d51L    # 325.1666667
        0x407481999999999aL    # 328.1
        0x4074a66666666666L    # 330.4
        0x4074cb3333333333L    # 332.7
        0x4074f00000000000L    # 335.0
        0x40751a0000000000L    # 337.625
        0x4075440000000000L    # 340.25
        0x40756e0000000000L    # 342.875
        0x4075980000000000L    # 345.5
        0x4075c66666666666L    # 348.4
        0x4075f4cccccccccdL    # 351.3
        0x4076233333333333L    # 354.2
        0x407646eeeee5fc49L    # 356.4333333
        0x40766aaaaab39d51L    # 358.6666667
        0x40768e6666666666L    # 360.9
        0x4076c5999999999aL    # 364.35
        0x4076fccccccccccdL    # 367.8
        0x4077340000000000L    # 371.25
        0x40776b3333333333L    # 374.7
        0x4077a088887f95e2L    # 378.0333333
        0x4077d5dddde6d084L    # 381.3666667
        0x40780b3333333333L    # 384.7
        0x407842aaaab39d51L    # 388.1666667
        0x40787a2222192f7cL    # 391.6333333
        0x4078b1999999999aL    # 395.1
        0x4078e7999999999aL    # 398.475
        0x40791d999999999aL    # 401.85
        0x407953999999999aL    # 405.225
        0x407989999999999aL    # 408.6
        0x4079bddddde6d084L    # 411.8666667
        0x4079f22222192f7cL    # 415.1333333
        0x407a266666666666L    # 418.4
        0x407a6ddddde6d084L    # 422.8666667
        0x407ab555554c62afL    # 427.3333333
        0x407afccccccccccdL    # 431.8
        0x407b3ddddde6d084L    # 435.8666667
        0x407b7eeeeee5fc49L    # 439.9333333
        0x407bc00000000000L    # 444.0
    .end array-data

    .line 250
    :array_1
    .array-data 8
        0x4007566cf41f212dL    # 2.9172
        0x40075e353f7ced91L    # 2.921
        0x4012d205bc01a36eL    # 4.7051
        0x4012d47ae147ae14L    # 4.7075
        0x401745d63886594bL    # 5.8182
        0x4017472b020c49baL    # 5.8195
        0x401d7837b4a2339cL    # 7.3674
        0x401d80d1b71758e2L    # 7.3758
        0x4021d23a29c779a7L    # 8.9106
        0x4021d74bc6a7ef9eL    # 8.9205
        0x402403d70a3d70a4L    # 10.0075
        0x402404189374bc6aL    # 10.008
        0x40278189374bc6a8L    # 11.753
        0x402785a1cac08312L    # 11.761
        0x402a8b9f559b3d08L    # 13.2727
        0x402a8d013a92a305L    # 13.2754
        0x402cbd495182a993L    # 14.3697
        0x402cbdb22d0e5604L    # 14.3705
        0x40301786c226809dL    # 16.0919
        0x40301a92a3055326L    # 16.1038
        0x403163404ea4a8c1L    # 17.3877
        0x4031688ce703afb8L    # 17.4084
        0x4032b4d6a161e4f7L    # 18.7064
        0x4032b56d5cfaacdaL    # 18.7087
        0x403467e90ff97247L    # 20.4059
        0x40346a29c779a6b5L    # 20.4147
        0x4035b594af4f0d84L    # 21.7093
        0x4035b6594af4f0d8L    # 21.7123
        0x4036fc710cb295eaL    # 22.9861
        0x4036fecbfb15b574L    # 22.9953
        0x4038b49ba5e353f8L    # 24.7055
        0x4038b7d566cf41f2L    # 24.7181
        0x4039c6ae7d566cf4L    # 25.7761
        0x4039cb2fec56d5d0L    # 25.7937
        0x403b3fe5c91d14e4L    # 27.2496
        0x403b4083126e978dL    # 27.252
        0x403cf339c0ebedfaL    # 28.9501
        0x403cf8a71de69ad4L    # 28.9713
        0x403e0624dd2f1aa0L    # 30.024
        0x403f7972474538efL    # 31.4744
        0x404078e560418937L    # 32.9445
        0x4040f94e3bcd35a8L    # 33.9477
        0x4041caf1a9fbe76dL    # 35.5855
        0x40426f0d844d013bL    # 36.8676
        0x4042f3126e978d50L    # 37.899
        0x4043c84b5dcc63f1L    # 39.5648
        0x404464dd2f1a9fbeL    # 40.788
        0x404502b020c49ba6L    # 42.021
        0x4045cfdf3b645a1dL    # 43.624
        0x4046687fcb923a2aL    # 44.8164
        0x404703573eab367aL    # 46.0261
        0x4047db15b573eab3L    # 47.7116
        0x4048567381d7dbf5L    # 48.6754
        0x404914f41f212d77L    # 50.1637
        0x4049d4816f0068dcL    # 51.6602
        0x404a5ab367a0f909L    # 52.7086
        0x404b11999999999aL    # 54.1375
        0x404bb9930be0ded3L    # 55.4498
        0x404c41ba5e353f7dL    # 56.5135
        0x404d05b22d0e5604L    # 58.0445
        0x404dbc67381d7dbfL    # 59.4719
        0x404e37525460aa65L    # 60.4322
        0x404eff65fd8adabaL    # 61.9953
        0x404f942c3c9eecc0L    # 63.1576
        0x4050131f8a0902deL    # 64.2988
        0x40507907c84b5dccL    # 65.8911
        0x4050c170a3d70a3dL    # 67.0225
        0x405109a6b50b0f28L    # 68.1508
        0x4051453404ea4a8cL    # 69.0813
        0x405181a1cac08312L    # 70.0255
        0x4051d5a1cac08312L    # 71.338
        0x4052337b4a2339c1L    # 72.8044
        0x405270c49ba5e354L    # 73.762
        0x4052c2b1c432ca58L    # 75.0421
        0x40531860aa64c2f8L    # 76.3809
        0x40535dce075f6fd2L    # 77.4657
        0x4053b18c7e28240bL    # 78.7742
        0x40540640b780346eL    # 80.0977
        0x40544ab020c49ba6L    # 81.167
        0x4054a49a02752546L    # 82.5719
        0x4054eb6fd21ff2e5L    # 83.6787
        0x4055310624dd2f1bL    # 84.766
        0x40558deb851eb852L    # 86.2175
        0x4055d6474538ef35L    # 87.3481
        0x40561d32617c1bdaL    # 88.4562
        0x405679bc01a36e2fL    # 89.9021
        0x4056bd5182a9930cL    # 90.9581
        0x4056fab367a0f909L    # 91.9172
        0x40575aa4a8c154caL    # 93.4163
        0x40579851eb851eb8L    # 94.38
        0x4057d86c226809d5L    # 95.3816
        0x4057d954c985f06fL    # 95.3958
        0x4057dc4189374bc7L    # 95.4415
        0x4058389374bc6a7fL    # 96.884
        0x405874b5dcc63f14L    # 97.8236
        0x4058d921ff2e48e9L    # 99.3927
        0x4058dc1205bc01a3L    # 99.4386
        0x405976703afb7e91L    # 101.8506
        0x40597acbfb15b574L    # 101.9187
        0x405a13972474538fL    # 104.3061
        0x405a1570a3d70a3dL    # 104.335
        0x405a3921ff2e48e9L    # 104.8927
        0x405ab63f141205bcL    # 106.8476
        0x405adbe90ff97247L    # 107.4361
        0x405b5bc01a36e2ebL    # 109.4336
        0x405b89930be0ded3L    # 110.1496
        0x405c0d61e4f765feL    # 112.2091
        0x405c3087fcb923a3L    # 112.7583
        0x405cb9c5d6388659L    # 114.9027
        0x405cda786c22680aL    # 115.4136
        0x405cdf318fc50481L    # 115.4874
        0x405d7c87fcb923a3L    # 117.9458
        0x405d84f0d844d014L    # 118.0772
        0x405e2c4b5dcc63f1L    # 120.6921
        0x405e33318fc50481L    # 120.7999
        0x405edd8fc504816fL    # 123.4619
        0x405ee71c432ca57aL    # 123.6111
        0x405f966666666666L    # 126.35
        0x405f9828f5c28f5cL    # 126.3775
        0x405f9b2fec56d5d0L    # 126.4248
        0x40602993dd97f62bL    # 129.2993
        0x40602a5c91d14e3cL    # 129.3238
        0x406087780346dc5dL    # 132.2334
        0x406089dbf487fcb9L    # 132.3081
        0x40609b780346dc5dL    # 132.8584
        0x4060e386c226809dL    # 135.1102
        0x4060f78793dd97f6L    # 135.7353
        0x406141a5e353f7cfL    # 138.0515
        0x4061585c91d14e3cL    # 138.7613
        0x4061a4cf41f212d7L    # 141.1503
        0x4061b87a0f9096bcL    # 141.7649
        0x4061b9d70a3d70a4L    # 141.8075
        0x40621cf9db22d0e5L    # 144.9055
        0x40621e6666666666L    # 144.95
        0x40627f21ff2e48e9L    # 147.9729
        0x406280aa64c2f838L    # 148.0208
        0x4062ea5bc01a36e3L    # 151.3237
        0x4062ee76c8b43958L    # 151.452
        0x406301ec56d5cfabL    # 152.0601
        0x40634f3404ea4a8cL    # 154.4751
        0x4063685e353f7ceeL    # 155.2615
        0x4063b78d4fdf3b64L    # 157.736
        0x4063d0b020c49ba6L    # 158.5215
        0x406422c3c9eecbfbL    # 161.0864
        0x406437837b4a233aL    # 161.7348
        0x4064ca68db8bac71L    # 166.3253
        0x4064cde90ff97247L    # 166.4347
        0x4064cf141205bc02L    # 166.4712
        0x4064e4219652bd3cL    # 167.1291
        0x406533c28f5c28f6L    # 169.6175
        0x40653547ae147ae1L    # 169.665
        0x406550189374bc6aL    # 170.503
        0x4065a154c985f06fL    # 173.0416
        0x4065ba1f212d7732L    # 173.8163
        0x4065bdd2f1a9fbe7L    # 173.932
        0x40660ea0902de00dL    # 176.4571
        0x40662946dc5d6388L    # 177.2899
        0x40662c395810624eL    # 177.382
        0x4066996e2eb1c433L    # 180.7947
        0x40669a36113404eaL    # 180.8191
        0x4066a316872b020cL    # 181.0965
        0x4067080ebedfa440L    # 184.2518
        0x4067085aee631f8aL    # 184.2611
        0x40670bbda5119ce0L    # 184.3669
        0x40677e3c9eecbfb1L    # 187.9449
        0x40677f7c1bda511aL    # 187.9839
        0x4067980346dc5d64L    # 188.7504
        0x4067f170a3d70a3dL    # 191.545
        0x4067f1db22d0e560L    # 191.558
        0x40680b65fd8adabaL    # 192.3562
        0x40687fba5e353f7dL    # 195.9915
        0x406882ed916872b0L    # 196.0915
        0x4068d65e353f7ceeL    # 198.699
        0x4068ec87fcb923a3L    # 199.3916
        0x4068f4786c22680aL    # 199.6397
        0x406966dfa43fe5c9L    # 203.2148
        0x406967374bc6a7f0L    # 203.2255
        0x40696ceb1c432ca5L    # 203.4037
        0x4069e14538ef34d7L    # 207.0397
        0x4069e29e1b089a02L    # 207.0818
        0x4069e32f1a9fbe77L    # 207.0995
        0x406a5d97f62b6ae8L    # 210.9248
        0x406a6052bd3c3611L    # 211.0101
        0x406a7e2a9930be0eL    # 211.9427
        0x406ad59f559b3d08L    # 214.6757
        0x406add119ce075f7L    # 214.9084
        0x406aefb71758e219L    # 215.4911
        0x406b587d566cf41fL    # 218.7653
        0x406b68f4f0d844d0L    # 219.2799
        0x406b70af4f0d844dL    # 219.5214
        0x406bcd04816f0069L    # 222.4068
        0x406bee6f69446738L    # 223.4511
        0x406c4da1cac08312L    # 226.426
        0x406c51aee631f8a1L    # 226.5526
        0x406c6ab439581062L    # 227.3345
        0x406cfdfd8adab9f5L    # 231.9372
        0x406d17ae147ae148L    # 232.74
        0x406d1a91d14e3bcdL    # 232.8303
        0x406d7d7c1bda511aL    # 235.9214
        0x406d9a1d7dbf4880L    # 236.8161
        0x406da3cac083126fL    # 237.1185
        0x406e18b6ae7d566dL    # 240.7723
        0x406e20a305532618L    # 241.0199
        0x406ea224dd2f1aa0L    # 245.067
        0x406f27930be0ded3L    # 249.2367
        0x406f28cf41f212d7L    # 249.2753
        0x406faf35a858793eL    # 253.4753
        0x406fb3f972474539L    # 253.6242
        0x407018793dd97f63L    # 257.5296
        0x407027d844d013a9L    # 258.4903
        0x40705eb5dcc63f14L    # 261.9194
        0x40706abc01a36e2fL    # 262.6709
        0x4070bed4fdf3b646L    # 267.927
        0x4070f59d495182aaL    # 271.3509
        0x40710377318fc505L    # 272.2166
        0x40713ccc63f14120L    # 275.7999
        0x40714a6666666666L    # 276.65
        0x407190532617c1beL    # 281.0203
        0x407191dab9f559b4L    # 281.1159
        0x4071d50be0ded289L    # 285.3154
        0x40721fc49ba5e354L    # 289.9855
        0x407220c63f141206L    # 290.0484
        0x407264c56d5cfaadL    # 294.2982
        0x4072734f765fd8aeL    # 295.2069
        0x4072ad305532617cL    # 298.8243
        0x4072f67e28240b78L    # 303.4058
        0x4073055dcc63f141L    # 304.3354
        0x40733e5532617c1cL    # 307.8958
        0x407389d35a858794L    # 312.6141
        0x4073d5a0f9096bbaL    # 317.3518
        0x4073df525460aa65L    # 317.9576
        0x40742c4f765fd8aeL    # 322.7694
        0x407479d566cf41f2L    # 327.6146
        0x4074c6f6fd21ff2eL    # 332.4353
        0x4075147e28240b78L    # 337.2808
        0x4075147e28240b78L    # 337.2808
    .end array-data

    .line 483
    :array_2
    .array-data 8
        0x4007566cf41f212dL    # 2.9172
        0x40075e353f7ced91L    # 2.921
        0x4012d205bc01a36eL    # 4.7051
        0x4012d47ae147ae14L    # 4.7075
        0x401745d63886594bL    # 5.8182
        0x4017472b020c49baL    # 5.8195
        0x401d7837b4a2339cL    # 7.3674
        0x401d80d1b71758e2L    # 7.3758
        0x4021d23a29c779a7L    # 8.9106
        0x4021d74bc6a7ef9eL    # 8.9205
        0x402403d70a3d70a4L    # 10.0075
        0x402404189374bc6aL    # 10.008
        0x40278189374bc6a8L    # 11.753
        0x402785a1cac08312L    # 11.761
        0x402a8b9f559b3d08L    # 13.2727
        0x402a8d013a92a305L    # 13.2754
        0x402cbd495182a993L    # 14.3697
        0x402cbdb22d0e5604L    # 14.3705
        0x40301786c226809dL    # 16.0919
        0x40301a92a3055326L    # 16.1038
        0x403163404ea4a8c1L    # 17.3877
        0x4031688ce703afb8L    # 17.4084
        0x4032b4d6a161e4f7L    # 18.7064
        0x4032b56d5cfaacdaL    # 18.7087
        0x403467e90ff97247L    # 20.4059
        0x40346a29c779a6b5L    # 20.4147
        0x4035b594af4f0d84L    # 21.7093
        0x4035b6594af4f0d8L    # 21.7123
        0x4036fc710cb295eaL    # 22.9861
        0x4036fecbfb15b574L    # 22.9953
        0x4038b49ba5e353f8L    # 24.7055
        0x4038b7d566cf41f2L    # 24.7181
        0x4039c6ae7d566cf4L    # 25.7761
        0x4039cb2fec56d5d0L    # 25.7937
        0x403b3fe5c91d14e4L    # 27.2496
        0x403b4083126e978dL    # 27.252
        0x403cf339c0ebedfaL    # 28.9501
        0x403cf8a71de69ad4L    # 28.9713
        0x403e0624dd2f1aa0L    # 30.024
        0x403f7972474538efL    # 31.4744
        0x404078e560418937L    # 32.9445
        0x4040f94e3bcd35a8L    # 33.9477
        0x4041caf1a9fbe76dL    # 35.5855
        0x40426f0d844d013bL    # 36.8676
        0x4042f3126e978d50L    # 37.899
        0x4043c84b5dcc63f1L    # 39.5648
        0x404464dd2f1a9fbeL    # 40.788
        0x404502b020c49ba6L    # 42.021
        0x4045cfdf3b645a1dL    # 43.624
        0x4046687fcb923a2aL    # 44.8164
        0x404703573eab367aL    # 46.0261
        0x4047db15b573eab3L    # 47.7116
        0x4048567381d7dbf5L    # 48.6754
        0x404914f41f212d77L    # 50.1637
        0x4049d4816f0068dcL    # 51.6602
        0x404a5ab367a0f909L    # 52.7086
        0x404b11999999999aL    # 54.1375
        0x404bb9930be0ded3L    # 55.4498
        0x404c41ba5e353f7dL    # 56.5135
        0x404d05b22d0e5604L    # 58.0445
        0x404dbc67381d7dbfL    # 59.4719
        0x404e37525460aa65L    # 60.4322
        0x404eff65fd8adabaL    # 61.9953
        0x404f942c3c9eecc0L    # 63.1576
        0x4050131f8a0902deL    # 64.2988
        0x40507907c84b5dccL    # 65.8911
        0x4050c170a3d70a3dL    # 67.0225
        0x405109a6b50b0f28L    # 68.1508
        0x4051453404ea4a8cL    # 69.0813
        0x405181a1cac08312L    # 70.0255
        0x4051d5a1cac08312L    # 71.338
        0x4052337b4a2339c1L    # 72.8044
        0x405270c49ba5e354L    # 73.762
        0x4052c2b1c432ca58L    # 75.0421
        0x40531860aa64c2f8L    # 76.3809
        0x40535dce075f6fd2L    # 77.4657
        0x4053b18c7e28240bL    # 78.7742
        0x40540640b780346eL    # 80.0977
        0x40544ab020c49ba6L    # 81.167
        0x4054a49a02752546L    # 82.5719
        0x4054eb6fd21ff2e5L    # 83.6787
        0x4055310624dd2f1bL    # 84.766
        0x40558deb851eb852L    # 86.2175
        0x4055d6474538ef35L    # 87.3481
        0x40561d32617c1bdaL    # 88.4562
        0x405679bc01a36e2fL    # 89.9021
        0x4056bd5182a9930cL    # 90.9581
        0x4056fab367a0f909L    # 91.9172
        0x40575aa4a8c154caL    # 93.4163
        0x40579851eb851eb8L    # 94.38
        0x4057d86c226809d5L    # 95.3816
        0x4057d954c985f06fL    # 95.3958
        0x4057dc4189374bc7L    # 95.4415
        0x4058389374bc6a7fL    # 96.884
        0x405874b5dcc63f14L    # 97.8236
        0x4058d921ff2e48e9L    # 99.3927
        0x4058dc1205bc01a3L    # 99.4386
        0x405976703afb7e91L    # 101.8506
        0x40597acbfb15b574L    # 101.9187
        0x405a13972474538fL    # 104.3061
        0x405a1570a3d70a3dL    # 104.335
        0x405a3921ff2e48e9L    # 104.8927
        0x405ab63f141205bcL    # 106.8476
        0x405adbe90ff97247L    # 107.4361
        0x405b5bc01a36e2ebL    # 109.4336
        0x405b89930be0ded3L    # 110.1496
        0x405c0d61e4f765feL    # 112.2091
        0x405c3087fcb923a3L    # 112.7583
        0x405cb9c5d6388659L    # 114.9027
        0x405cda786c22680aL    # 115.4136
        0x405cdf318fc50481L    # 115.4874
        0x405d7c87fcb923a3L    # 117.9458
        0x405d84f0d844d014L    # 118.0772
        0x405e2c4b5dcc63f1L    # 120.6921
        0x405e33318fc50481L    # 120.7999
        0x405edd8fc504816fL    # 123.4619
        0x405ee71c432ca57aL    # 123.6111
        0x405f966666666666L    # 126.35
        0x405f9828f5c28f5cL    # 126.3775
        0x405f9b2fec56d5d0L    # 126.4248
        0x40602993dd97f62bL    # 129.2993
        0x40602a5c91d14e3cL    # 129.3238
        0x406087780346dc5dL    # 132.2334
        0x406089dbf487fcb9L    # 132.3081
        0x40609b780346dc5dL    # 132.8584
        0x4060e386c226809dL    # 135.1102
        0x4060f78793dd97f6L    # 135.7353
        0x406141a5e353f7cfL    # 138.0515
        0x4061585c91d14e3cL    # 138.7613
        0x4061a4cf41f212d7L    # 141.1503
        0x4061b87a0f9096bcL    # 141.7649
        0x4061b9d70a3d70a4L    # 141.8075
        0x40621cf9db22d0e5L    # 144.9055
        0x40621e6666666666L    # 144.95
        0x40627f21ff2e48e9L    # 147.9729
        0x406280aa64c2f838L    # 148.0208
        0x4062ea5bc01a36e3L    # 151.3237
        0x4062ee76c8b43958L    # 151.452
        0x406301ec56d5cfabL    # 152.0601
        0x40634f3404ea4a8cL    # 154.4751
        0x4063685e353f7ceeL    # 155.2615
        0x4063b78d4fdf3b64L    # 157.736
        0x4063d0b020c49ba6L    # 158.5215
        0x406422c3c9eecbfbL    # 161.0864
        0x406437837b4a233aL    # 161.7348
        0x4064ca68db8bac71L    # 166.3253
        0x4064cde90ff97247L    # 166.4347
        0x4064cf141205bc02L    # 166.4712
        0x4064e4219652bd3cL    # 167.1291
        0x406533c28f5c28f6L    # 169.6175
        0x40653547ae147ae1L    # 169.665
        0x406550189374bc6aL    # 170.503
        0x4065a154c985f06fL    # 173.0416
        0x4065ba1f212d7732L    # 173.8163
        0x4065bdd2f1a9fbe7L    # 173.932
        0x40660ea0902de00dL    # 176.4571
        0x40662946dc5d6388L    # 177.2899
        0x40662c395810624eL    # 177.382
        0x4066996e2eb1c433L    # 180.7947
        0x40669a36113404eaL    # 180.8191
        0x4066a316872b020cL    # 181.0965
        0x4067080ebedfa440L    # 184.2518
        0x4067085aee631f8aL    # 184.2611
        0x40670bbda5119ce0L    # 184.3669
        0x40677e3c9eecbfb1L    # 187.9449
        0x40677f7c1bda511aL    # 187.9839
        0x4067980346dc5d64L    # 188.7504
        0x4067f170a3d70a3dL    # 191.545
        0x4067f1db22d0e560L    # 191.558
        0x40680b65fd8adabaL    # 192.3562
        0x40687fba5e353f7dL    # 195.9915
        0x406882ed916872b0L    # 196.0915
        0x4068d65e353f7ceeL    # 198.699
        0x4068ec87fcb923a3L    # 199.3916
        0x4068f4786c22680aL    # 199.6397
        0x406966dfa43fe5c9L    # 203.2148
        0x406967374bc6a7f0L    # 203.2255
        0x40696ceb1c432ca5L    # 203.4037
        0x4069e14538ef34d7L    # 207.0397
        0x4069e29e1b089a02L    # 207.0818
        0x4069e32f1a9fbe77L    # 207.0995
        0x406a5d97f62b6ae8L    # 210.9248
        0x406a6052bd3c3611L    # 211.0101
        0x406a7e2a9930be0eL    # 211.9427
        0x406ad59f559b3d08L    # 214.6757
        0x406add119ce075f7L    # 214.9084
        0x406aefb71758e219L    # 215.4911
        0x406b587d566cf41fL    # 218.7653
        0x406b68f4f0d844d0L    # 219.2799
        0x406b70af4f0d844dL    # 219.5214
        0x406bcd04816f0069L    # 222.4068
        0x406bee6f69446738L    # 223.4511
        0x406c4da1cac08312L    # 226.426
        0x406c51aee631f8a1L    # 226.5526
        0x406c6ab439581062L    # 227.3345
        0x406cfdfd8adab9f5L    # 231.9372
        0x406d17ae147ae148L    # 232.74
        0x406d1a91d14e3bcdL    # 232.8303
        0x406d7d7c1bda511aL    # 235.9214
        0x406d9a1d7dbf4880L    # 236.8161
        0x406da3cac083126fL    # 237.1185
        0x406e18b6ae7d566dL    # 240.7723
        0x406e20a305532618L    # 241.0199
        0x406ea224dd2f1aa0L    # 245.067
        0x406f27930be0ded3L    # 249.2367
        0x406f28cf41f212d7L    # 249.2753
        0x406faf35a858793eL    # 253.4753
        0x406fb3f972474539L    # 253.6242
        0x407018793dd97f63L    # 257.5296
        0x407027d844d013a9L    # 258.4903
        0x40705eb5dcc63f14L    # 261.9194
        0x40706abc01a36e2fL    # 262.6709
        0x4070bed4fdf3b646L    # 267.927
        0x4070f59d495182aaL    # 271.3509
        0x40710377318fc505L    # 272.2166
        0x40713ccc63f14120L    # 275.7999
        0x40714a6666666666L    # 276.65
        0x407190532617c1beL    # 281.0203
        0x407191dab9f559b4L    # 281.1159
        0x4071d50be0ded289L    # 285.3154
        0x40721fc49ba5e354L    # 289.9855
        0x407220c63f141206L    # 290.0484
        0x407264c56d5cfaadL    # 294.2982
        0x4072734f765fd8aeL    # 295.2069
        0x4072ad305532617cL    # 298.8243
        0x4072f67e28240b78L    # 303.4058
        0x4073055dcc63f141L    # 304.3354
        0x40733e5532617c1cL    # 307.8958
        0x407389d35a858794L    # 312.6141
        0x4073d5a0f9096bbaL    # 317.3518
        0x4073df525460aa65L    # 317.9576
        0x40742c4f765fd8aeL    # 322.7694
        0x407479d566cf41f2L    # 327.6146
        0x4074c6f6fd21ff2eL    # 332.4353
        0x4075147e28240b78L    # 337.2808
        0x4075147e28240b78L    # 337.2808
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->getScreenCurve()V

    .line 722
    new-instance v0, Lcom/vivo/common/autobrightness/SimulateCurve;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mScreenCurveActually:[D

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mScreenCurveActually:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mScreenCurveActually:[D

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mScreenCurveActually:[D

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/autobrightness/SimulateCurve;-><init>([DDD)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mSimulateCurve:Lcom/vivo/common/autobrightness/SimulateCurve;

    .line 723
    return-void
.end method

.method private clamp(III)I
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "x"    # I

    .prologue
    .line 737
    move v0, p3

    .line 738
    .local v0, "ret":I
    if-ge p1, p2, :cond_2

    .line 739
    if-ge p3, p1, :cond_1

    .line 740
    move v0, p1

    .line 752
    :cond_0
    :goto_0
    return v0

    .line 741
    :cond_1
    if-le p3, p2, :cond_0

    .line 742
    move v0, p2

    goto :goto_0

    .line 746
    :cond_2
    if-le p3, p1, :cond_3

    .line 747
    move v0, p1

    goto :goto_0

    .line 748
    :cond_3
    if-ge p3, p2, :cond_0

    .line 749
    move v0, p2

    goto :goto_0
.end method

.method private getScreenCurve()V
    .locals 2

    .prologue
    .line 726
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->model:Ljava/lang/String;

    const-string v1, "pd1408"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mPd1408ScreenCurveActually:[D

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mScreenCurveActually:[D

    .line 735
    :goto_0
    return-void

    .line 729
    :cond_0
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->model:Ljava/lang/String;

    const-string v1, "pd1420f_ex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mPD1420F_EXScrennCurveActually:[D

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mScreenCurveActually:[D

    goto :goto_0

    .line 733
    :cond_1
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mDefaultScreenCurveActually:[D

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mScreenCurveActually:[D

    goto :goto_0
.end method


# virtual methods
.method public getNextX(IIII)I
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "current"    # I
    .param p4, "step"    # I

    .prologue
    .line 756
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->getNextX(IIIIZ)I

    move-result v0

    return v0
.end method

.method public getNextX(IIIIZ)I
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "current"    # I
    .param p4, "step"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v0, 0x1

    .line 770
    if-ge p1, p2, :cond_2

    move v2, v0

    .line 771
    .local v2, "up":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 773
    .local v0, "flag":I
    :goto_1
    if-eq p3, p2, :cond_0

    if-ne p1, p2, :cond_4

    :cond_0
    move v1, p2

    .line 802
    :cond_1
    :goto_2
    return v1

    .line 770
    .end local v0    # "flag":I
    .end local v2    # "up":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 771
    .restart local v2    # "up":Z
    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    .line 777
    .restart local v0    # "flag":I
    :cond_4
    if-eqz v2, :cond_7

    if-lt p3, p1, :cond_5

    if-le p3, p2, :cond_7

    .line 778
    :cond_5
    if-eqz p5, :cond_6

    .line 779
    mul-int v3, v0, p4

    add-int/2addr v3, p1

    invoke-direct {p0, p1, p2, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->clamp(III)I

    move-result v1

    goto :goto_2

    .line 781
    :cond_6
    add-int v1, p1, v0

    goto :goto_2

    .line 783
    :cond_7
    if-nez v2, :cond_a

    if-lt p3, p2, :cond_8

    if-le p3, p1, :cond_a

    .line 785
    :cond_8
    if-eqz p5, :cond_9

    .line 786
    mul-int v3, v0, p4

    add-int/2addr v3, p1

    invoke-direct {p0, p1, p2, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->clamp(III)I

    move-result v1

    goto :goto_2

    .line 788
    :cond_9
    add-int v1, p1, v0

    goto :goto_2

    .line 793
    :cond_a
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->mSimulateCurve:Lcom/vivo/common/autobrightness/SimulateCurve;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/vivo/common/autobrightness/SimulateCurve;->getNextX(IIII)I

    move-result v1

    .line 795
    .local v1, "next":I
    if-ne v1, p3, :cond_1

    .line 796
    if-eqz p5, :cond_b

    .line 797
    mul-int v3, v0, p4

    add-int/2addr v3, p3

    invoke-direct {p0, p1, p2, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessAnimator;->clamp(III)I

    move-result v1

    goto :goto_2

    .line 799
    :cond_b
    add-int v1, p3, v0

    goto :goto_2
.end method
