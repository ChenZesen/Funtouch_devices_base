.class public Lcom/vivo/common/provider/NumberLocalQuery;
.super Ljava/lang/Object;
.source "NumberLocalQuery.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final PREFIX:[Ljava/lang/String;

.field private static final PREFIX_CHINA:[Ljava/lang/String;

.field private static final ROUTE:Z

.field private static final TAG:Ljava/lang/String; = "NumberLocalQuery"

.field private static fixed_names:[[B

.field private static fixed_nums:[I

.field private static mobile_names:[[B

.field private static prefix_nums:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static resource:Ljava/lang/String;

.field private static sInstance:Lcom/vivo/common/provider/NumberLocalQuery;

.field private static special_names:[[B

.field private static special_nums:[I

.field private static total_length:I

.field static version:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFileIn:Ljava/io/InputStream;

.field private pkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "17951"

    aput-object v2, v0, v4

    const-string v2, "12593"

    aput-object v2, v0, v5

    const-string v2, "17911"

    aput-object v2, v0, v6

    const-string v2, "10193"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "12520070"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "12520026"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "12520"

    aput-object v3, v0, v2

    sput-object v0, Lcom/vivo/common/provider/NumberLocalQuery;->PREFIX:[Ljava/lang/String;

    .line 34
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "0086"

    aput-object v2, v0, v4

    const-string v2, "86"

    aput-object v2, v0, v5

    const-string v2, "+86"

    aput-object v2, v0, v6

    sput-object v0, Lcom/vivo/common/provider/NumberLocalQuery;->PREFIX_CHINA:[Ljava/lang/String;

    .line 42
    const-string v0, "yes"

    const-string v2, "persist.sys.log.ctrl"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    .line 45
    sput-object v1, Lcom/vivo/common/provider/NumberLocalQuery;->special_nums:[I

    move-object v0, v1

    .line 46
    nop

    nop

    sput-object v0, Lcom/vivo/common/provider/NumberLocalQuery;->special_names:[[B

    .line 47
    sput-object v1, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_nums:[I

    move-object v0, v1

    .line 48
    nop

    nop

    sput-object v0, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_names:[[B

    move-object v0, v1

    .line 49
    nop

    nop

    sput-object v0, Lcom/vivo/common/provider/NumberLocalQuery;->mobile_names:[[B

    .line 51
    sput-object v1, Lcom/vivo/common/provider/NumberLocalQuery;->version:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/vivo/common/provider/NumberLocalQuery;->resource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mContext:Landroid/content/Context;

    .line 53
    iput-object v1, p0, Lcom/vivo/common/provider/NumberLocalQuery;->pkg:Ljava/lang/String;

    .line 738
    new-instance v1, Lcom/vivo/common/provider/NumberLocalQuery$1;

    invoke-direct {v1, p0}, Lcom/vivo/common/provider/NumberLocalQuery$1;-><init>(Lcom/vivo/common/provider/NumberLocalQuery;)V

    iput-object v1, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 60
    iput-object v0, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mContext:Landroid/content/Context;

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/common/provider/NumberLocalQuery;->pkg:Ljava/lang/String;

    .line 65
    const-string v1, "NumberLocalQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init pkg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/provider/NumberLocalQuery;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0}, Lcom/vivo/common/provider/NumberLocalQuery;->prepareAttributionData()V

    .line 67
    iget-object v1, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/vivo/common/provider/NumberLocalQuery;->registerReceiver(Landroid/content/Context;)V

    .line 68
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/common/provider/NumberLocalQuery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/provider/NumberLocalQuery;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/common/provider/NumberLocalQuery;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/provider/NumberLocalQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/provider/NumberLocalQuery;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vivo/common/provider/NumberLocalQuery;->prepareAttributionData()V

    return-void
.end method

.method private checkFileIntegrity(Ljava/io/File;)Z
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 782
    const/4 v3, 0x0

    .line 784
    .local v3, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_0
    const-string v0, "$$$$"

    .line 785
    .local v0, "END_FLAG":Ljava/lang/String;
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v4, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .local v4, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x5

    sub-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 787
    const/4 v7, 0x5

    new-array v1, v7, [B

    .line 788
    .local v1, "bytes":[B
    invoke-virtual {v4, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 789
    if-eqz v1, :cond_0

    array-length v7, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v7, :cond_3

    .line 800
    :cond_0
    if-eqz v4, :cond_1

    .line 802
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v3, v4

    .line 808
    .end local v0    # "END_FLAG":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v4    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_1
    return v6

    .line 803
    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "END_FLAG":Ljava/lang/String;
    .restart local v1    # "bytes":[B
    .restart local v4    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .line 804
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 792
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .line 793
    .local v5, "value":Ljava/lang/String;
    const-string v7, "NumberLocalQuery"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file end value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v7

    if-eqz v7, :cond_5

    .line 795
    const/4 v6, 0x1

    .line 800
    if-eqz v4, :cond_4

    .line 802
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_2
    move-object v3, v4

    .line 805
    .end local v4    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 803
    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .line 804
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 800
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    if-eqz v4, :cond_7

    .line 802
    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v3, v4

    .line 805
    .end local v4    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 803
    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .line 804
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 805
    .end local v4    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 797
    .end local v0    # "END_FLAG":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "value":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 798
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 800
    if-eqz v3, :cond_2

    .line 802
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 803
    :catch_4
    move-exception v2

    .line 804
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 800
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_6

    .line 802
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 805
    :cond_6
    :goto_5
    throw v6

    .line 803
    :catch_5
    move-exception v2

    .line 804
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 800
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "END_FLAG":Ljava/lang/String;
    .restart local v4    # "randomFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 797
    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "bytes":[B
    .restart local v4    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_7
    move-object v3, v4

    .end local v4    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method private copyFileThroughChannel(Ljava/io/File;Ljava/io/File;)Z
    .locals 20
    .param p1, "source"    # Ljava/io/File;
    .param p2, "target"    # Ljava/io/File;

    .prologue
    .line 662
    invoke-direct/range {p0 .. p1}, Lcom/vivo/common/provider/NumberLocalQuery;->checkFileIntegrity(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 663
    const-string v4, "NumberLocalQuery"

    const-string v5, "check file checkFileIntegrity failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 665
    const/4 v4, 0x0

    .line 727
    :cond_0
    :goto_0
    return v4

    .line 667
    :cond_1
    const-string v4, "NumberLocalQuery"

    const-string v5, "copy..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/high16 v12, 0x200000

    .line 669
    .local v12, "length":I
    const-wide/16 v18, 0x0

    .line 670
    .local v18, "totalLength":J
    const-wide/16 v16, 0x0

    .line 671
    .local v16, "sourceLength":J
    const/4 v10, 0x0

    .line 672
    .local v10, "in":Ljava/io/FileInputStream;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 673
    const/4 v13, 0x0

    .line 674
    .local v13, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 675
    .local v3, "inChannel":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 677
    .local v8, "outChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 678
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 679
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    .line 680
    .local v2, "cmds":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "sh"

    aput-object v5, v2, v4

    .line 681
    const/4 v4, 0x1

    const-string v5, "-c"

    aput-object v5, v2, v4

    .line 682
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    .line 683
    .local v15, "rt":Ljava/lang/Runtime;
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 777 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 684
    invoke-virtual {v15, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 686
    .end local v2    # "cmds":[Ljava/lang/String;
    .end local v15    # "rt":Ljava/lang/Runtime;
    :cond_2
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    .end local v10    # "in":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 688
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .local v14, "out":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 689
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 691
    :goto_1
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 703
    cmp-long v4, v18, v16

    if-nez v4, :cond_d

    const/4 v4, 0x1

    .line 710
    :goto_2
    if-eqz v3, :cond_3

    .line 711
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 713
    :cond_3
    if-eqz v8, :cond_4

    .line 714
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 716
    :cond_4
    if-eqz v11, :cond_5

    .line 717
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 719
    :cond_5
    if-eqz v14, :cond_0

    .line 720
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 722
    :catch_0
    move-exception v9

    .line 723
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 694
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, v12

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 695
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v12, v4

    .line 697
    :cond_7
    sget-boolean v4, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v4, :cond_8

    .line 698
    const-string v4, "NumberLocalQuery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_8
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    int-to-long v6, v12

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v4

    add-long v18, v18, v4

    .line 701
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    int-to-long v6, v12

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_1

    .line 704
    :catch_1
    move-exception v9

    move-object v13, v14

    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 705
    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    const-string v4, "NumberLocalQuery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copy source "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 710
    if-eqz v3, :cond_9

    .line 711
    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 713
    :cond_9
    if-eqz v8, :cond_a

    .line 714
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 716
    :cond_a
    if-eqz v10, :cond_b

    .line 717
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 719
    :cond_b
    if-eqz v13, :cond_c

    .line 720
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 726
    :cond_c
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 727
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 703
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 722
    .end local v11    # "in":Ljava/io/FileInputStream;
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    .line 723
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 709
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 710
    :goto_5
    if-eqz v3, :cond_e

    .line 711
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 713
    :cond_e
    if-eqz v8, :cond_f

    .line 714
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 716
    :cond_f
    if-eqz v10, :cond_10

    .line 717
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 719
    :cond_10
    if-eqz v13, :cond_11

    .line 720
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 724
    :cond_11
    :goto_6
    throw v4

    .line 722
    :catch_3
    move-exception v9

    .line 723
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 709
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v10    # "in":Ljava/io/FileInputStream;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v13, v14

    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 704
    :catch_4
    move-exception v9

    goto :goto_3

    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catch_5
    move-exception v9

    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private deInitData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v1, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iput-object v2, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    iput-object v2, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/common/provider/NumberLocalQuery;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    const-class v1, Lcom/vivo/common/provider/NumberLocalQuery;

    monitor-enter v1

    .line 190
    :try_start_0
    sget-object v0, Lcom/vivo/common/provider/NumberLocalQuery;->sInstance:Lcom/vivo/common/provider/NumberLocalQuery;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/vivo/common/provider/NumberLocalQuery;->sInstance:Lcom/vivo/common/provider/NumberLocalQuery;

    monitor-exit v1

    .line 195
    :goto_0
    return-object v0

    .line 194
    :cond_0
    new-instance v0, Lcom/vivo/common/provider/NumberLocalQuery;

    invoke-direct {v0, p0}, Lcom/vivo/common/provider/NumberLocalQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/common/provider/NumberLocalQuery;->sInstance:Lcom/vivo/common/provider/NumberLocalQuery;

    .line 195
    sget-object v0, Lcom/vivo/common/provider/NumberLocalQuery;->sInstance:Lcom/vivo/common/provider/NumberLocalQuery;

    monitor-exit v1

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getQueryNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 277
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_0

    .line 278
    const-string v14, "NumberLocalQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "begin checking number --> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/vivo/common/provider/NumberLocalQuery;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 281
    const/4 v7, 0x0

    .line 282
    .local v7, "i":I
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-ge v14, v15, :cond_3

    .line 283
    :cond_1
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_2

    .line 284
    const-string v14, "NumberLocalQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "return null, number = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_2
    const/4 v14, 0x0

    .line 496
    :goto_0
    return-object v14

    .line 289
    :cond_3
    const/4 v2, 0x0

    .line 290
    .local v2, "chinaPrefix":Z
    const/4 v7, 0x0

    :goto_1
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->PREFIX:[Ljava/lang/String;

    array-length v14, v14

    if-ge v7, v14, :cond_4

    .line 291
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->PREFIX:[Ljava/lang/String;

    aget-object v14, v14, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 292
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->PREFIX:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 299
    :cond_4
    const-string v14, "true"

    const-string v15, "gsm.operator.isroaming"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 300
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_5

    .line 301
    const-string v14, "NumberLocalQuery"

    const-string v15, "sim1 roaming, return null..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_5
    const/4 v14, 0x0

    goto :goto_0

    .line 290
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 304
    :cond_7
    const-string v14, "true"

    const-string v15, "gsm.operator.isroaming.2"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 305
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_8

    .line 306
    const-string v14, "NumberLocalQuery"

    const-string v15, "sim2 roaming, return null..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_8
    const/4 v14, 0x0

    goto :goto_0

    .line 310
    :cond_9
    const-string v14, "00852"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "+852"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 311
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x30e0152

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 316
    :cond_b
    const-string v14, "00"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "0086"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 317
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 322
    :cond_c
    const/4 v7, 0x0

    :goto_2
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->PREFIX_CHINA:[Ljava/lang/String;

    array-length v14, v14

    if-ge v7, v14, :cond_e

    .line 323
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->PREFIX_CHINA:[Ljava/lang/String;

    aget-object v14, v14, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 324
    const/4 v2, 0x1

    .line 325
    const-string v14, "86"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 326
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x8

    if-gt v14, v15, :cond_d

    .line 327
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 330
    :cond_d
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->PREFIX_CHINA:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 337
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x6

    if-ge v14, v15, :cond_15

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 338
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_f

    .line 339
    const-string v14, "NumberLocalQuery"

    const-string v15, "to special..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_f
    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 346
    .local v11, "localtionStr":Ljava/lang/String;
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->special_nums:[I

    if-eqz v14, :cond_12

    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->special_names:[[B

    if-eqz v14, :cond_12

    .line 347
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->special_nums:[I

    array-length v14, v14

    if-ge v10, v14, :cond_15

    .line 349
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->special_nums:[I

    aget v14, v14, v10

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 350
    .local v13, "special":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 351
    new-instance v14, Ljava/lang/String;

    sget-object v15, Lcom/vivo/common/provider/NumberLocalQuery;->special_names:[[B

    aget-object v15, v15, v10

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 322
    .end local v10    # "j":I
    .end local v11    # "localtionStr":Ljava/lang/String;
    .end local v13    # "special":Ljava/lang/String;
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 347
    .restart local v10    # "j":I
    .restart local v11    # "localtionStr":Ljava/lang/String;
    .restart local v13    # "special":Ljava/lang/String;
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 355
    .end local v10    # "j":I
    .end local v13    # "special":Ljava/lang/String;
    :cond_12
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->special_nums:[I

    if-nez v14, :cond_14

    .line 356
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_13

    .line 357
    const-string v14, "NumberLocalQuery"

    const-string v15, "special_nums == null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_13
    :goto_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 359
    :cond_14
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_13

    .line 360
    const-string v14, "NumberLocalQuery"

    const-string v15, "special_names == null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 367
    .end local v11    # "localtionStr":Ljava/lang/String;
    :cond_15
    const-string v14, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20

    const/4 v14, 0x1

    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 368
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_16

    .line 369
    const-string v14, "NumberLocalQuery"

    const-string v15, "to fixed..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_16
    const-string v14, "01"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_17

    const-string v14, "02"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_1a

    .line 371
    :cond_17
    const/4 v14, 0x1

    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 380
    :goto_5
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 382
    .local v6, "fixNumber":I
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_nums:[I

    if-eqz v14, :cond_18

    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_names:[[B

    if-nez v14, :cond_1d

    .line 383
    :cond_18
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_nums:[I

    if-nez v14, :cond_1c

    .line 384
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_19

    .line 385
    const-string v14, "NumberLocalQuery"

    const-string v15, "fixed_nums == null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_19
    :goto_6
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 373
    .end local v6    # "fixNumber":I
    :cond_1a
    const/4 v14, 0x1

    const/4 v15, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 374
    const/4 v14, 0x1

    const/4 v15, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 376
    :cond_1b
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 387
    .restart local v6    # "fixNumber":I
    :cond_1c
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_19

    .line 388
    const-string v14, "NumberLocalQuery"

    const-string v15, "fixed_names == null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 392
    :cond_1d
    const/4 v7, 0x0

    :goto_7
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_nums:[I

    array-length v14, v14

    if-ge v7, v14, :cond_1f

    .line 393
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_nums:[I

    aget v14, v14, v7

    if-ne v14, v6, :cond_1e

    .line 394
    new-instance v14, Ljava/lang/String;

    sget-object v15, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_names:[[B

    aget-object v15, v15, v7

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 392
    :cond_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 397
    :cond_1f
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 400
    .end local v6    # "fixNumber":I
    :cond_20
    const-string v14, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_32

    const/4 v14, 0x1

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_32

    .line 402
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_21

    .line 403
    const-string v14, "NumberLocalQuery"

    const-string v15, "to mobile..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_21
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x7

    if-lt v14, v15, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xb

    if-gt v14, v15, :cond_22

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_26

    .line 406
    :cond_22
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x7

    if-lt v14, v15, :cond_23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xb

    if-le v14, v15, :cond_25

    .line 407
    :cond_23
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_24

    .line 408
    const-string v14, "NumberLocalQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "return null, number.length = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_24
    :goto_8
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 409
    :cond_25
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_24

    .line 410
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_24

    .line 411
    const-string v14, "NumberLocalQuery"

    const-string v15, "!TextUtils.isDigitsOnly(number)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 416
    :cond_26
    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 417
    .local v12, "replace":Ljava/lang/String;
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->prefix_nums:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 418
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_27

    .line 419
    const-string v14, "NumberLocalQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "replace = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_27
    const-string v14, "null"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_28

    .line 421
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 424
    :cond_28
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x3

    const/16 v16, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v8, v14

    .line 431
    .local v8, "index":J
    const/4 v14, 0x4

    new-array v4, v14, [B

    .line 432
    .local v4, "cityIndexByte":[B
    const/4 v3, -0x1

    .line 435
    .local v3, "cityIndex":I
    :try_start_0
    const-string v14, "raw"

    sget-object v15, Lcom/vivo/common/provider/NumberLocalQuery;->resource:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 436
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    if-nez v14, :cond_29

    .line 437
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x3070003

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    .line 439
    :cond_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->reset()V

    .line 448
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    sget v15, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x4

    mul-long v18, v18, v8

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v14, v4, v15, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_2a
    :goto_a
    const/4 v14, 0x2

    aget-byte v14, v4, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    const/4 v15, 0x1

    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    const/4 v15, 0x0

    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    add-int/lit8 v3, v14, -0x1

    .line 458
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_2b

    .line 459
    const-string v14, "NumberLocalQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "number = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", index = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", cityIndex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_2b
    if-ltz v3, :cond_2c

    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->mobile_names:[[B

    array-length v14, v14

    if-le v3, v14, :cond_30

    .line 462
    :cond_2c
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_2d

    .line 463
    const-string v14, "NumberLocalQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "return null, cityIndex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_2d
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 441
    :cond_2e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    if-eqz v14, :cond_2f

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 443
    :cond_2f
    new-instance v14, Ljava/io/FileInputStream;

    new-instance v15, Ljava/io/File;

    const-string v16, "data/bbkcore/attribution/numberdb"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 450
    :catch_0
    move-exception v5

    .line 451
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 452
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_2a

    .line 453
    const-string v14, "NumberLocalQuery"

    const-string v15, "read mobile index from db failed!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 466
    .end local v5    # "e":Ljava/io/IOException;
    :cond_30
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_31

    .line 467
    const-string v14, "NumberLocalQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "end checking, return "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    sget-object v17, Lcom/vivo/common/provider/NumberLocalQuery;->mobile_names:[[B

    aget-object v17, v17, v3

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_31
    new-instance v14, Ljava/lang/String;

    sget-object v15, Lcom/vivo/common/provider/NumberLocalQuery;->mobile_names:[[B

    aget-object v15, v15, v3

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 469
    .end local v3    # "cityIndex":I
    .end local v4    # "cityIndexByte":[B
    .end local v8    # "index":J
    .end local v12    # "replace":Ljava/lang/String;
    :cond_32
    if-eqz v2, :cond_3a

    .line 470
    sget-boolean v14, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v14, :cond_33

    .line 471
    const-string v14, "NumberLocalQuery"

    const-string v15, "to chinaPrefix..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_33
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xa

    if-ge v14, v15, :cond_34

    .line 473
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 475
    :cond_34
    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_39

    .line 476
    const-string v14, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_35

    const-string v14, "2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_36

    .line 477
    :cond_35
    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 486
    :goto_b
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 488
    .restart local v6    # "fixNumber":I
    const/4 v7, 0x0

    :goto_c
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_nums:[I

    array-length v14, v14

    if-ge v7, v14, :cond_39

    .line 489
    sget-object v14, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_nums:[I

    aget v14, v14, v7

    if-ne v14, v6, :cond_38

    .line 490
    new-instance v14, Ljava/lang/String;

    sget-object v15, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_names:[[B

    aget-object v15, v15, v7

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 479
    .end local v6    # "fixNumber":I
    :cond_36
    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_37

    .line 480
    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 482
    :cond_37
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 488
    .restart local v6    # "fixNumber":I
    :cond_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 494
    .end local v6    # "fixNumber":I
    :cond_39
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 496
    :cond_3a
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/vivo/common/provider/NumberLocalQuery;->chooseResource()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    .line 202
    iget-object v0, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "raw"

    sput-object v0, Lcom/vivo/common/provider/NumberLocalQuery;->resource:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    .line 206
    :cond_0
    return-void
.end method

.method private initDbData()V
    .locals 24

    .prologue
    .line 72
    const/16 v20, 0x0

    sput v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    .line 74
    const/16 v20, 0xa

    :try_start_0
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 75
    .local v18, "temp":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0xa

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 76
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/vivo/common/provider/NumberLocalQuery;->version:Ljava/lang/String;

    .line 77
    sget v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    add-int/lit8 v20, v20, 0xa

    sput v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    .line 78
    sget-boolean v20, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v20, :cond_0

    .line 79
    const-string v20, "NumberLocalQuery"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->pkg:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " || use resource : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/vivo/common/provider/NumberLocalQuery;->resource:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", version = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/vivo/common/provider/NumberLocalQuery;->version:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 82
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v19, v20, v21

    .line 84
    .local v19, "total_length_prefix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 85
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v12, v20, v21

    .line 87
    .local v12, "prefix_count":I
    sget v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    add-int v20, v20, v19

    sput v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    .line 88
    sget-boolean v20, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v20, :cond_1

    .line 89
    const-string v20, "NumberLocalQuery"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "length_prefix = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", count_prefix = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    sput-object v20, Lcom/vivo/common/provider/NumberLocalQuery;->prefix_nums:Ljava/util/HashMap;

    .line 92
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_2

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 94
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v17, v20, v21

    .line 95
    .local v17, "t":I
    sget-object v20, Lcom/vivo/common/provider/NumberLocalQuery;->prefix_nums:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 98
    .end local v17    # "t":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 99
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v16, v20, v21

    .line 101
    .local v16, "special_total_length_num":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 102
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v14, v20, v21

    .line 104
    .local v14, "special_count_num":I
    sget v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    add-int v20, v20, v16

    sput v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    .line 105
    sget-boolean v20, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v20, :cond_3

    .line 106
    const-string v20, "NumberLocalQuery"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "special_length_num = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", special_count_num = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_3
    new-array v0, v14, [I

    move-object/from16 v20, v0

    sput-object v20, Lcom/vivo/common/provider/NumberLocalQuery;->special_nums:[I

    .line 109
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_4

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 111
    sget-object v20, Lcom/vivo/common/provider/NumberLocalQuery;->special_nums:[I

    const/16 v21, 0x2

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x10

    const/16 v22, 0x1

    aget-byte v22, v18, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x8

    or-int v21, v21, v22

    const/16 v22, 0x0

    aget-byte v22, v18, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    or-int v21, v21, v22

    aput v21, v20, v9

    .line 109
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 114
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 115
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v15, v20, v21

    .line 117
    .local v15, "special_total_length_name":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 118
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v13, v20, v21

    .line 120
    .local v13, "special_count_name":I
    sget v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    add-int v20, v20, v15

    sput v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    .line 121
    sget-boolean v20, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v20, :cond_5

    .line 122
    const-string v20, "NumberLocalQuery"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "special_length_name = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", special_count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_5
    const/16 v20, 0x3c

    move/from16 v0, v20

    filled-new-array {v13, v0}, [I

    move-result-object v20

    sget-object v21, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[B

    sput-object v20, Lcom/vivo/common/provider/NumberLocalQuery;->special_names:[[B

    .line 125
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_6

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    sget-object v21, Lcom/vivo/common/provider/NumberLocalQuery;->special_names:[[B

    aget-object v21, v21, v9

    const/16 v22, 0x0

    const/16 v23, 0x3c

    invoke-virtual/range {v20 .. v23}, Ljava/io/InputStream;->read([BII)I

    .line 125
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 129
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 130
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v8, v20, v21

    .line 132
    .local v8, "fixed_total_length_num":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 133
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v6, v20, v21

    .line 135
    .local v6, "fixed_count_num":I
    sget v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    add-int v20, v20, v8

    sput v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    .line 136
    sget-boolean v20, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v20, :cond_7

    .line 137
    const-string v20, "NumberLocalQuery"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "fixed_length_num = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", fixed_count_num = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_7
    new-array v0, v6, [I

    move-object/from16 v20, v0

    sput-object v20, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_nums:[I

    .line 140
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_8

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 142
    sget-object v20, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_nums:[I

    const/16 v21, 0x2

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x10

    const/16 v22, 0x1

    aget-byte v22, v18, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x8

    or-int v21, v21, v22

    const/16 v22, 0x0

    aget-byte v22, v18, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    or-int v21, v21, v22

    aput v21, v20, v9

    .line 140
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 145
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 146
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v7, v20, v21

    .line 148
    .local v7, "fixed_total_length_name":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 149
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v5, v20, v21

    .line 151
    .local v5, "fixed_count_name":I
    sget v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    add-int v20, v20, v7

    sput v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    .line 152
    sget-boolean v20, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v20, :cond_9

    .line 153
    const-string v20, "NumberLocalQuery"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "fixed_length_name = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", fixed_count_name = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_9
    const/16 v20, 0x3c

    move/from16 v0, v20

    filled-new-array {v5, v0}, [I

    move-result-object v20

    sget-object v21, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[B

    sput-object v20, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_names:[[B

    .line 156
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v5, :cond_a

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    sget-object v21, Lcom/vivo/common/provider/NumberLocalQuery;->fixed_names:[[B

    aget-object v21, v21, v9

    const/16 v22, 0x0

    const/16 v23, 0x3c

    invoke-virtual/range {v20 .. v23}, Ljava/io/InputStream;->read([BII)I

    .line 156
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 160
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 161
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v11, v20, v21

    .line 163
    .local v11, "mobile_total_length_name":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 164
    const/16 v20, 0x2

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    const/16 v21, 0x1

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v10, v20, v21

    .line 166
    .local v10, "mobile_count_name":I
    sget v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    add-int v20, v20, v11

    sput v20, Lcom/vivo/common/provider/NumberLocalQuery;->total_length:I

    .line 167
    sget-boolean v20, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v20, :cond_b

    .line 168
    const-string v20, "NumberLocalQuery"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mobile_length_name = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mobile_count_name = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_b
    const/16 v20, 0x3c

    move/from16 v0, v20

    filled-new-array {v10, v0}, [I

    move-result-object v20

    sget-object v21, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[B

    sput-object v20, Lcom/vivo/common/provider/NumberLocalQuery;->mobile_names:[[B

    .line 171
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v10, :cond_c

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/NumberLocalQuery;->mFileIn:Ljava/io/InputStream;

    move-object/from16 v20, v0

    sget-object v21, Lcom/vivo/common/provider/NumberLocalQuery;->mobile_names:[[B

    aget-object v21, v21, v9

    const/16 v22, 0x0

    const/16 v23, 0x3c

    invoke-virtual/range {v20 .. v23}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 175
    .end local v5    # "fixed_count_name":I
    .end local v6    # "fixed_count_num":I
    .end local v7    # "fixed_total_length_name":I
    .end local v8    # "fixed_total_length_num":I
    .end local v9    # "i":I
    .end local v10    # "mobile_count_name":I
    .end local v11    # "mobile_total_length_name":I
    .end local v12    # "prefix_count":I
    .end local v13    # "special_count_name":I
    .end local v14    # "special_count_num":I
    .end local v15    # "special_total_length_name":I
    .end local v16    # "special_total_length_num":I
    .end local v18    # "temp":[B
    .end local v19    # "total_length_prefix":I
    :catch_0
    move-exception v4

    .line 177
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 179
    .end local v4    # "e":Ljava/io/IOException;
    :cond_c
    return-void
.end method

.method private isNonSeparator(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 519
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x77

    if-eq p1, v0, :cond_1

    const/16 v0, 0x70

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareAttributionData()V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/vivo/common/provider/NumberLocalQuery;->deInitData()V

    .line 734
    invoke-direct {p0}, Lcom/vivo/common/provider/NumberLocalQuery;->initData()V

    .line 735
    invoke-direct {p0}, Lcom/vivo/common/provider/NumberLocalQuery;->initDbData()V

    .line 736
    return-void
.end method

.method private stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    const/4 v4, 0x0

    .line 515
    :goto_0
    return-object v4

    .line 505
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 506
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 508
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 509
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 510
    .local v0, "c":C
    invoke-direct {p0, v0}, Lcom/vivo/common/provider/NumberLocalQuery;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 511
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 515
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public chooseResource()Ljava/io/InputStream;
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 526
    new-instance v2, Ljava/io/File;

    const-string v12, "data/bbkcore/attribution/numberdb"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v2, "dataFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v12, "data/bbkcore/attribution"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, "dataDir":Ljava/io/File;
    const/4 v3, 0x0

    .line 529
    .local v3, "dataStream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 530
    .local v8, "rawStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 531
    .local v6, "dataVersion":Ljava/lang/String;
    const/4 v0, 0x0

    .line 534
    .local v0, "SDVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_2

    .line 570
    :cond_0
    if-eqz v8, :cond_1

    .line 571
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    :cond_1
    :goto_0
    return-object v11

    .line 573
    :catch_0
    move-exception v7

    .line 574
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 538
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    .end local v3    # "dataStream":Ljava/io/FileInputStream;
    .local v4, "dataStream":Ljava/io/FileInputStream;
    const/16 v12, 0xa

    :try_start_3
    new-array v5, v12, [B

    .line 540
    .local v5, "dataTemp":[B
    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v4, v5, v12, v13}, Ljava/io/FileInputStream;->read([BII)I

    .line 541
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 543
    if-eqz v6, :cond_3

    invoke-virtual {p0, v6}, Lcom/vivo/common/provider/NumberLocalQuery;->isVersionAvailable(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 544
    :cond_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 570
    if-eqz v8, :cond_4

    .line 571
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_1
    move-object v3, v4

    .line 575
    .end local v4    # "dataStream":Ljava/io/FileInputStream;
    .restart local v3    # "dataStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 573
    .end local v3    # "dataStream":Ljava/io/FileInputStream;
    .restart local v4    # "dataStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    .line 574
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 548
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_5
    iget-object v12, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x3070003

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 550
    const/16 v12, 0xa

    new-array v10, v12, [B

    .line 551
    .local v10, "temp":[B
    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v8, v10, v12, v13}, Ljava/io/InputStream;->read([BII)I

    .line 552
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 553
    .local v9, "rawVersion":Ljava/lang/String;
    sget-boolean v12, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v12, :cond_6

    .line 554
    const-string v12, "NumberLocalQuery"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "rawVersion = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", dataVersion = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", dataStream = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 558
    invoke-virtual {v9, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-gtz v12, :cond_8

    .line 559
    const-string v12, "data"

    sput-object v12, Lcom/vivo/common/provider/NumberLocalQuery;->resource:Ljava/lang/String;

    .line 560
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 561
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 570
    .end local v4    # "dataStream":Ljava/io/FileInputStream;
    .restart local v3    # "dataStream":Ljava/io/FileInputStream;
    if-eqz v8, :cond_7

    .line 571
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_2
    move-object v11, v3

    .line 575
    goto/16 :goto_0

    .line 573
    :catch_2
    move-exception v7

    .line 574
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 570
    .end local v3    # "dataStream":Ljava/io/FileInputStream;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "dataStream":Ljava/io/FileInputStream;
    :cond_8
    if-eqz v8, :cond_9

    .line 571
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_9
    :goto_3
    move-object v3, v4

    .line 575
    .end local v4    # "dataStream":Ljava/io/FileInputStream;
    .restart local v3    # "dataStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 573
    .end local v3    # "dataStream":Ljava/io/FileInputStream;
    .restart local v4    # "dataStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    .line 574
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 565
    .end local v4    # "dataStream":Ljava/io/FileInputStream;
    .end local v5    # "dataTemp":[B
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "rawVersion":Ljava/lang/String;
    .end local v10    # "temp":[B
    .restart local v3    # "dataStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    .line 566
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 570
    if-eqz v8, :cond_1

    .line 571
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 573
    :catch_5
    move-exception v7

    .line 574
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 569
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 570
    :goto_5
    if-eqz v8, :cond_a

    .line 571
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 575
    :cond_a
    :goto_6
    throw v11

    .line 573
    :catch_6
    move-exception v7

    .line 574
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 569
    .end local v3    # "dataStream":Ljava/io/FileInputStream;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "dataStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "dataStream":Ljava/io/FileInputStream;
    .restart local v3    # "dataStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 565
    .end local v3    # "dataStream":Ljava/io/FileInputStream;
    .restart local v4    # "dataStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object v3, v4

    .end local v4    # "dataStream":Ljava/io/FileInputStream;
    .restart local v3    # "dataStream":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public finishQuery()V
    .locals 2

    .prologue
    .line 230
    sget-boolean v0, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "NumberLocalQuery"

    const-string v1, "finish Query"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/provider/NumberLocalQuery;->deInitData()V

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/vivo/common/provider/NumberLocalQuery;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isInternationalVersion()Z
    .locals 3

    .prologue
    .line 777
    const-string v0, "yes"

    const-string v1, "ro.vivo.product.overseas"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVersionAvailable(Ljava/lang/String;)Z
    .locals 11
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 753
    const/4 v5, 0x1

    .line 754
    .local v5, "result":Z
    if-nez p1, :cond_0

    .line 755
    const/4 v5, 0x0

    .line 756
    :cond_0
    const-string v8, "."

    const-string v9, "@"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 757
    .local v7, "ss":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 759
    .local v6, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 760
    .local v2, "i":I
    if-ltz v2, :cond_1

    const/16 v8, 0x9

    if-ge v8, v2, :cond_2

    .line 761
    :cond_1
    const/4 v5, 0x0

    .line 757
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 762
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 763
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 768
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "s":Ljava/lang/String;
    :cond_3
    sget-boolean v8, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v8, :cond_4

    .line 769
    const-string v8, "NumberLocalQuery"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "is version available ? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_4
    return v5
.end method

.method public queryCityNameByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 258
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vivo/common/provider/NumberLocalQuery;->isInternationalVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 272
    .end local v1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 263
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vivo/common/provider/NumberLocalQuery;->getQueryNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    :goto_1
    sget-boolean v3, Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z

    if-eqz v3, :cond_1

    .line 268
    const-string v3, "NumberLocalQuery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v1

    .line 272
    .end local v1    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 264
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "refresh.attr.data"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/vivo/common/provider/NumberLocalQuery;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    return-void
.end method

.method public replaceDataResourceWithDownload()V
    .locals 24

    .prologue
    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/vivo/common/provider/NumberLocalQuery;->deInitData()V

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 584
    .local v16, "start":J
    new-instance v10, Ljava/io/File;

    const-string v19, "data/bbkcore/attribution/numberdb"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .local v10, "dataFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string v19, "data/bbkcore/attribution"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    .local v9, "dataDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "attribution"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "numberdb2.bin"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    .local v4, "SDFile":Ljava/io/File;
    const/4 v11, 0x0

    .line 589
    .local v11, "dataStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 590
    .local v5, "SDStream":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 591
    .local v13, "dataVersion":Ljava/lang/String;
    const/4 v7, 0x0

    .line 592
    .local v7, "SDVersion":Ljava/lang/String;
    const/16 v19, 0xa

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 595
    .local v18, "temp":[B
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-nez v19, :cond_2

    .line 649
    if-eqz v11, :cond_0

    .line 650
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 652
    :cond_0
    if-eqz v5, :cond_1

    .line 653
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 659
    :cond_1
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v14

    .line 656
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 599
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    .line 600
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 601
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v8, v0, [Ljava/lang/String;

    .line 602
    .local v8, "cmds":[Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "sh"

    aput-object v20, v8, v19

    .line 603
    const/16 v19, 0x1

    const-string v20, "-c"

    aput-object v20, v8, v19

    .line 604
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    .line 605
    .local v15, "rt":Ljava/lang/Runtime;
    const/16 v19, 0x2

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "chmod 777 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v8, v19

    .line 606
    invoke-virtual {v15, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 609
    .end local v8    # "cmds":[Ljava/lang/String;
    .end local v15    # "rt":Ljava/lang/Runtime;
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_5

    .line 610
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/vivo/common/provider/NumberLocalQuery;->copyFileThroughChannel(Ljava/io/File;Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v19

    if-nez v19, :cond_10

    .line 649
    if-eqz v11, :cond_4

    .line 650
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 652
    :cond_4
    if-eqz v5, :cond_1

    .line 653
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 655
    :catch_1
    move-exception v14

    .line 656
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 614
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_4
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 615
    .end local v5    # "SDStream":Ljava/io/FileInputStream;
    .local v6, "SDStream":Ljava/io/FileInputStream;
    const/16 v19, 0x0

    const/16 v20, 0xa

    :try_start_5
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 616
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 618
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 619
    .end local v11    # "dataStream":Ljava/io/FileInputStream;
    .local v12, "dataStream":Ljava/io/FileInputStream;
    const/16 v19, 0x0

    const/16 v20, 0xa

    :try_start_6
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 620
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 621
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/vivo/common/provider/NumberLocalQuery;->isVersionAvailable(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vivo/common/provider/NumberLocalQuery;->isVersionAvailable(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 622
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/vivo/common/provider/NumberLocalQuery;->copyFileThroughChannel(Ljava/io/File;Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v19

    if-nez v19, :cond_8

    .line 649
    if-eqz v12, :cond_6

    .line 650
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 652
    :cond_6
    if-eqz v6, :cond_7

    .line 653
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_1
    move-object v5, v6

    .end local v6    # "SDStream":Ljava/io/FileInputStream;
    .restart local v5    # "SDStream":Ljava/io/FileInputStream;
    move-object v11, v12

    .line 657
    .end local v12    # "dataStream":Ljava/io/FileInputStream;
    .restart local v11    # "dataStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 655
    .end local v5    # "SDStream":Ljava/io/FileInputStream;
    .end local v11    # "dataStream":Ljava/io/FileInputStream;
    .restart local v6    # "SDStream":Ljava/io/FileInputStream;
    .restart local v12    # "dataStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v14

    .line 656
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 626
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_8
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 627
    .end local v12    # "dataStream":Ljava/io/FileInputStream;
    .restart local v11    # "dataStream":Ljava/io/FileInputStream;
    const/16 v19, 0x0

    const/16 v20, 0xa

    :try_start_9
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v0, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 628
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 630
    invoke-virtual {v13, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_c

    .line 631
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/vivo/common/provider/NumberLocalQuery;->copyFileThroughChannel(Ljava/io/File;Ljava/io/File;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v19

    if-nez v19, :cond_b

    .line 649
    if-eqz v11, :cond_9

    .line 650
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 652
    :cond_9
    if-eqz v6, :cond_a

    .line 653
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_a
    :goto_2
    move-object v5, v6

    .line 657
    .end local v6    # "SDStream":Ljava/io/FileInputStream;
    .restart local v5    # "SDStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 655
    .end local v5    # "SDStream":Ljava/io/FileInputStream;
    .restart local v6    # "SDStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v14

    .line 656
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 634
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_b
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 635
    .end local v11    # "dataStream":Ljava/io/FileInputStream;
    .restart local v12    # "dataStream":Ljava/io/FileInputStream;
    const/16 v19, 0x0

    const/16 v20, 0xa

    :try_start_c
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 636
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v13

    move-object v11, v12

    .line 638
    .end local v12    # "dataStream":Ljava/io/FileInputStream;
    .restart local v11    # "dataStream":Ljava/io/FileInputStream;
    :cond_c
    :try_start_d
    invoke-virtual {v13, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_f

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_f

    .line 640
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/vivo/common/provider/NumberLocalQuery;->copyFileThroughChannel(Ljava/io/File;Ljava/io/File;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v19

    if-nez v19, :cond_f

    .line 649
    if-eqz v11, :cond_d

    .line 650
    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 652
    :cond_d
    if-eqz v6, :cond_e

    .line 653
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    :cond_e
    :goto_3
    move-object v5, v6

    .line 657
    .end local v6    # "SDStream":Ljava/io/FileInputStream;
    .restart local v5    # "SDStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 655
    .end local v5    # "SDStream":Ljava/io/FileInputStream;
    .restart local v6    # "SDStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v14

    .line 656
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v14    # "e":Ljava/lang/Exception;
    :cond_f
    move-object v5, v6

    .line 649
    .end local v6    # "SDStream":Ljava/io/FileInputStream;
    .restart local v5    # "SDStream":Ljava/io/FileInputStream;
    :cond_10
    if-eqz v11, :cond_11

    .line 650
    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 652
    :cond_11
    if-eqz v5, :cond_1

    .line 653
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_0

    .line 655
    :catch_5
    move-exception v14

    .line 656
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 645
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v14

    .line 646
    .restart local v14    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_10
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 649
    if-eqz v11, :cond_12

    .line 650
    :try_start_11
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 652
    :cond_12
    if-eqz v5, :cond_1

    .line 653
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_0

    .line 655
    :catch_7
    move-exception v14

    .line 656
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 648
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    .line 649
    :goto_5
    if-eqz v11, :cond_13

    .line 650
    :try_start_12
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 652
    :cond_13
    if-eqz v5, :cond_14

    .line 653
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 657
    :cond_14
    :goto_6
    throw v19

    .line 655
    :catch_8
    move-exception v14

    .line 656
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 648
    .end local v5    # "SDStream":Ljava/io/FileInputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v6    # "SDStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v19

    move-object v5, v6

    .end local v6    # "SDStream":Ljava/io/FileInputStream;
    .restart local v5    # "SDStream":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v5    # "SDStream":Ljava/io/FileInputStream;
    .end local v11    # "dataStream":Ljava/io/FileInputStream;
    .restart local v6    # "SDStream":Ljava/io/FileInputStream;
    .restart local v12    # "dataStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v19

    move-object v5, v6

    .end local v6    # "SDStream":Ljava/io/FileInputStream;
    .restart local v5    # "SDStream":Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12    # "dataStream":Ljava/io/FileInputStream;
    .restart local v11    # "dataStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 645
    .end local v5    # "SDStream":Ljava/io/FileInputStream;
    .restart local v6    # "SDStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v14

    move-object v5, v6

    .end local v6    # "SDStream":Ljava/io/FileInputStream;
    .restart local v5    # "SDStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v5    # "SDStream":Ljava/io/FileInputStream;
    .end local v11    # "dataStream":Ljava/io/FileInputStream;
    .restart local v6    # "SDStream":Ljava/io/FileInputStream;
    .restart local v12    # "dataStream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v14

    move-object v5, v6

    .end local v6    # "SDStream":Ljava/io/FileInputStream;
    .restart local v5    # "SDStream":Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12    # "dataStream":Ljava/io/FileInputStream;
    .restart local v11    # "dataStream":Ljava/io/FileInputStream;
    goto :goto_4
.end method
