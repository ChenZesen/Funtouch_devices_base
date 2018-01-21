.class public Lcom/android/server/wifi/VivoWifiPacketFilterHelper;
.super Ljava/lang/Object;
.source "VivoWifiPacketFilterHelper.java"


# static fields
.field private static DBG:Z = false

.field private static final DOWNLOAD_URL:Ljava/lang/String;

.field private static final MTK_PLATFORM:Ljava/lang/String; = "MTK"

.field private static final MTK_PLATFORM_CODE:Ljava/lang/String; = "00"

.field private static final QCOM_PLATFORM:Ljava/lang/String; = "QCOM"

.field private static final QCOM_PLATFORM_CODE:Ljava/lang/String; = "01"

.field private static final TAG:Ljava/lang/String; = "VivoWifiPacketFilterHelper"

.field private static final VIVO_PKT_FILTER_PATH:Ljava/lang/String; = "/data/misc/wifi/vivoWifiPacketFilter.txt"

.field private static bufRead:Ljava/io/BufferedReader;

.field private static isUsing:Z

.field private static mIsFilterUpdated:Z

.field private static mLastSSid:Ljava/lang/String;

.field private static mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private static packetFilter:Ljava/lang/String;

.field private static updateTime:I

.field private static final vivoPacketFilterFile:Ljava/io/File;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    .line 45
    sput-boolean v2, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isUsing:Z

    .line 46
    sput v2, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->updateTime:I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://download0.vivo.com.cn/pro/wifi/vivoWifiPacketFilter_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MTK"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DOWNLOAD_URL:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/vivoWifiPacketFilter.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->vivoPacketFilterFile:Ljava/io/File;

    .line 59
    sput-object v3, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mLastSSid:Ljava/lang/String;

    .line 61
    sput-object v3, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->packetFilter:Ljava/lang/String;

    .line 62
    sput-boolean v2, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mIsFilterUpdated:Z

    return-void

    .line 54
    :cond_0
    const-string v0, "QCOM"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mWM"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mContext:Landroid/content/Context;

    .line 66
    sput-object p2, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 67
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;-><init>(Lcom/android/server/wifi/VivoWifiPacketFilterHelper;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    :cond_0
    return-void
.end method

.method private DownloadFile(Ljava/lang/String;)V
    .locals 19
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 330
    sget-boolean v16, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v16, :cond_0

    const-string v16, "VivoWifiPacketFilterHelper"

    const-string v17, "DownloadFile start download file."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    const/4 v3, 0x0

    .line 333
    .local v3, "count":I
    const/4 v7, 0x0

    .line 334
    .local v7, "date":I
    const-string v5, ""

    .line 335
    .local v5, "dataString":Ljava/lang/String;
    const/4 v10, 0x1

    .line 337
    .local v10, "isUpdated":Z
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 338
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 339
    .local v2, "conection":Ljava/net/URLConnection;
    const/16 v16, 0x2710

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 340
    const/16 v16, 0x2710

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 341
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 342
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 344
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v11

    .line 347
    .local v11, "lenghtOfFile":I
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v16

    const/16 v17, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 350
    .local v9, "input":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 352
    .local v12, "output":Ljava/io/OutputStream;
    const/16 v16, 0x400

    move/from16 v0, v16

    new-array v4, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .local v4, "data":[B
    const-wide/16 v14, 0x0

    .local v14, "total":J
    move-object v6, v5

    .line 356
    .end local v5    # "dataString":Ljava/lang/String;
    .local v6, "dataString":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v3, v0, :cond_9

    .line 357
    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 358
    new-instance v5, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v5, v4, v0, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 359
    .end local v6    # "dataString":Ljava/lang/String;
    .restart local v5    # "dataString":Ljava/lang/String;
    const-wide/16 v16, 0x200

    cmp-long v16, v14, v16

    if-gtz v16, :cond_1

    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isDataValid(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 360
    :cond_1
    const-string v16, "VivoWifiPacketFilterHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "count:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", dataString:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v10, 0x0

    .line 372
    :goto_1
    if-eqz v12, :cond_2

    .line 374
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 377
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 379
    :cond_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 381
    if-eqz v10, :cond_3

    .line 382
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->getDate()I

    move-result v7

    .line 384
    sput v7, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->updateTime:I

    .line 386
    :cond_3
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mIsFilterUpdated:Z

    .line 387
    sget-boolean v16, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v16, :cond_4

    const-string v16, "VivoWifiPacketFilterHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "total:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", isUpdated:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", set date:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", isFilterUpdated: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v18, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mIsFilterUpdated:Z

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_4
    sget-object v16, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v16, :cond_5

    .line 389
    sget-object v16, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->handleSuspendOptimization(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 396
    .end local v2    # "conection":Ljava/net/URLConnection;
    .end local v4    # "data":[B
    .end local v9    # "input":Ljava/io/InputStream;
    .end local v11    # "lenghtOfFile":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v13    # "url":Ljava/net/URL;
    .end local v14    # "total":J
    :cond_5
    :goto_2
    sget-boolean v16, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v16, :cond_6

    const-string v16, "VivoWifiPacketFilterHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DownloadFile download completed. date:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_6
    return-void

    .line 364
    .restart local v2    # "conection":Ljava/net/URLConnection;
    .restart local v4    # "data":[B
    .restart local v9    # "input":Ljava/io/InputStream;
    .restart local v11    # "lenghtOfFile":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v13    # "url":Ljava/net/URL;
    .restart local v14    # "total":J
    :cond_7
    if-nez v12, :cond_8

    .line 365
    :try_start_3
    const-string v16, "VivoWifiPacketFilterHelper"

    const-string v17, "output == null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v12, Ljava/io/FileOutputStream;

    .end local v12    # "output":Ljava/io/OutputStream;
    const-string v16, "/data/misc/wifi/vivoWifiPacketFilter.txt"

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v12    # "output":Ljava/io/OutputStream;
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v4, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v5

    .end local v5    # "dataString":Ljava/lang/String;
    .restart local v6    # "dataString":Ljava/lang/String;
    goto/16 :goto_0

    .line 391
    .end local v2    # "conection":Ljava/net/URLConnection;
    .end local v4    # "data":[B
    .end local v6    # "dataString":Ljava/lang/String;
    .end local v9    # "input":Ljava/io/InputStream;
    .end local v11    # "lenghtOfFile":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v13    # "url":Ljava/net/URL;
    .end local v14    # "total":J
    .restart local v5    # "dataString":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 392
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    const-string v16, "Error: "

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-boolean v16, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v16, :cond_5

    const-string v16, "VivoWifiPacketFilterHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DownloadFile download exception:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 391
    .end local v5    # "dataString":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "conection":Ljava/net/URLConnection;
    .restart local v4    # "data":[B
    .restart local v6    # "dataString":Ljava/lang/String;
    .restart local v9    # "input":Ljava/io/InputStream;
    .restart local v11    # "lenghtOfFile":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v13    # "url":Ljava/net/URL;
    .restart local v14    # "total":J
    :catch_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "dataString":Ljava/lang/String;
    .restart local v5    # "dataString":Ljava/lang/String;
    goto :goto_3

    .end local v5    # "dataString":Ljava/lang/String;
    .restart local v6    # "dataString":Ljava/lang/String;
    :cond_9
    move-object v5, v6

    .end local v6    # "dataString":Ljava/lang/String;
    .restart local v5    # "dataString":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Lcom/android/server/wifi/WifiStateMachine;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mLastSSid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    sput-object p0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mLastSSid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/VivoWifiPacketFilterHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiPacketFilterHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isTimeMatch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isUsing:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isUsing:Z

    return p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DOWNLOAD_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/VivoWifiPacketFilterHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiPacketFilterHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DownloadFile(Ljava/lang/String;)V

    return-void
.end method

.method private static getDate()I
    .locals 9

    .prologue
    .line 402
    const-wide/16 v2, 0x0

    .line 404
    .local v2, "now":J
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 405
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 406
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "time":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 408
    sget-boolean v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "VivoWifiPacketFilterHelper"

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

    .line 412
    .end local v0    # "curDate":Ljava/util/Date;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "time":Ljava/lang/String;
    :cond_0
    :goto_0
    long-to-int v6, v2

    return v6

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPacketFilteCRCData()Ljava/lang/String;
    .locals 9

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 135
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    sget-object v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->vivoPacketFilterFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 136
    .local v5, "fileread":Ljava/io/FileReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->bufRead:Ljava/io/BufferedReader;

    .line 137
    const-string v2, ""

    .line 138
    .local v2, "data1":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->bufRead:Ljava/io/BufferedReader;

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "begin":I
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 141
    .local v4, "end":I
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 142
    sget-boolean v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "VivoWifiPacketFilterHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPacketFilteCRCData data1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", begin:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "begin":I
    .end local v2    # "data1":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v5    # "fileread":Ljava/io/FileReader;
    :cond_0
    :goto_0
    sget-boolean v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "VivoWifiPacketFilterHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPacketFilteCRCData data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    return-object v1

    .line 143
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPacketFilter()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 283
    sget-object v4, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->packetFilter:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mIsFilterUpdated:Z

    if-nez v4, :cond_1

    .line 284
    sget-object v3, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->packetFilter:Ljava/lang/String;

    .line 324
    .local v3, "match":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 286
    .end local v3    # "match":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 288
    .restart local v3    # "match":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isUsing:Z

    if-eqz v4, :cond_2

    .line 289
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "VivoWifiPacketFilterHelper"

    const-string v5, "getPacketFilter file is using!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_2
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isUsing:Z

    .line 294
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isPlatformMatch()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->getPacketFilterCRCCode()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "crc":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->getPacketFilteCRCData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiCRC16Modbus;->getCrc16String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "calcuCrc":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 303
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 306
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->getPacketFilterData()Ljava/lang/String;

    move-result-object v3

    .line 310
    :cond_3
    if-eqz v3, :cond_5

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_5

    .line 311
    :cond_4
    const/4 v3, 0x0

    .line 318
    :cond_5
    :goto_1
    sput-boolean v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isUsing:Z

    .line 319
    sput-boolean v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mIsFilterUpdated:Z

    .line 321
    sput-object v3, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->packetFilter:Ljava/lang/String;

    .line 323
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "VivoWifiPacketFilterHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPacketFilter match:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", calcuCrc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", crc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", packetFilter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->packetFilter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 313
    :catch_0
    move-exception v2

    .line 315
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getPacketFilterCRCCode()Ljava/lang/String;
    .locals 8

    .prologue
    .line 183
    const-string v0, ""

    .line 187
    .local v0, "code":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    sget-object v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->vivoPacketFilterFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 188
    .local v3, "fileread":Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->bufRead:Ljava/io/BufferedReader;

    .line 189
    const-string v1, ""

    .line 190
    .local v1, "data1":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->bufRead:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 193
    .local v4, "index":I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    sget-boolean v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "VivoWifiPacketFilterHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPacketFilterCRCCode data1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v1    # "data1":Ljava/lang/String;
    .end local v3    # "fileread":Ljava/io/FileReader;
    .end local v4    # "index":I
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "VivoWifiPacketFilterHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPacketFilterCRCCode code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    return-object v0

    .line 195
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPacketFilterData()Ljava/lang/String;
    .locals 9

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 161
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    sget-object v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->vivoPacketFilterFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 162
    .local v5, "fileread":Ljava/io/FileReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->bufRead:Ljava/io/BufferedReader;

    .line 163
    const-string v2, ""

    .line 164
    .local v2, "data1":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->bufRead:Ljava/io/BufferedReader;

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 165
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, "begin":I
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 167
    .local v4, "end":I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 168
    sget-boolean v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "VivoWifiPacketFilterHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPacketFilterData data1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", begin:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "begin":I
    .end local v2    # "data1":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v5    # "fileread":Ljava/io/FileReader;
    :cond_0
    :goto_0
    sget-boolean v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "VivoWifiPacketFilterHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPacketFilterData data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    return-object v1

    .line 169
    :catch_0
    move-exception v3

    .line 171
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPacketFilterPlatform()Ljava/lang/String;
    .locals 8

    .prologue
    .line 209
    const-string v4, ""

    .line 213
    .local v4, "platform":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    sget-object v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->vivoPacketFilterFile:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 214
    .local v2, "fileread":Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->bufRead:Ljava/io/BufferedReader;

    .line 215
    const-string v0, ""

    .line 216
    .local v0, "data1":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->bufRead:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 219
    .local v3, "index":I
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 220
    sget-boolean v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "VivoWifiPacketFilterHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPacketFilterPlatform data1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0    # "data1":Ljava/lang/String;
    .end local v2    # "fileread":Ljava/io/FileReader;
    .end local v3    # "index":I
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "VivoWifiPacketFilterHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPacketFilterPlatform platform:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    return-object v4

    .line 221
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isDataValid(Ljava/lang/String;)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "valid":Z
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "str":Ljava/lang/String;
    const-string v3, "[A-Fa-f0-9]*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 443
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 445
    sget-boolean v3, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "VivoWifiPacketFilterHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataValid valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    return v2
.end method

.method public static isMTKPlatform()Z
    .locals 6

    .prologue
    .line 260
    const-string v3, "ro.vivo.product.solution"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "platform":Ljava/lang/String;
    const/4 v1, 0x0

    .line 264
    .local v1, "match":Z
    :try_start_0
    const-string v3, "MTK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    const/4 v1, 0x1

    .line 272
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "VivoWifiPacketFilterHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMTKPlatform match:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", platform:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    return v1

    .line 267
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPlatformMatch()Z
    .locals 7

    .prologue
    .line 235
    const-string v4, "ro.vivo.product.solution"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "platform":Ljava/lang/String;
    const/4 v2, 0x0

    .line 237
    .local v2, "match":Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->getPacketFilterPlatform()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "calcuPlatform":Ljava/lang/String;
    :try_start_0
    const-string v4, "QCOM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    const/4 v2, 0x1

    .line 243
    :cond_0
    const-string v4, "MTK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    const/4 v2, 0x1

    .line 251
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "VivoWifiPacketFilterHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPlatformMatch match:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", calcuPlatform:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", platform:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 246
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isTimeMatch()Z
    .locals 8

    .prologue
    .line 416
    const/4 v4, 0x0

    .line 417
    .local v4, "match":Z
    const/4 v0, 0x0

    .line 419
    .local v0, "currentDate":I
    const/4 v3, 0x0

    .line 420
    .local v3, "lastDate":I
    const/4 v1, 0x0

    .line 423
    .local v1, "diff":I
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->getDate()I

    move-result v0

    .line 425
    sget v3, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->updateTime:I

    .line 426
    sub-int v5, v0, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    const/4 v5, 0x1

    if-lt v1, v5, :cond_0

    .line 428
    const/4 v4, 0x1

    .line 434
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "VivoWifiPacketFilterHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTimeMatch match:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentDate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lastDate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    return v4

    .line 430
    :catch_0
    move-exception v2

    .line 431
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
