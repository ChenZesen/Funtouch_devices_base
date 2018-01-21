.class public Lcom/vivo/services/motion/ProximityThresholdCal;
.super Ljava/lang/Object;
.source "ProximityThresholdCal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/ProximityThresholdCal$1;,
        Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;
    }
.end annotation


# static fields
.field private static PS_BASE_VALUE_PATH:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

.field private static mProximityCloseThreshold:I

.field private static mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

.field private static mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

.field private static mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

.field private static mProximityParaBase:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    .line 21
    sput-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    .line 22
    sput-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    .line 23
    sput-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    .line 24
    sput v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    .line 25
    sput v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityCloseThreshold:I

    .line 26
    const-string v0, "sys/devices/platform/als_ps/driver/ps_base_value"

    sput-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->PS_BASE_VALUE_PATH:Ljava/lang/String;

    .line 27
    const-string v0, "ProximityThresholdCal"

    sput-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/vivo/services/DeviceParaProvideService;

    invoke-direct {v0}, Lcom/vivo/services/DeviceParaProvideService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    .line 64
    :cond_0
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    invoke-direct {v0, p0, v2}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;-><init>(Lcom/vivo/services/motion/ProximityThresholdCal;Lcom/vivo/services/motion/ProximityThresholdCal$1;)V

    sput-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    .line 67
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsOneStepMinValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalDown:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$102(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 68
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsOneStepMaxValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalUp:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$202(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 69
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsOneStepCloseValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mClose:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$302(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 70
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsOneStepAwayValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mAway:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$402(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 72
    :cond_1
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    invoke-direct {v0, p0, v2}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;-><init>(Lcom/vivo/services/motion/ProximityThresholdCal;Lcom/vivo/services/motion/ProximityThresholdCal$1;)V

    sput-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    .line 75
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsSecStepMinValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalDown:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$102(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 76
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsSecStepMaxValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalUp:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$202(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 77
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsSecStepCloseValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mClose:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$302(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 78
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsSecStepAwayValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mAway:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$402(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 80
    :cond_2
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    if-nez v0, :cond_3

    .line 82
    new-instance v0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    invoke-direct {v0, p0, v2}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;-><init>(Lcom/vivo/services/motion/ProximityThresholdCal;Lcom/vivo/services/motion/ProximityThresholdCal$1;)V

    sput-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    .line 83
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsThrStepMinValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalDown:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$102(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 84
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsThrStepMaxValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalUp:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$202(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 85
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsThrStepCloseValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mClose:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$302(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 86
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    sget-object v1, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v1}, Lcom/vivo/services/DeviceParaProvideService;->getPsThrStepAwayValue()I

    move-result v1

    # setter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mAway:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$402(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I

    .line 88
    :cond_3
    sget v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    if-gez v0, :cond_4

    .line 90
    invoke-direct {p0}, Lcom/vivo/services/motion/ProximityThresholdCal;->readPsBaseValueFromFile()Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    sget-object v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v0}, Lcom/vivo/services/DeviceParaProvideService;->getPsBaseValue()I

    move-result v0

    sput v0, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    .line 95
    :cond_4
    return-void
.end method

.method private readPsBaseValueFromFile()Z
    .locals 10

    .prologue
    .line 30
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/vivo/services/motion/ProximityThresholdCal;->PS_BASE_VALUE_PATH:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 32
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 35
    .local v5, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    .line 40
    sget-object v6, Lcom/vivo/services/motion/ProximityThresholdCal;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readPsBaseValueFromFile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    const/4 v6, 0x1

    .line 48
    if-eqz v4, :cond_0

    .line 50
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 56
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return v6

    .line 51
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e1":Ljava/io/IOException;
    sget-object v7, Lcom/vivo/services/motion/ProximityThresholdCal;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the readFile is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/vivo/services/motion/ProximityThresholdCal;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reader.readLine():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    if-eqz v4, :cond_3

    .line 50
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, v4

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 51
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 52
    .restart local v1    # "e1":Ljava/io/IOException;
    sget-object v6, Lcom/vivo/services/motion/ProximityThresholdCal;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFile is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 53
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    sget-object v6, Lcom/vivo/services/motion/ProximityThresholdCal;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFile is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 48
    if-eqz v3, :cond_1

    .line 50
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 51
    :catch_4
    move-exception v1

    .line 52
    .restart local v1    # "e1":Ljava/io/IOException;
    sget-object v6, Lcom/vivo/services/motion/ProximityThresholdCal;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFile is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 48
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_2

    .line 50
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 53
    :cond_2
    :goto_5
    throw v6

    .line 51
    :catch_5
    move-exception v1

    .line 52
    .restart local v1    # "e1":Ljava/io/IOException;
    sget-object v7, Lcom/vivo/services/motion/ProximityThresholdCal;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the readFile is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 48
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 45
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method


# virtual methods
.method public GetProximityCloseThreshold()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    .line 98
    const/high16 v1, -0x40800000    # -1.0f

    .local v1, "temCloseValue":F
    const/high16 v0, -0x40800000    # -1.0f

    .line 99
    .local v0, "temAwayValue":F
    sget v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityCloseThreshold:I

    if-gez v2, :cond_1

    .line 101
    sget v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    sget-object v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalDown:I
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$100(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v3

    if-le v2, v3, :cond_2

    sget v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    sget-object v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalUp:I
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$200(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 103
    sget-object v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mClose:I
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$300(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 104
    sget-object v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara1:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mAway:I
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$400(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    int-to-float v3, v3

    mul-float v0, v2, v3

    .line 116
    :cond_0
    :goto_0
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_1

    cmpl-float v2, v0, v5

    if-ltz v2, :cond_1

    .line 118
    sub-float v2, v1, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityCloseThreshold:I

    .line 121
    :cond_1
    sget v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityCloseThreshold:I

    return v2

    .line 106
    :cond_2
    sget v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    sget-object v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalDown:I
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$100(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v3

    if-le v2, v3, :cond_3

    sget v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    sget-object v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalUp:I
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$200(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 108
    sget-object v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mClose:I
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$300(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 109
    sget-object v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara2:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mAway:I
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$400(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    int-to-float v3, v3

    mul-float v0, v2, v3

    goto :goto_0

    .line 111
    :cond_3
    sget v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    sget-object v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalDown:I
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$100(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v3

    if-le v2, v3, :cond_0

    sget v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    sget-object v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalUp:I
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$200(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 113
    sget-object v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mClose:I
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$300(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 114
    sget-object v2, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityPara3:Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    # getter for: Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mAway:I
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->access$400(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget v3, Lcom/vivo/services/motion/ProximityThresholdCal;->mProximityParaBase:I

    int-to-float v3, v3

    mul-float v0, v2, v3

    goto :goto_0
.end method
