.class public Lcom/android/server/wifi/VivoSmartWifiConstants;
.super Ljava/lang/Object;
.source "VivoSmartWifiConstants.java"


# static fields
.field public static final AUTO_DISABLE_TIME:J = 0x5b8d80L

.field public static final AUTO_ENABLE:Z = false

.field public static final AUTO_JOIN_SCAN_BECAUSE_LOCATION:I = 0x2

.field public static final AUTO_JOIN_SCAN_BECAUSE_SCANREULTS:I = 0x1

.field public static final AUTO_JOIN_SCAN_DISTANCE:I = 0xc8

.field public static final BAIDU_DNS_PROPERTY:Ljava/lang/String; = "net.baidu.dns"

.field public static final CHECK_SPEED_RSSI_STEP:I = 0x5

.field private static DBG:Z = false

.field public static final DEFAULT_PKT_COUNT:I = -0x1

.field public static final DNS_SAMPLING_INTERVAL_MS:J = 0x2328L

.field private static final EARTH_RADIUS:D = 6378137.0

.field public static final HomeNet24G:Ljava/lang/String; = "HomeNet24G"

.field public static final HomeNet5G:Ljava/lang/String; = "HomeNet5G"

.field public static INTERNET_ACCESS_INTERVAL_MS:J = 0x0L

.field public static final INTERNET_ACCESS_MAX_INTERVAL:J = 0x7530L

.field public static final INTERNET_ACCESS_MIN_INTERVAL:J = 0xfa0L

.field public static final INVALID_RSSI:I = -0x7f

.field public static final INVALID_SPEED:I = -0x1

.field public static final LOCATION_UPDATE_INTEVAL:J = 0xea60L

.field public static final MAX_NETWORK_SPEED_COUNT:J = 0xaL

.field public static final MAX_STEP_CHANGED_COUNT:J = 0xaL

.field public static final MIN_AUTO_ENABLE_COUNT:I = 0x7

.field public static final MIN_AUTO_ENABLE_FREQ:D = 0.6

.field public static final MIN_AUTO_JOIN_STEP:I = 0x8

.field public static final MIN_CHECK_SPEED_PKT_COUNT:I = 0xa

.field public static final MIN_CHECK_SPEED_RSSI_COUNT:I = 0x3

.field public static final MIN_CHECK_SPEED_RSSI_THRESHOLD:I = -0x4b

.field public static final MIN_CONNECTED_INC_TIME:J = 0x5265c00L

.field public static final MIN_NETWORK_SPEED:J = 0x4L

.field public static final MIN_REENABLE_DISTANCE:D = 200.0

.field public static final MIN_STEP_SCAN_COUNT:I = 0x5

.field public static final MIN_STEP_SCAN_INTERVAL:I = 0x1770

.field public static final MIN_SWITCH_MOBILE_NETWORK_SPEED:I = 0xf

.field public static final MONITOR_NETWORK_SPEED_PEROID:J = 0x1388L

.field public static final MONITOR_SPEED_TIME:J = 0x1f40L

.field public static final MONITOR_STEP_CHANGED_PEROID:J = 0x3e8L

.field public static final MinPublicNetNum:I = 0x4

.field public static final NO_INTERNET_STATE_NONE:I = 0x0

.field public static final NO_INTERNET_STATE_POOR_RSSI:I = 0x1

.field public static final NO_INTERNET_STATE_STRONG_RSSI:I = 0x2

.field public static final POLL_RSSI_ADJUST_THRESHOLD:I = -0x49

.field public static POLL_RSSI_INTERVAL_MSECS:I = 0x0

.field public static final POOR_LINK_SPEED_SAMPLE_COUNT:D = 2.0

.field public static final POOR_LINK_STATE_24G:I = 0x1

.field public static final POOR_LINK_STATE_5G:I = 0x2

.field public static final POOR_LINK_STATE_NONE:I = 0x0

.field public static final POOR_RSSI_DETECT_ENABLED:Z = true

.field public static final PublicNet24G:Ljava/lang/String; = "PublicNet24G"

.field public static final PublicNet5G:Ljava/lang/String; = "PublicNet5G"

