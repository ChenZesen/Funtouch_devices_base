.class public Lcom/android/server/wifi/VivoWifiRssiMap;
.super Ljava/lang/Object;
.source "VivoWifiRssiMap.java"


# static fields
.field private static DBG:Z = false

.field private static final RSSI_COUNT:I = 0x2

.field private static final RSSI_SWITCH_THRESHOLD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VivoWifiRssiMap"

.field private static mFirstFetchRssi:I

.field private static mRssiMap:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiRssiMap;->DBG:Z

    .line 11
    const/16 v0, -0x7f

    sput v0, Lcom/android/server/wifi/VivoWifiRssiMap;->mFirstFetchRssi:I

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/wifi/VivoWifiRssiMap;->mRssiMap:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiRssiMap;->mContext:Landroid/content/Context;

    .line 19
    const/16 v0, -0x7f

    sput v0, Lcom/android/server/wifi/VivoWifiRssiMap;->mFirstFetchRssi:I

    .line 20
    return-void
.end method

.method public static clear()V
    .locals 4

    .prologue
    const/16 v3, -0x7f

    .line 23
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiRssiMap;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoWifiRssiMap"

    const-string v2, "clear()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 25
    sget-object v1, Lcom/android/server/wifi/VivoWifiRssiMap;->mRssiMap:[I

    aput v3, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_1
    sput v3, Lcom/android/server/wifi/VivoWifiRssiMap;->mFirstFetchRssi:I

    .line 28
    return-void
.end method

.method public static enableVerboseLogging(I)V
    .locals 1
    .param p0, "verbose"    # I

    .prologue
    .line 88
    if-lez p0, :cond_0

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiRssiMap;->DBG:Z

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiRssiMap;->DBG:Z

    goto :goto_0
.end method

.method public static getWifiAverRssi()I
    .locals 7

    .prologue
    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, "sum":I
    const/4 v0, 0x0

    .line 54
    .local v0, "avreage":I
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 55
    :try_start_0
    sget-object v4, Lcom/android/server/wifi/VivoWifiRssiMap;->mRssiMap:[I

    aget v4, v4, v2

    const/16 v5, -0x7f

    if-ne v4, v5, :cond_0

    .line 56
    const/16 v4, 0x64

    .line 65
    :goto_1
    return v4

    .line 58
    :cond_0
    sget-object v4, Lcom/android/server/wifi/VivoWifiRssiMap;->mRssiMap:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    div-int/lit8 v0, v3, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_2
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiRssiMap;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "VivoWifiRssiMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWifiAverRssi(), avreage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v0

    .line 65
    goto :goto_1

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static needSwitch()Z
    .locals 6

    .prologue
    const/4 v4, 0x4

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "averageRssi":I
    const/4 v1, 0x0

    .line 71
    .local v1, "need":Z
    const/4 v2, 0x4

    .line 73
    .local v2, "rssiLevel":I
    invoke-static {}, Lcom/android/server/wifi/VivoWifiRssiMap;->getWifiAverRssi()I

    move-result v0

    .line 74
    invoke-static {v0, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 76
    sget-boolean v3, Lcom/android/server/wifi/VivoWifiRssiMap;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "VivoWifiRssiMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needSwitch(), rssiLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    const/4 v3, 0x1

    .line 84
    :goto_0
    return v3

    .line 79
    :cond_1
    sget v3, Lcom/android/server/wifi/VivoWifiRssiMap;->mFirstFetchRssi:I

    sub-int/2addr v3, v0

    if-lt v3, v4, :cond_2

    .line 80
    const/4 v1, 0x1

    .line 83
    :cond_2
    sget-boolean v3, Lcom/android/server/wifi/VivoWifiRssiMap;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "VivoWifiRssiMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needSwitch(), need: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v1

    .line 84
    goto :goto_0
.end method

.method public static setFirstFetchRssi(I)V
    .locals 4
    .param p0, "rssi"    # I

    .prologue
    const/16 v3, -0x7f

    .line 31
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiRssiMap;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoWifiRssiMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFirstFetchRssi() , mFirstFetchRssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/wifi/VivoWifiRssiMap;->mFirstFetchRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    sget v0, Lcom/android/server/wifi/VivoWifiRssiMap;->mFirstFetchRssi:I

    if-ne v0, v3, :cond_1

    if-le p0, v3, :cond_1

    .line 33
    sput p0, Lcom/android/server/wifi/VivoWifiRssiMap;->mFirstFetchRssi:I

    .line 35
    :cond_1
    return-void
.end method

.method public static setWifiRssi(I)V
    .locals 6
    .param p0, "rssi"    # I

    .prologue
    const/4 v5, 0x1

    .line 38
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiRssiMap;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "VivoWifiRssiMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiRssi() , rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 41
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/VivoWifiRssiMap;->mRssiMap:[I

    sget-object v3, Lcom/android/server/wifi/VivoWifiRssiMap;->mRssiMap:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    aput v3, v2, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_1
    sget-object v2, Lcom/android/server/wifi/VivoWifiRssiMap;->mRssiMap:[I

    const/4 v3, 0x1

    aput p0, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_1
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
