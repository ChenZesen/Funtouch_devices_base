.class public Lcom/android/server/wifi/VivoServerMapHelper;
.super Ljava/lang/Object;
.source "VivoServerMapHelper.java"


# static fields
.field private static DBG:Z = false

.field private static final HOSTS_FILE_PATH:Ljava/lang/String; = "/system/etc/hosts"

.field private static final INVALID_TIME:I = 0x14

.field private static final PART_NUM:I = 0x4

.field private static final SEPARATOR:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "VivoServerMapHelper"

.field private static final VERSION:Ljava/lang/String; = "1.0.0"

.field private static final VIVO_SERVER_MAP_FILE_PATH:Ljava/lang/String; = "/data/misc/wifi/vivoServerMap_1.0.0.txt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVivoServerFile()V
    .locals 5

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, "vivoServerMapFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/wifi/vivoServerMap_1.0.0.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v1    # "vivoServerMapFile":Ljava/io/File;
    .local v2, "vivoServerMapFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 57
    sget-boolean v3, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "VivoServerMapHelper"

    const-string v4, "createVivoServerFile create /data/misc/wifi/vivoServerMap_1.0.0.txt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object v1, v2

    .line 69
    .end local v2    # "vivoServerMapFile":Ljava/io/File;
    .restart local v1    # "vivoServerMapFile":Ljava/io/File;
    :goto_1
    return-void

    .line 59
    .end local v1    # "vivoServerMapFile":Ljava/io/File;
    .restart local v2    # "vivoServerMapFile":Ljava/io/File;
    :cond_1
    const-string v3, "VivoServerMapHelper"

    const-string v4, "createVivoServerFile already had /data/misc/wifi/vivoServerMap_1.0.0.txt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 62
    .end local v2    # "vivoServerMapFile":Ljava/io/File;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "vivoServerMapFile":Ljava/io/File;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_3
    throw v3

    .end local v1    # "vivoServerMapFile":Ljava/io/File;
    .restart local v2    # "vivoServerMapFile":Ljava/io/File;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "vivoServerMapFile":Ljava/io/File;
    .restart local v1    # "vivoServerMapFile":Ljava/io/File;
    goto :goto_3

    .line 61
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static enableVerboseLogging(I)V
    .locals 3
    .param p0, "verbose"    # I

    .prologue
    .line 71
    const-string v0, "VivoServerMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVerboseLogging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-lez p0, :cond_0

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    goto :goto_0
.end method