.field public static final RSSI_FETCH_PERIOD:J = 0x3e8L

.field public static final SPEED_INFO_COUNT:I = 0x7

.field public static final SPEED_MONITOR_PEROID:I = 0x2

.field public static final SPEED_RSSI_STEP_MAP:[[I

.field public static final SPEED_RSSI_STEP_MAP_STRING:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "VivoSmartWifiConstants"

.field public static final TEST_URL:Ljava/lang/String; = "http://apk.wsdl.vivo.com.cn/appstore/upload/123.apk"

.field public static final TX_CHECK_THRESHOLD:I = 0x5

.field public static final TX_RX_COUNT:I = 0x9

.field public static final TYPE_INVALID:I = -0x1

.field public static final TYPE_SWITCH_MOBILE:I = 0x1

.field public static final TYPE_SWITCH_WIFI:I = 0x2

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final VIVO_DNS_PROPERTY:Ljava/lang/String; = "net.vivofw.dns"

.field public static final VIVO_PKT_FETCH_INTERVAL_MS:J = 0x3e8L

.field public static final VIVO_SERVER_URL:Ljava/lang/String; = "wf.vivo.com.cn"

.field public static final WIFI_INVALID_SCORE:I = 0x0

.field public static final WIFI_VALID_SCORE:I = 0x50

.field public static dnsOptimize:Z

.field public static tempDisableSmartWifi:Z

.field public static vivoForegroundDetectedEnabled:Z

.field public static vivoNoInternetDetectEnabled:Z

.field public static vivoPoorLinkDetectEnabled:Z

.field public static vivoSwitch4GEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    sput-boolean v4, Lcom/android/server/wifi/VivoSmartWifiConstants;->DBG:Z

    .line 71
    sput-boolean v4, Lcom/android/server/wifi/VivoSmartWifiConstants;->dnsOptimize:Z

    .line 72
    sput-boolean v3, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoPoorLinkDetectEnabled:Z

    .line 73
    sput-boolean v4, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoNoInternetDetectEnabled:Z

    .line 74
    sput-boolean v3, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoForegroundDetectedEnabled:Z

    .line 76
    sput-boolean v3, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoSwitch4GEnabled:Z

    .line 80
    sput-boolean v3, Lcom/android/server/wifi/VivoSmartWifiConstants;->tempDisableSmartWifi:Z

    .line 116
    const/16 v0, 0xbb8

    sput v0, Lcom/android/server/wifi/VivoSmartWifiConstants;->POLL_RSSI_INTERVAL_MSECS:I

    .line 128
    const-wide/16 v0, 0xfa0

    sput-wide v0, Lcom/android/server/wifi/VivoSmartWifiConstants;->INTERNET_ACCESS_INTERVAL_MS:J

    .line 166
    new-array v0, v7, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/wifi/VivoSmartWifiConstants;->SPEED_RSSI_STEP_MAP:[[I

    .line 170
    new-array v0, v7, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "gD >3.5M"

    aput-object v2, v1, v3

    const-string v2, "gD <3.5M"

    aput-object v2, v1, v4

    const-string v2, "gD <2M"

    aput-object v2, v1, v6

    const-string v2, "gD <1M"

    aput-object v2, v1, v7

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "N >3.5M"

    aput-object v2, v1, v3

    const-string v2, "N <3.5M"

    aput-object v2, v1, v4

    const-string v2, "N <2M"

    aput-object v2, v1, v6

    const-string v2, "N <1M"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "gR >3.5M"

    aput-object v2, v1, v3

    const-string v2, "gR <3.5M"

    aput-object v2, v1, v4

    const-string v2, "gR <2M"

    aput-object v2, v1, v6

    const-string v2, "gR <1M"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/wifi/VivoSmartWifiConstants;->SPEED_RSSI_STEP_MAP_STRING:[[Ljava/lang/String;

    return-void

    .line 166
    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChoiceFromOrder(I)I
    .locals 4
    .param p0, "order"    # I

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "choice":I
    const/16 v1, 0xa

    if-gt p0, v1, :cond_0

    .line 246
    rsub-int/lit8 v0, p0, 0xa

    .line 269
    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/VivoSmartWifiConstants;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "VivoSmartWifiConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChoiceFromOrder choice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    return v0
.end method

.method public static getDate()I
    .locals 9

    .prologue
    .line 203
    const-wide/16 v2, 0x0

    .line 205
    .local v2, "now":J
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 206
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 207
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, "time":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 209
    sget-boolean v6, Lcom/android/server/wifi/VivoSmartWifiConstants;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "VivoSmartWifiConstants"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDate, now:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v0    # "curDate":Ljava/util/Date;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "time":Ljava/lang/String;
    :cond_0
    :goto_0
    long-to-int v6, v2

    return v6

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDistance(DDDD)D
    .locals 20
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D

    .prologue
    .line 221
    invoke-static/range {p0 .. p1}, Lcom/android/server/wifi/VivoSmartWifiConstants;->rad(D)D

    move-result-wide v4

    .line 222
    .local v4, "radLat1":D
    invoke-static/range {p4 .. p5}, Lcom/android/server/wifi/VivoSmartWifiConstants;->rad(D)D

    move-result-wide v6

    .line 223
    .local v6, "radLat2":D
    sub-double v0, v4, v6

    .line 224
    .local v0, "a":D
    invoke-static/range {p2 .. p3}, Lcom/android/server/wifi/VivoSmartWifiConstants;->rad(D)D

    move-result-wide v10

    invoke-static/range {p6 .. p7}, Lcom/android/server/wifi/VivoSmartWifiConstants;->rad(D)D

    move-result-wide v12

    sub-double v2, v10, v12

    .line 225
    .local v2, "b":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v0, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v2, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    mul-double v8, v10, v12

    .line 227
    .local v8, "s":D
    const-wide v10, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v8, v10

    .line 228
    const-wide v10, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    div-long/2addr v10, v12

    long-to-double v8, v10

    .line 229
    sget-boolean v10, Lcom/android/server/wifi/VivoSmartWifiConstants;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "VivoSmartWifiConstants"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDistance(), s:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    return-wide v8
.end method

.method public static isTempDisableSmartWifi()Z
    .locals 3

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/server/wifi/VivoSmartWifiConstants;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoSmartWifiConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTempDisableSmartWifi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/wifi/VivoSmartWifiConstants;->tempDisableSmartWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/VivoSmartWifiConstants;->tempDisableSmartWifi:Z

    return v0
.end method

.method public static isVivoSmartWiFiEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    if-nez p0, :cond_0

    .line 279
    :goto_0
    return v2

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vivo_smart_wifi_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 278
    .local v0, "enabled":I
    sget-boolean v3, Lcom/android/server/wifi/VivoSmartWifiConstants;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "VivoSmartWifiConstants"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVivoSmartWiFiEnabled() enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1
    if-ne v0, v1, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private static rad(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 218
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static tempDisableSmartWifi(Z)V
    .locals 3
    .param p0, "disable"    # Z

    .prologue
    .line 82
    sput-boolean p0, Lcom/android/server/wifi/VivoSmartWifiConstants;->tempDisableSmartWifi:Z

    .line 83
    sget-boolean v0, Lcom/android/server/wifi/VivoSmartWifiConstants;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoSmartWifiConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set tempDisableSmartWifi to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/wifi/VivoSmartWifiConstants;->tempDisableSmartWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method

.method public static vivoScoreRssi(I)I
    .locals 10
    .param p0, "rssi"    # I

    .prologue
    .line 235
    const-wide v4, -0x403b851eb851eb85L    # -0.16

    add-int/lit8 v6, p0, 0x46

    int-to-double v6, v6

    mul-double v0, v4, v6

    .line 236
    .local v0, "n":D
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    div-double v2, v4, v6

    .line 237
    .local v2, "score":D
    sget-boolean v4, Lcom/android/server/wifi/VivoSmartWifiConstants;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "VivoSmartWifiConstants"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vivo-rssi is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Current score is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    double-to-int v4, v2

    return v4
.end method
