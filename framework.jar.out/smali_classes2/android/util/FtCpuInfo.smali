.class public Landroid/util/FtCpuInfo;
.super Ljava/lang/Object;
.source "FtCpuInfo.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final CPU_FREQ_PATH:Ljava/lang/String; = "/sys/devices/soc1/cpu_freq"

.field private static final CPU_NUMBER_PATH:Ljava/lang/String; = "/sys/devices/soc1/core_num"

.field private static final CPU_TYPE_PATH:Ljava/lang/String; = "/sys/devices/soc1/cpu_type"

.field private static final DELAULT_INVALID_VALUE_INT:I = 0x0

.field private static final DELAULT_INVALID_VALUE_LONG:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "FtCpuInfo"

.field private static mCpuNumber:I

.field private static mCpuType:J

.field private static mMaxCpuRate:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    const/4 v0, 0x0

    sput v0, Landroid/util/FtCpuInfo;->mCpuNumber:I

    .line 28
    sput-wide v2, Landroid/util/FtCpuInfo;->mMaxCpuRate:J

    .line 29
    sput-wide v2, Landroid/util/FtCpuInfo;->mCpuType:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCPUCoreNumber()I
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Landroid/util/FtCpuInfo;->init()V

    .line 96
    sget v0, Landroid/util/FtCpuInfo;->mCpuNumber:I

    return v0
.end method

.method public static getCpuModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {}, Landroid/util/FtCpuInfo;->init()V

    .line 81
    const v1, 0x30e0136

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "cpuStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/util/FtCpuInfo;->mCpuType:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMaxCpuRate()J
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Landroid/util/FtCpuInfo;->init()V

    .line 89
    sget-wide v0, Landroid/util/FtCpuInfo;->mMaxCpuRate:J

    return-wide v0
.end method

.method private static init()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 37
    sget v4, Landroid/util/FtCpuInfo;->mCpuNumber:I

    if-eqz v4, :cond_0

    sget-wide v4, Landroid/util/FtCpuInfo;->mMaxCpuRate:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    sget-wide v4, Landroid/util/FtCpuInfo;->mCpuType:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 76
    .local v0, "cpuFreq":Ljava/lang/String;
    :goto_0
    return-void

    .line 45
    .end local v0    # "cpuFreq":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v4, "/sys/devices/soc1/cpu_freq"

    invoke-static {v4}, Landroid/util/FtCpuInfo;->readFileFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .restart local v0    # "cpuFreq":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 48
    const-string v4, "FtCpuInfo"

    const-string v5, "init get cpuFreq fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Landroid/util/FtCpuInfo;->mMaxCpuRate:J

    .line 52
    const-string v4, "FtCpuInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMaxCpuRate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Landroid/util/FtCpuInfo;->mMaxCpuRate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v4, "/sys/devices/soc1/cpu_type"

    invoke-static {v4}, Landroid/util/FtCpuInfo;->readFileFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "cpuType":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 57
    const-string v4, "FtCpuInfo"

    const-string v5, "init get cpuType fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Landroid/util/FtCpuInfo;->mCpuType:J

    .line 61
    const-string v4, "FtCpuInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCpuType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Landroid/util/FtCpuInfo;->mCpuType:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v4, "/sys/devices/soc1/core_num"

    invoke-static {v4}, Landroid/util/FtCpuInfo;->readFileFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "cpuNumber":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 66
    const/16 v4, 0x8

    sput v4, Landroid/util/FtCpuInfo;->mCpuNumber:I

    .line 67
    const-string v4, "FtCpuInfo"

    const-string v5, "init get cpuNumber fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Landroid/util/FtCpuInfo;->mCpuNumber:I

    .line 71
    const-string v4, "FtCpuInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCpuNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/util/FtCpuInfo;->mCpuNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static readFileFirstLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    const-string v5, "FtCpuInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v4, 0x0

    .line 125
    :cond_0
    :goto_0
    return-object v4

    .line 107
    :cond_1
    const/4 v4, 0x0

    .line 108
    .local v4, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 110
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    if-eqz v1, :cond_3

    .line 119
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 122
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 120
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 122
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 113
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 114
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    if-eqz v0, :cond_0

    .line 119
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 120
    :catch_2
    move-exception v2

    .line 121
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v0, :cond_2

    .line 119
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 122
    :cond_2
    :goto_3
    throw v5

    .line 120
    :catch_3
    move-exception v2

    .line 121
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 116
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 113
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0
.end method