.method private static getBaiduIpAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 345
    const-string v0, "unknown"

    .line 346
    .local v0, "addr":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    .line 348
    .local v1, "array":[Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 349
    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 351
    .end local v1    # "array":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v2, ""

    .line 355
    .local v2, "ssid":Ljava/lang/String;
    const-string v3, ""

    .line 356
    .local v3, "time":Ljava/lang/String;
    const-string v4, ""

    .line 357
    .local v4, "vivoAddr":Ljava/lang/String;
    const-string v0, ""

    .line 359
    .local v0, "baiduAddr":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 362
    invoke-static {p0}, Lcom/android/server/wifi/VivoServerMapHelper;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-static {p0}, Lcom/android/server/wifi/VivoServerMapHelper;->getVivoIpAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 364
    invoke-static {p0}, Lcom/android/server/wifi/VivoServerMapHelper;->getBaiduIpAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x3

    .line 366
    .local v1, "len":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 368
    .end local v1    # "len":I
    :cond_0
    return-object v2
.end method

.method private static getTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 327
    const-string v1, ""

    .line 328
    .local v1, "time":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    .line 330
    .local v0, "array":[Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 331
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 333
    .end local v0    # "array":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static getVivoIpAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 336
    const-string v0, "unknown"

    .line 337
    .local v0, "addr":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    .line 339
    .local v1, "array":[Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 340
    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 342
    .end local v1    # "array":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getVivoServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v3, 0x0

    .line 86
    .local v3, "fileread":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 87
    .local v0, "bufRead":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 88
    .local v9, "vivoServerMapFile":Ljava/io/File;
    const-string v6, "unknown"

    .line 91
    .local v6, "ip":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/wifi/vivoServerMap_1.0.0.txt"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .local v10, "vivoServerMapFile":Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    .end local v3    # "fileread":Ljava/io/FileReader;
    .local v4, "fileread":Ljava/io/FileReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 95
    .end local v0    # "bufRead":Ljava/io/BufferedReader;
    .local v1, "bufRead":Ljava/io/BufferedReader;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "read":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 96
    invoke-static {v7}, Lcom/android/server/wifi/VivoServerMapHelper;->getSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "s":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/VivoServerMapHelper;->getVivoIpAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "i":Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v11, :cond_1

    const-string v11, "VivoServerMapHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getVivoServer  read:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    sget-boolean v11, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v11, :cond_2

    const-string v11, "VivoServerMapHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getVivoServer s:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", i:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v11

    if-eqz v11, :cond_0

    .line 101
    move-object v6, v5

    .line 110
    .end local v5    # "i":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 111
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 113
    :cond_4
    if-eqz v4, :cond_5

    .line 114
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "bufRead":Ljava/io/BufferedReader;
    .restart local v0    # "bufRead":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 126
    .end local v4    # "fileread":Ljava/io/FileReader;
    .end local v7    # "read":Ljava/lang/String;
    .restart local v3    # "fileread":Ljava/io/FileReader;
    :cond_6
    :goto_0
    sget-boolean v11, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v11, :cond_7

    const-string v11, "VivoServerMapHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getVivoServer ip:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_7
    return-object v6

    .line 116
    .end local v0    # "bufRead":Ljava/io/BufferedReader;
    .end local v3    # "fileread":Ljava/io/FileReader;
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .restart local v1    # "bufRead":Ljava/io/BufferedReader;
    .restart local v4    # "fileread":Ljava/io/FileReader;
    .restart local v7    # "read":Ljava/lang/String;
    .restart local v10    # "vivoServerMapFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "bufRead":Ljava/io/BufferedReader;
    .restart local v0    # "bufRead":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 124
    .end local v4    # "fileread":Ljava/io/FileReader;
    .restart local v3    # "fileread":Ljava/io/FileReader;
    goto :goto_0

    .line 105
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "read":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    if-eqz v0, :cond_8

    .line 111
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 113
    :cond_8
    if-eqz v3, :cond_6

    .line 114
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 116
    :catch_2
    move-exception v2

    .line 118
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 110
    :goto_2
    if-eqz v0, :cond_9

    .line 111
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 113
    :cond_9
    if-eqz v3, :cond_a

    .line 114
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 119
    :cond_a
    :goto_3
    throw v11

    .line 116
    :catch_3
    move-exception v2

    .line 118
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 109
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .restart local v10    # "vivoServerMapFile":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    goto :goto_2

    .end local v3    # "fileread":Ljava/io/FileReader;
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .restart local v4    # "fileread":Ljava/io/FileReader;
    .restart local v10    # "vivoServerMapFile":Ljava/io/File;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "fileread":Ljava/io/FileReader;
    .restart local v3    # "fileread":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "bufRead":Ljava/io/BufferedReader;
    .end local v3    # "fileread":Ljava/io/FileReader;
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .restart local v1    # "bufRead":Ljava/io/BufferedReader;
    .restart local v4    # "fileread":Ljava/io/FileReader;
    .restart local v10    # "vivoServerMapFile":Ljava/io/File;
    :catchall_3
    move-exception v11

    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "bufRead":Ljava/io/BufferedReader;
    .restart local v0    # "bufRead":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileread":Ljava/io/FileReader;
    .restart local v3    # "fileread":Ljava/io/FileReader;
    goto :goto_2

    .line 105
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .restart local v10    # "vivoServerMapFile":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    goto :goto_1

    .end local v3    # "fileread":Ljava/io/FileReader;
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .restart local v4    # "fileread":Ljava/io/FileReader;
    .restart local v10    # "vivoServerMapFile":Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "fileread":Ljava/io/FileReader;
    .restart local v3    # "fileread":Ljava/io/FileReader;
    goto :goto_1

    .end local v0    # "bufRead":Ljava/io/BufferedReader;
    .end local v3    # "fileread":Ljava/io/FileReader;
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .restart local v1    # "bufRead":Ljava/io/BufferedReader;
    .restart local v4    # "fileread":Ljava/io/FileReader;
    .restart local v10    # "vivoServerMapFile":Ljava/io/File;
    :catch_6
    move-exception v2

    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "bufRead":Ljava/io/BufferedReader;
    .restart local v0    # "bufRead":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileread":Ljava/io/FileReader;
    .restart local v3    # "fileread":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private static isIpAddress(Ljava/lang/String;)Z
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2e

    const/4 v5, 0x0

    .line 381
    if-nez p0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v5

    .line 384
    :cond_1
    const/4 v4, 0x0

    .line 385
    .local v4, "start":I
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 386
    .local v2, "end":I
    const/4 v3, 0x0

    .line 388
    .local v3, "numBlocks":I
    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 391
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 392
    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 393
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 396
    :cond_2
    :try_start_0
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 397
    .local v0, "block":I
    const/16 v6, 0xff

    if-gt v0, v6, :cond_0

    if-ltz v0, :cond_0

    .line 403
    add-int/lit8 v3, v3, 0x1

    .line 404
    add-int/lit8 v4, v2, 0x1

    .line 405
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_1

    .line 400
    .end local v0    # "block":I
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 407
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 372
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 373
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 375
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 377
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static setHostServer(Ljava/lang/String;)V
    .locals 14
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v4, 0x0

    .line 230
    .local v4, "fileread":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 231
    .local v1, "bufRead":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 232
    .local v9, "vivoServerMapFile":Ljava/io/File;
    const-string v8, "unknown"

    .line 233
    .local v8, "vivoIp":Ljava/lang/String;
    const-string v0, "unknown"

    .line 235
    .local v0, "baiduIp":Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v11, :cond_0

    const-string v11, "VivoServerMapHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHostServer  begin ssid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :try_start_0
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/wifi/vivoServerMap_1.0.0.txt"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 239
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .local v10, "vivoServerMapFile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 240
    .end local v4    # "fileread":Ljava/io/FileReader;
    .local v5, "fileread":Ljava/io/FileReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 242
    .end local v1    # "bufRead":Ljava/io/BufferedReader;
    .local v2, "bufRead":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "read":Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 243
    sget-boolean v11, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v11, :cond_2

    const-string v11, "VivoServerMapHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHostServer  read:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2
    invoke-static {v6}, Lcom/android/server/wifi/VivoServerMapHelper;->getSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "s":Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v11, :cond_3

    const-string v11, "VivoServerMapHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHostServer  s:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_3
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 247
    invoke-static {v6}, Lcom/android/server/wifi/VivoServerMapHelper;->getVivoIpAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 248
    invoke-static {v6}, Lcom/android/server/wifi/VivoServerMapHelper;->getBaiduIpAddr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 256
    .end local v7    # "s":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_5

    .line 257
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 259
    :cond_5
    if-eqz v5, :cond_6

    .line 260
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 268
    .end local v6    # "read":Ljava/lang/String;
    :cond_6
    :goto_0
    if-eqz v8, :cond_d

    const-string v11, "unknown"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-static {v8}, Lcom/android/server/wifi/VivoServerMapHelper;->isIpAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 269
    sget-boolean v11, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v11, :cond_7

    const-string v11, "VivoServerMapHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHostServer  vivoIp:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_7
    const-string v11, "net.vivofw.dns"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_1
    if-eqz v0, :cond_f

    const-string v11, "unknown"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    invoke-static {v0}, Lcom/android/server/wifi/VivoServerMapHelper;->isIpAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 276
    sget-boolean v11, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v11, :cond_8

    const-string v11, "VivoServerMapHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHostServer  baiduIp:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_8
    const-string v11, "net.baidu.dns"

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    move-object v1, v2

    .end local v2    # "bufRead":Ljava/io/BufferedReader;
    .restart local v1    # "bufRead":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 323
    .end local v5    # "fileread":Ljava/io/FileReader;
    .restart local v4    # "fileread":Ljava/io/FileReader;
    :goto_3
    sget-boolean v11, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v11, :cond_9

    const-string v11, "VivoServerMapHelper"

    const-string v12, "setHostServer  end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_9
    return-void

    .line 252
    .end local v1    # "bufRead":Ljava/io/BufferedReader;
    .end local v4    # "fileread":Ljava/io/FileReader;
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .restart local v2    # "bufRead":Ljava/io/BufferedReader;
    .restart local v5    # "fileread":Ljava/io/FileReader;
    .restart local v10    # "vivoServerMapFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 254
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 256
    if-eqz v2, :cond_a

    .line 257
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 259
    :cond_a
    if-eqz v5, :cond_6

    .line 260
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 282
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    move-object v1, v2

    .end local v2    # "bufRead":Ljava/io/BufferedReader;
    .restart local v1    # "bufRead":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 284
    .end local v5    # "fileread":Ljava/io/FileReader;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "fileread":Ljava/io/FileReader;
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 256
    .end local v1    # "bufRead":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fileread":Ljava/io/FileReader;
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .restart local v2    # "bufRead":Ljava/io/BufferedReader;
    .restart local v5    # "fileread":Ljava/io/FileReader;
    .restart local v10    # "vivoServerMapFile":Ljava/io/File;
    :catchall_0
    move-exception v11

    if-eqz v2, :cond_b

    .line 257
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 259
    :cond_b
    if-eqz v5, :cond_c

    .line 260
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    :cond_c
    throw v11

    .line 272
    :cond_d
    sget-boolean v11, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v11, :cond_e

    const-string v11, "VivoServerMapHelper"

    const-string v12, "setHostServer  vivoIp:unknown"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_e
    const-string v11, "net.vivofw.dns"

    const-string v12, "unknown"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 279
    :cond_f
    sget-boolean v11, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v11, :cond_10

    const-string v11, "VivoServerMapHelper"

    const-string v12, "setHostServer  baiduIp:unknown"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_10
    const-string v11, "net.baidu.dns"

    const-string v12, "unknown"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 282
    .end local v2    # "bufRead":Ljava/io/BufferedReader;
    .end local v5    # "fileread":Ljava/io/FileReader;
    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v1    # "bufRead":Ljava/io/BufferedReader;
    .restart local v4    # "fileread":Ljava/io/FileReader;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    :catch_2
    move-exception v3

    goto :goto_4

    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .restart local v10    # "vivoServerMapFile":Ljava/io/File;
    :catch_3
    move-exception v3

    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    goto :goto_4

    .end local v4    # "fileread":Ljava/io/FileReader;
    .end local v9    # "vivoServerMapFile":Ljava/io/File;
    .restart local v5    # "fileread":Ljava/io/FileReader;
    .restart local v10    # "vivoServerMapFile":Ljava/io/File;
    :catch_4
    move-exception v3

    move-object v9, v10

    .end local v10    # "vivoServerMapFile":Ljava/io/File;
    .restart local v9    # "vivoServerMapFile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fileread":Ljava/io/FileReader;
    .restart local v4    # "fileread":Ljava/io/FileReader;
    goto :goto_4
.end method

.method public static updateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "vivoIp"    # Ljava/lang/String;
    .param p2, "baiduIp"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v19, ""

    .line 137
    .local v19, "temp":Ljava/lang/String;
    const/16 v20, 0x0

    .line 138
    .local v20, "updated":Z
    const/16 v21, 0x0

    .line 139
    .local v21, "vivoServerMapFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 140
    .local v9, "fis":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 141
    .local v12, "isr":Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    .line 142
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 143
    .local v4, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/server/wifi/VivoSmartWifiConstants;->getDate()I

    move-result v6

    .line 145
    .local v6, "data":I
    sget-boolean v23, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v23, :cond_0

    const-string v23, "VivoServerMapHelper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateServer  begin data:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", ssid:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", vivoIp:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", baiduIp:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    if-eqz p0, :cond_1

    const-string v23, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    if-eqz p1, :cond_1

    const-string v23, "unknown"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/VivoServerMapHelper;->isIpAddress(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1

    if-eqz p2, :cond_1

    const-string v23, "unknown"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/VivoServerMapHelper;->isIpAddress(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    :try_start_0
    new-instance v22, Ljava/io/File;

    const-string v23, "/data/misc/wifi/vivoServerMap_1.0.0.txt"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 157
    .end local v21    # "vivoServerMapFile":Ljava/io/File;
    .local v22, "vivoServerMapFile":Ljava/io/File;
    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 158
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 159
    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .local v13, "isr":Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 160
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 164
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    .local v5, "buf":Ljava/lang/StringBuffer;
    const/4 v14, 0x1

    .local v14, "j":I
    move-object v4, v5

    .end local v5    # "buf":Ljava/lang/StringBuffer;
    .restart local v4    # "buf":Ljava/lang/StringBuffer;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 165
    const-string v23, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 164
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 168
    :cond_4
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/VivoServerMapHelper;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 169
    .local v16, "oldtime":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/VivoServerMapHelper;->getSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 170
    .local v15, "oldssid":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 171
    .local v17, "oldtimeInt":I
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/VivoServerMapHelper;->getSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 172
    move/from16 v17, v6

    .line 173
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 174
    const/16 v20, 0x1

    .line 176
    :cond_5
    sub-int v23, v6, v17

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_3

    .line 177
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_2

    .line 181
    .end local v15    # "oldssid":Ljava/lang/String;
    .end local v16    # "oldtime":Ljava/lang/String;
    .end local v17    # "oldtimeInt":I
    :cond_6
    if-nez v20, :cond_7

    .line 182
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 183
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 191
    :cond_7
    if-eqz v3, :cond_8

    .line 192
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 194
    :cond_8
    if-eqz v13, :cond_9

    .line 195
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V

    .line 197
    :cond_9
    if-eqz v10, :cond_a

    .line 198
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 210
    :cond_a
    :goto_3
    :try_start_7
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 211
    .local v11, "fos":Ljava/io/FileOutputStream;
    new-instance v18, Ljava/io/PrintWriter;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 212
    .local v18, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toCharArray()[C

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write([C)V

    .line 213
    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintWriter;->flush()V

    .line 214
    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintWriter;->close()V

    .line 215
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v12, v13

    .end local v13    # "isr":Ljava/io/InputStreamReader;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v21, v22

    .line 219
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "j":I
    .end local v18    # "pw":Ljava/io/PrintWriter;
    .end local v22    # "vivoServerMapFile":Ljava/io/File;
    .restart local v21    # "vivoServerMapFile":Ljava/io/File;
    :goto_4
    sget-boolean v23, Lcom/android/server/wifi/VivoServerMapHelper;->DBG:Z

    if-eqz v23, :cond_1

    const-string v23, "VivoServerMapHelper"

    const-string v24, "updateServer  end"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 200
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .end local v21    # "vivoServerMapFile":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "isr":Ljava/io/InputStreamReader;
    .restart local v14    # "j":I
    .restart local v22    # "vivoServerMapFile":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 202
    .local v7, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 216
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "j":I
    :catch_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v12, v13

    .end local v13    # "isr":Ljava/io/InputStreamReader;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v21, v22

    .line 217
    .end local v22    # "vivoServerMapFile":Ljava/io/File;
    .restart local v7    # "e":Ljava/io/IOException;
    .restart local v21    # "vivoServerMapFile":Ljava/io/File;
    :goto_5
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 186
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .end local v21    # "vivoServerMapFile":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "isr":Ljava/io/InputStreamReader;
    .restart local v14    # "j":I
    .restart local v22    # "vivoServerMapFile":Ljava/io/File;
    :catch_2
    move-exception v8

    .line 187
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 191
    if-eqz v3, :cond_b

    .line 192
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 194
    :cond_b
    if-eqz v13, :cond_c

    .line 195
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V

    .line 197
    :cond_c
    if-eqz v10, :cond_a

    .line 198
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    .line 200
    :catch_3
    move-exception v7

    .line 202
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    .line 190
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    .line 191
    if-eqz v3, :cond_d

    .line 192
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 194
    :cond_d
    if-eqz v13, :cond_e

    .line 195
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V

    .line 197
    :cond_e
    if-eqz v10, :cond_f

    .line 198
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 203
    :cond_f
    :goto_6
    :try_start_d
    throw v23

    .line 200
    :catch_4
    move-exception v7

    .line 202
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_6

    .line 216
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "isr":Ljava/io/InputStreamReader;
    .end local v14    # "j":I
    .end local v22    # "vivoServerMapFile":Ljava/io/File;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    .restart local v21    # "vivoServerMapFile":Ljava/io/File;
    :catch_5
    move-exception v7

    goto :goto_5

    .end local v21    # "vivoServerMapFile":Ljava/io/File;
    .restart local v22    # "vivoServerMapFile":Ljava/io/File;
    :catch_6
    move-exception v7

    move-object/from16 v21, v22

    .end local v22    # "vivoServerMapFile":Ljava/io/File;
    .restart local v21    # "vivoServerMapFile":Ljava/io/File;
    goto :goto_5

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v21    # "vivoServerMapFile":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v22    # "vivoServerMapFile":Ljava/io/File;
    :catch_7
    move-exception v7

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v21, v22

    .end local v22    # "vivoServerMapFile":Ljava/io/File;
    .restart local v21    # "vivoServerMapFile":Ljava/io/File;
    goto :goto_5

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .end local v21    # "vivoServerMapFile":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "isr":Ljava/io/InputStreamReader;
    .restart local v22    # "vivoServerMapFile":Ljava/io/File;
    :catch_8
    move-exception v7

    move-object v12, v13

    .end local v13    # "isr":Ljava/io/InputStreamReader;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v21, v22

    .end local v22    # "vivoServerMapFile":Ljava/io/File;
    .restart local v21    # "vivoServerMapFile":Ljava/io/File;
    goto :goto_5
.end method
