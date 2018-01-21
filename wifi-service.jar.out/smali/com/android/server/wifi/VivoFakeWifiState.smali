.class public Lcom/android/server/wifi/VivoFakeWifiState;
.super Ljava/lang/Object;
.source "VivoFakeWifiState.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VivoFakeWifiState"

.field private static mContext:Landroid/content/Context;

.field public static mFakeWifiStateAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final vivoFakeWifiStateEnabled:Z


# instance fields
.field isUpdating:Z

.field private mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mVivoIntentFilter:Landroid/content/IntentFilter;

.field private final vivoFakeWifiStateUpdateAction:Ljava/lang/String;

.field private final vivoFakeWifiStateUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoFakeWifiState;->DBG:Z

    .line 39
    const-string v0, "ro.vivo.product.overseas"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/VivoFakeWifiState;->vivoFakeWifiStateEnabled:Z

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/VivoFakeWifiState;->mFakeWifiStateAppMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbg"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "content://com.vivo.daemonservice.unifiedconfigprovider/configs"

    iput-object v0, p0, Lcom/android/server/wifi/VivoFakeWifiState;->vivoFakeWifiStateUri:Ljava/lang/String;

    .line 44
    const-string v0, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_WifiState"

    iput-object v0, p0, Lcom/android/server/wifi/VivoFakeWifiState;->vivoFakeWifiStateUpdateAction:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/VivoFakeWifiState;->isUpdating:Z

    .line 50
    sput-object p1, Lcom/android/server/wifi/VivoFakeWifiState;->mContext:Landroid/content/Context;

    .line 51
    sput-boolean p2, Lcom/android/server/wifi/VivoFakeWifiState;->DBG:Z

    .line 52
    invoke-direct {p0}, Lcom/android/server/wifi/VivoFakeWifiState;->setupVivoReceiver()V

    .line 53
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/server/wifi/VivoFakeWifiState;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/VivoFakeWifiState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoFakeWifiState;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/wifi/VivoFakeWifiState;->readXml()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/VivoFakeWifiState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoFakeWifiState;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/wifi/VivoFakeWifiState;->dumpState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/VivoFakeWifiState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoFakeWifiState;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/VivoFakeWifiState;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dumpState()V
    .locals 6

    .prologue
    .line 235
    const-string v3, "VivoFakeWifiState"

    const-string v4, "-------------------------dumpState begin-------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v3, Lcom/android/server/wifi/VivoFakeWifiState;->mFakeWifiStateAppMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 238
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v4, "VivoFakeWifiState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpState packageName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    const-string v3, "VivoFakeWifiState"

    const-string v4, "-------------------------dumpState end---------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public static enableVerboseLogging(I)V
    .locals 1
    .param p0, "verbose"    # I

    .prologue
    .line 244
    if-lez p0, :cond_0

    .line 245
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoFakeWifiState;->DBG:Z

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/VivoFakeWifiState;->DBG:Z

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
    .line 91
    sget-object v1, Lcom/android/server/wifi/VivoFakeWifiState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
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

    .line 93
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 96
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 97
    if-eqz v7, :cond_3

    .line 98
    const-string v8, ""

    .local v8, "fileId":Ljava/lang/String;
    const-string v12, ""

    .local v12, "tartgetIdentifier":Ljava/lang/String;
    const-string v9, ""

    .line 99
    .local v9, "fileVersion":Ljava/lang/String;
    const/4 v10, 0x0

    .line 100
    .local v10, "filecontent":[B
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 103
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 104
    const-string v1, "id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    const-string v1, "identifier"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 106
    const-string v1, "fileversion"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 107
    const-string v1, "filecontent"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 108
    new-instance v6, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v6, v10, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 109
    .local v6, "applists":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/VivoFakeWifiState;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoFakeWifiState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig VivoFakeWifiState.xml:\n  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 111
    .local v11, "reader":Ljava/io/StringReader;
    invoke-direct {p0, v11}, Lcom/android/server/wifi/VivoFakeWifiState;->updateVivoFakeWifiState(Ljava/io/StringReader;)V

    .line 112
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    .end local v6    # "applists":Ljava/lang/String;
    .end local v8    # "fileId":Ljava/lang/String;
    .end local v9    # "fileVersion":Ljava/lang/String;
    .end local v10    # "filecontent":[B
    .end local v11    # "reader":Ljava/io/StringReader;
    .end local v12    # "tartgetIdentifier":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 123
    if-eqz v7, :cond_1

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_1
    :goto_1
    return-void

    .line 115
    .restart local v8    # "fileId":Ljava/lang/String;
    .restart local v9    # "fileVersion":Ljava/lang/String;
    .restart local v10    # "filecontent":[B
    .restart local v12    # "tartgetIdentifier":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v1, "VivoFakeWifiState"

    const-string v2, "getConfig nodata "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v8    # "fileId":Ljava/lang/String;
    .end local v9    # "fileVersion":Ljava/lang/String;
    .end local v10    # "filecontent":[B
    .end local v12    # "tartgetIdentifier":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_1

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static getVivoFakeWifiState(ILjava/lang/String;)I
    .locals 8
    .param p0, "state"    # I
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v3, 0x4

    .line 181
    .local v3, "ret":I
    const/4 v0, 0x0

    .line 182
    .local v0, "alwayScan":I
    const-string v2, "no"

    .line 185
    .local v2, "overseas":Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/server/wifi/VivoFakeWifiState;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "VivoFakeWifiState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVivoFakeWifiState ret: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", appname: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", alwayScan: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", overseas: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    return v3

    .line 188
    :cond_2
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 190
    :pswitch_0
    :try_start_1
    sget-object v5, Lcom/android/server/wifi/VivoFakeWifiState;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_scan_always_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 191
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 193
    const-string v5, "ro.vivo.product.overseas"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    const-string v5, "no"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    sget-object v5, Lcom/android/server/wifi/VivoFakeWifiState;->mFakeWifiStateAppMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 196
    .local v4, "value":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 197
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 206
    .end local v4    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private readXml()V
    .locals 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoFakeWifiState;->isUpdating:Z

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "VivoFakeWifiState"

    const-string v1, "is reading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/VivoFakeWifiState;->isUpdating:Z

    .line 221
    new-instance v0, Lcom/android/server/wifi/VivoFakeWifiState$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoFakeWifiState$2;-><init>(Lcom/android/server/wifi/VivoFakeWifiState;)V

    invoke-virtual {v0}, Lcom/android/server/wifi/VivoFakeWifiState$2;->run()V

    goto :goto_0
.end method

.method private setupVivoReceiver()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/android/server/wifi/VivoFakeWifiState$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoFakeWifiState$1;-><init>(Lcom/android/server/wifi/VivoFakeWifiState;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoFakeWifiState;->mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/VivoFakeWifiState;->mVivoIntentFilter:Landroid/content/IntentFilter;

    .line 83
    iget-object v0, p0, Lcom/android/server/wifi/VivoFakeWifiState;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_WifiState"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/wifi/VivoFakeWifiState;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/wifi/VivoFakeWifiState;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.vivofakewifistate.debug.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/VivoFakeWifiState;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.vivofakewifistate.debug.dump"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/android/server/wifi/VivoFakeWifiState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/VivoFakeWifiState;->mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/VivoFakeWifiState;->mVivoIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method private updateVivoFakeWifiState(Ljava/io/StringReader;)V
    .locals 9
    .param p1, "reader"    # Ljava/io/StringReader;

    .prologue
    .line 130
    sget-boolean v7, Lcom/android/server/wifi/VivoFakeWifiState;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "VivoFakeWifiState"

    const-string v8, "updateVivoFakeWifiState start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 133
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x4

    .line 134
    .local v5, "state":I
    invoke-interface {v4, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 135
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 137
    .local v1, "eventType":I
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_8

    .line 138
    packed-switch v1, :pswitch_data_0

    .line 165
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 140
    :pswitch_1
    sget-object v7, Lcom/android/server/wifi/VivoFakeWifiState;->mFakeWifiStateAppMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    .end local v1    # "eventType":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "state":I
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    sget-boolean v7, Lcom/android/server/wifi/VivoFakeWifiState;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "VivoFakeWifiState"

    const-string v8, "updateVivoFakeWifiState end"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3
    return-void

    .line 144
    .restart local v1    # "eventType":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "state":I
    :pswitch_2
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "name":Ljava/lang/String;
    const-string v7, "disabling"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 146
    const/4 v5, 0x0

    goto :goto_1

    .line 147
    :cond_4
    const-string v7, "disabled"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 148
    const/4 v5, 0x1

    goto :goto_1

    .line 149
    :cond_5
    const-string v7, "enabling"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 150
    const/4 v5, 0x2

    goto :goto_1

    .line 151
    :cond_6
    const-string v7, "enabled"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 152
    const/4 v5, 0x3

    goto :goto_1

    .line 153
    :cond_7
    const-string v7, "item"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 154
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "packageName":Ljava/lang/String;
    const/4 v7, 0x4

    if-eq v5, v7, :cond_1

    .line 156
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 157
    .local v6, "stateInteger":Ljava/lang/Integer;
    sget-object v7, Lcom/android/server/wifi/VivoFakeWifiState;->mFakeWifiStateAppMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 168
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "stateInteger":Ljava/lang/Integer;
    :cond_8
    sget-boolean v7, Lcom/android/server/wifi/VivoFakeWifiState;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/wifi/VivoFakeWifiState;->mFakeWifiStateAppMap:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/android/server/wifi/VivoFakeWifiState;->dumpState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
