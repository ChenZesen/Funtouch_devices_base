.class public Lcom/android/server/wifi/VivoWifiBlockScanResults;
.super Ljava/lang/Object;
.source "VivoWifiBlockScanResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VivoWifiBlockScanResults"

.field public static final VIVO_FAST_FIRST_SCAN_SOURCE:I = -0x64

.field public static final VIVO_FAST_SECOND_SCAN_SOURCE:I = -0x65

.field private static currentFastScanPackageName:Ljava/lang/String; = null

.field public static mBlockScanReslutsAppMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context; = null

.field private static mScanResultsUpdateTimeStamp:J = 0x0L

.field public static final vivoWifiBlockScanResults:Z = true

.field public static final vivoWifiBlockScanResultsEnabled:Z


# instance fields
.field isUpdating:Z

.field private mLastFastScanTimeStamp:J

.field private mLastScreenOnTimeStamp:J

.field private mScreenOn:Z

.field private mScreenOnTimeStamp:J

.field private mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mVivoIntentFilter:Landroid/content/IntentFilter;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field overseas:Ljava/lang/String;

.field private final vivoWifiBlockScanResultsUpdateAction:Ljava/lang/String;

.field private final vivoWifiBlockScanResultsUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    .line 46
    const-string v0, "ro.vivo.product.overseas"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->vivoWifiBlockScanResultsEnabled:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mBlockScanReslutsAppMap:Ljava/util/HashMap;

    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScanResultsUpdateTimeStamp:J

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->currentFastScanPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "dbg"    # Z

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "content://com.vivo.daemonservice.unifiedconfigprovider/configs"

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->vivoWifiBlockScanResultsUri:Ljava/lang/String;

    .line 52
    const-string v0, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_VivoWifiBlockScanResults"

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->vivoWifiBlockScanResultsUpdateAction:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->isUpdating:Z

    .line 61
    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mLastScreenOnTimeStamp:J

    .line 62
    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScreenOnTimeStamp:J

    .line 63
    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mLastFastScanTimeStamp:J

    .line 64
    iput-boolean v1, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScreenOn:Z

    .line 65
    const-string v0, "ro.vivo.product.overseas"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->overseas:Ljava/lang/String;

    .line 68
    sput-object p1, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 70
    sput-boolean p3, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->setupVivoReceiver()V

    .line 72
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/VivoWifiBlockScanResults;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiBlockScanResults;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->readXml()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/VivoWifiBlockScanResults;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiBlockScanResults;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->dumpState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/VivoWifiBlockScanResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiBlockScanResults;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dumpState()V
    .locals 6

    .prologue
    .line 228
    :try_start_0
    const-string v4, "VivoWifiBlockScanResults"

    const-string v5, "-------------------------dumpState begin-------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;>;"
    sget-object v4, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mBlockScanReslutsAppMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;

    invoke-virtual {v4}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->dumpSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;>;"
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 233
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;>;"
    :cond_0
    :try_start_1
    const-string v4, "VivoWifiBlockScanResults"

    const-string v5, "-------------------------dumpState end---------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static enableVerboseLogging(I)V
    .locals 1
    .param p0, "verbose"    # I

    .prologue
    .line 241
    if-lez p0, :cond_0

    .line 242
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    goto :goto_0
.end method

.method private getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "identifier"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v1, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v1, 0x1

    aput-object p3, v4, v1

    const/4 v1, 0x2

    aput-object p4, v4, v1

    const/4 v1, 0x3

    aput-object p5, v4, v1

    .line 115
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 118
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 119
    if-eqz v7, :cond_3

    .line 120
    const-string v8, ""

    .local v8, "fileId":Ljava/lang/String;
    const-string v12, ""

    .local v12, "tartgetIdentifier":Ljava/lang/String;
    const-string v9, ""

    .line 121
    .local v9, "fileVersion":Ljava/lang/String;
    const/4 v10, 0x0

    .line 122
    .local v10, "filecontent":[B
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 125
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    const-string v1, "id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 127
    const-string v1, "identifier"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 128
    const-string v1, "fileversion"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 129
    const-string v1, "filecontent"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 130
    new-instance v6, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v6, v10, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 131
    .local v6, "applists":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoWifiBlockScanResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig VivoWifiBlockScanResults.xml:\n  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 133
    .local v11, "reader":Ljava/io/StringReader;
    invoke-direct {p0, v11}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->updateVivoWifiBlockScanResults(Ljava/io/StringReader;)V

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    .end local v6    # "applists":Ljava/lang/String;
    .end local v8    # "fileId":Ljava/lang/String;
    .end local v9    # "fileVersion":Ljava/lang/String;
    .end local v10    # "filecontent":[B
    .end local v11    # "reader":Ljava/io/StringReader;
    .end local v12    # "tartgetIdentifier":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 145
    if-eqz v7, :cond_1

    .line 146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_1
    :goto_1
    return-void

    .line 137
    .restart local v8    # "fileId":Ljava/lang/String;
    .restart local v9    # "fileVersion":Ljava/lang/String;
    .restart local v10    # "filecontent":[B
    .restart local v12    # "tartgetIdentifier":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v1, "VivoWifiBlockScanResults"

    const-string v2, "getConfig nodata "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v8    # "fileId":Ljava/lang/String;
    .end local v9    # "fileVersion":Ljava/lang/String;
    .end local v10    # "filecontent":[B
    .end local v12    # "tartgetIdentifier":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_1

    .line 146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private readXml()V
    .locals 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->isUpdating:Z

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "VivoWifiBlockScanResults"

    const-string v1, "is reading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->isUpdating:Z

    .line 212
    new-instance v0, Lcom/android/server/wifi/VivoWifiBlockScanResults$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiBlockScanResults$2;-><init>(Lcom/android/server/wifi/VivoWifiBlockScanResults;)V

    invoke-virtual {v0}, Lcom/android/server/wifi/VivoWifiBlockScanResults$2;->run()V

    goto :goto_0
.end method

.method private scanFreqs(ILjava/lang/String;)Z
    .locals 15
    .param p1, "uid"    # I
    .param p2, "freqs"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v10, 0x0

    .line 361
    .local v10, "ret":Z
    const/4 v2, 0x0

    .line 362
    .local v2, "blockScanSettings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    const-string v7, ""

    .line 363
    .local v7, "freqsString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 367
    .local v6, "freqsStrArray":[Ljava/lang/String;
    :try_start_0
    sget-boolean v12, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v12, :cond_0

    const-string v12, "VivoWifiBlockScanResults"

    const-string v13, "scanFreqs begin"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    if-eqz p2, :cond_2

    const-string v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 369
    const-string v12, " "

    const-string v13, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 370
    const-string v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 371
    new-instance v11, Landroid/net/wifi/ScanSettings;

    invoke-direct {v11}, Landroid/net/wifi/ScanSettings;-><init>()V

    .line 372
    .local v11, "tmpScanSettings":Landroid/net/wifi/ScanSettings;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    .line 373
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v5, v1, v8

    .line 374
    .local v5, "freq":Ljava/lang/String;
    new-instance v3, Landroid/net/wifi/WifiChannel;

    invoke-direct {v3}, Landroid/net/wifi/WifiChannel;-><init>()V

    .line 375
    .local v3, "channel":Landroid/net/wifi/WifiChannel;
    new-instance v12, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v3, Landroid/net/wifi/WifiChannel;->freqMHz:I

    .line 376
    iget-object v12, v11, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v12, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 379
    .end local v3    # "channel":Landroid/net/wifi/WifiChannel;
    .end local v5    # "freq":Ljava/lang/String;
    :cond_1
    iget-object v12, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    new-instance v14, Landroid/os/WorkSource;

    invoke-direct {v14}, Landroid/os/WorkSource;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13, v11, v14}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 380
    const/4 v10, 0x1

    .line 382
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "tmpScanSettings":Landroid/net/wifi/ScanSettings;
    :cond_2
    sget-boolean v12, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v12, :cond_3

    const-string v12, "VivoWifiBlockScanResults"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "scanFreqs end ret:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", freqs:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_3
    :goto_1
    return v10

    .line 384
    :catch_0
    move-exception v4

    .line 385
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private scanOtherFreqs(I)Z
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 333
    const/4 v4, 0x0

    .line 334
    .local v4, "ret":Z
    const/4 v1, 0x0

    .line 335
    .local v1, "blockScanSettings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    const-string v3, ""

    .line 339
    .local v3, "freqsString":Ljava/lang/String;
    :try_start_0
    sget-boolean v5, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "VivoWifiBlockScanResults"

    const-string v6, "scanOtherFreqs begin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    sget-object v5, Lcom/android/server/wifi/VivoWifiBlockScanResults;->currentFastScanPackageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/wifi/VivoWifiBlockScanResults;->currentFastScanPackageName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 341
    sget-object v5, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mBlockScanReslutsAppMap:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/wifi/VivoWifiBlockScanResults;->currentFastScanPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;

    move-object v1, v0

    .line 342
    if-eqz v1, :cond_1

    .line 343
    # getter for: Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->secondScanFreq:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->access$600(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->scanFreqs(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 345
    const/4 v4, 0x1

    .line 349
    :cond_1
    sget-boolean v5, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "VivoWifiBlockScanResults"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scanOtherFreqs end ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , currentFastScanPackageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/wifi/VivoWifiBlockScanResults;->currentFastScanPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_2
    const/4 v5, 0x0

    sput-object v5, Lcom/android/server/wifi/VivoWifiBlockScanResults;->currentFastScanPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return v4

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setupVivoReceiver()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/android/server/wifi/VivoWifiBlockScanResults$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiBlockScanResults$1;-><init>(Lcom/android/server/wifi/VivoWifiBlockScanResults;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mVivoIntentFilter:Landroid/content/IntentFilter;

    .line 104
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_VivoWifiBlockScanResults"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.vivowifiblockscanresults.debug.dump"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.vivowifiblockscanresults.debug.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mVivoIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method private updateVivoWifiBlockScanResults(Ljava/io/StringReader;)V
    .locals 10
    .param p1, "reader"    # Ljava/io/StringReader;

    .prologue
    .line 152
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "VivoWifiBlockScanResults"

    const-string v9, "updateVivoWifiBlockScanResults start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    const/4 v5, 0x0

    .line 155
    .local v5, "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    const-string v3, ""

    .line 158
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 159
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x4

    .line 160
    .local v7, "state":I
    invoke-interface {v4, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 161
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .local v1, "eventType":I
    move-object v6, v5

    .line 163
    .end local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .local v6, "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :goto_0
    const/4 v8, 0x1

    if-eq v1, v8, :cond_7

    .line 164
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move-object v5, v6

    .line 191
    .end local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move-object v6, v5

    .end local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    goto :goto_0

    .line 166
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->notifyScanResults()Z

    .line 167
    sget-object v8, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mBlockScanReslutsAppMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    move-object v5, v6

    .line 169
    .end local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    goto :goto_2

    .line 171
    .end local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :pswitch_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "name":Ljava/lang/String;
    const-string v8, "packageName"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 173
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 174
    new-instance v5, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;-><init>(Lcom/android/server/wifi/VivoWifiBlockScanResults;Lcom/android/server/wifi/VivoWifiBlockScanResults$1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .end local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :try_start_2
    invoke-virtual {v5, v3}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->setPackageName(Ljava/lang/String;)V

    .line 176
    sget-object v8, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mBlockScanReslutsAppMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 198
    .end local v1    # "eventType":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "state":I
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "VivoWifiBlockScanResults"

    const-string v9, "updateVivoWifiBlockScanResults end"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    return-void

    .line 177
    .end local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v1    # "eventType":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v7    # "state":I
    :cond_3
    :try_start_3
    const-string v8, "scanResultsTimeout"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 178
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->setScanResultsTimeout(J)V

    move-object v5, v6

    .end local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    goto :goto_2

    .line 179
    .end local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :cond_4
    const-string v8, "blockTime"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 180
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->setBlockTime(J)V

    move-object v5, v6

    .end local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    goto :goto_2

    .line 181
    .end local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :cond_5
    const-string v8, "firstScanFreqs"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 182
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->setFirstScanFreqs(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    goto :goto_2

    .line 183
    .end local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :cond_6
    const-string v8, "secondScanFreq"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 184
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->setSecondScanFreq(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    goto/16 :goto_2

    .line 188
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :pswitch_3
    invoke-virtual {v6}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->dumpSettings()V

    goto/16 :goto_1

    .line 198
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    goto :goto_3

    .line 194
    .end local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :cond_7
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mBlockScanReslutsAppMap:Ljava/util/HashMap;

    if-eqz v8, :cond_8

    .line 195
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->dumpState()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_8
    move-object v5, v6

    .line 200
    .end local v6    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v5    # "settings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    goto :goto_4

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public needDoScreenOnScan()Z
    .locals 8

    .prologue
    .line 486
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 487
    .local v0, "currentTimeStamp":J
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "VivoWifiBlockScanResults"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needDoScreenOnScan currentTimeStamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mScreenOnTimeStamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScreenOnTimeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mLastScreenOnTimeStamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mLastScreenOnTimeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "VivoWifiBlockScanResults"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needDoScreenOnScan currentTimeStamp - mScreenOnTimeStamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScreenOnTimeStamp:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_1
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "VivoWifiBlockScanResults"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needDoScreenOnScan mScreenOnTimeStamp - mLastScreenOnTimeStamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScreenOnTimeStamp:J

    iget-wide v6, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mLastScreenOnTimeStamp:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "VivoWifiBlockScanResults"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needDoScreenOnScan currentTimeStamp - mScanResultsTimeStamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScanResultsUpdateTimeStamp:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_3
    iget-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScreenOnTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScreenOnTimeStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    iget-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScreenOnTimeStamp:J

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mLastScreenOnTimeStamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    sget-wide v2, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScanResultsUpdateTimeStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 496
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "VivoWifiBlockScanResults"

    const-string v3, "needDoScreenOnScan false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_4
    const/4 v2, 0x0

    .line 500
    :goto_0
    return v2

    .line 499
    :cond_5
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "VivoWifiBlockScanResults"

    const-string v3, "needDoScreenOnScan true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public notifyScanResults()Z
    .locals 6

    .prologue
    .line 458
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScanResultsUpdateTimeStamp:J

    .line 459
    sget-boolean v3, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "VivoWifiBlockScanResults"

    const-string v4, "notifyScanResults"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    sget-object v3, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mBlockScanReslutsAppMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 462
    .local v2, "setting":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :try_start_1
    # getter for: Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->access$800(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 463
    :try_start_2
    # getter for: Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->access$800(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 464
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 471
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "setting":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    :catch_1
    move-exception v0

    .line 472
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 469
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/16 v3, -0x65

    :try_start_5
    invoke-direct {p0, v3}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->scanOtherFreqs(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public setScreenOn(Z)V
    .locals 4
    .param p1, "screenOn"    # Z

    .prologue
    .line 478
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScreenOn:Z

    if-nez v2, :cond_0

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 480
    .local v0, "currentTimeStamp":J
    iget-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScreenOnTimeStamp:J

    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mLastScreenOnTimeStamp:J

    .line 481
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScreenOnTimeStamp:J

    .line 483
    .end local v0    # "currentTimeStamp":J
    :cond_0
    return-void
.end method

.method public startFastScan(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "pakeageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 300
    const/4 v5, 0x0

    .line 301
    .local v5, "ret":Z
    const/4 v2, 0x0

    .line 302
    .local v2, "blockScanSettings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    const-string v4, ""

    .line 306
    .local v4, "freqsString":Ljava/lang/String;
    :try_start_0
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "VivoWifiBlockScanResults"

    const-string v9, "startFastScan begin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    sget-object v8, Lcom/android/server/wifi/VivoWifiBlockScanResults;->currentFastScanPackageName:Ljava/lang/String;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/server/wifi/VivoWifiBlockScanResults;->currentFastScanPackageName:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 309
    .local v6, "now":J
    iget-wide v8, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mLastFastScanTimeStamp:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x1388

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    .line 310
    const-string v8, "VivoWifiBlockScanResults"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startFastScan end is in fast scan mode. diff:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mLastFastScanTimeStamp:J

    sub-long v10, v6, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v8, 0x0

    .line 329
    .end local v6    # "now":J
    :goto_0
    return v8

    .line 314
    :cond_1
    sget-object v8, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mBlockScanReslutsAppMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;

    move-object v2, v0

    .line 315
    if-eqz v2, :cond_2

    .line 316
    # getter for: Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->firstScanFreqs:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->access$500(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-direct {p0, p2, v4}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->scanFreqs(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 318
    sput-object p1, Lcom/android/server/wifi/VivoWifiBlockScanResults;->currentFastScanPackageName:Ljava/lang/String;

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mLastFastScanTimeStamp:J

    .line 320
    const/4 v5, 0x1

    .line 324
    :cond_2
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v8, :cond_3

    const-string v8, "VivoWifiBlockScanResults"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startFastScan end ret:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pakeageName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move v8, v5

    .line 329
    goto :goto_0

    .line 326
    :catch_0
    move-exception v3

    .line 327
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public waitScanResults(Ljava/lang/String;)Z
    .locals 22
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 391
    const/4 v9, 0x0

    .line 395
    .local v9, "ret":Z
    :try_start_0
    sget-boolean v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v17, :cond_0

    const-string v17, "VivoWifiBlockScanResults"

    const-string v18, "waitScanResults begin"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->overseas:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "no"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 398
    sget-boolean v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v17, :cond_1

    const-string v17, "VivoWifiBlockScanResults"

    const-string v18, "waitScanResults end is overseas"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1
    const/16 v17, 0x0

    .line 452
    :goto_0
    return v17

    .line 402
    :cond_2
    if-eqz p1, :cond_3

    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 403
    :cond_3
    sget-boolean v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v17, :cond_4

    const-string v17, "VivoWifiBlockScanResults"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "waitScanResults end appname is invalid. appname:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 407
    :cond_5
    sget-object v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mBlockScanReslutsAppMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;

    .line 408
    .local v5, "blockScanSettings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    if-nez v5, :cond_7

    .line 409
    sget-boolean v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v17, :cond_6

    const-string v17, "VivoWifiBlockScanResults"

    const-string v18, "waitScanResults end blockScanSettings is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_6
    const/16 v17, 0x0

    goto :goto_0

    .line 412
    :cond_7
    sget-boolean v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v17, :cond_8

    invoke-virtual {v5}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->dumpSettings()V

    .line 415
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 416
    .local v10, "now":J
    sget-wide v18, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScanResultsUpdateTimeStamp:J

    sub-long v6, v10, v18

    .line 417
    .local v6, "diffTime":J
    sget-boolean v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v17, :cond_9

    const-string v17, "VivoWifiBlockScanResults"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "waitScanResults diffTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " , "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-wide v20, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScanResultsUpdateTimeStamp:J

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_9
    sget-wide v18, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScanResultsUpdateTimeStamp:J

    sub-long v18, v10, v18

    # getter for: Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->scanResultsTimeout:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->access$700(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-gtz v17, :cond_b

    .line 419
    sget-boolean v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v17, :cond_a

    const-string v17, "VivoWifiBlockScanResults"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "waitScanResults end time from last scan result is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-wide v20, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mScanResultsUpdateTimeStamp:J

    sub-long v20, v10, v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 423
    :cond_b
    sget-object v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_scan_always_enabled"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 424
    .local v4, "alwayScan":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiBlockScanResults;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v16

    .line 425
    .local v16, "wifiState":I
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_f

    .line 427
    :cond_c
    const/16 v17, -0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->startFastScan(Ljava/lang/String;I)Z

    .line 429
    # getter for: Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->lock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->access$800(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 431
    .local v12, "stamp1":J
    sget-boolean v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v17, :cond_d

    const-string v17, "VivoWifiBlockScanResults"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wait stamp1:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    :cond_d
    const/4 v9, 0x1

    .line 435
    :try_start_2
    # getter for: Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->lock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->access$800(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)Ljava/lang/Object;

    move-result-object v17

    # getter for: Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->blockTime:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->access$900(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)J

    move-result-wide v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    :goto_1
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 441
    .local v14, "stamp2":J
    sget-boolean v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v17, :cond_e

    const-string v17, "VivoWifiBlockScanResults"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "waitScanResults appname:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , lock:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    # getter for: Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->lock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->access$800(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , diffstamp:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v14, v12

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , stamp1:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , stamp2:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_e
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 447
    .end local v12    # "stamp1":J
    .end local v14    # "stamp2":J
    :cond_f
    :try_start_4
    sget-boolean v17, Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z

    if-eqz v17, :cond_10

    const-string v17, "VivoWifiBlockScanResults"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "waitScanResults end ret:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", alwayScan:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", wifiState:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", appname:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v4    # "alwayScan":I
    .end local v5    # "blockScanSettings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .end local v6    # "diffTime":J
    .end local v10    # "now":J
    .end local v16    # "wifiState":I
    :cond_10
    :goto_2
    move/from16 v17, v9

    .line 452
    goto/16 :goto_0

    .line 436
    .restart local v4    # "alwayScan":I
    .restart local v5    # "blockScanSettings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .restart local v6    # "diffTime":J
    .restart local v10    # "now":J
    .restart local v12    # "stamp1":J
    .restart local v16    # "wifiState":I
    :catch_0
    move-exception v8

    .line 437
    .local v8, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 443
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "stamp1":J
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v17
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 449
    .end local v4    # "alwayScan":I
    .end local v5    # "blockScanSettings":Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
    .end local v6    # "diffTime":J
    .end local v10    # "now":J
    .end local v16    # "wifiState":I
    :catch_1
    move-exception v8

    .line 450
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
