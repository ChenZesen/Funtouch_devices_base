.class public Landroid/util/FtFeature;
.super Ljava/lang/Object;
.source "FtFeature.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final CPU_MODE:Ljava/lang/String;

.field private static OTG_MODE_STATE_FILE_PATH:Ljava/lang/String; = null

.field private static final OTG_MODE_STATE_FILE_PATH_8937:Ljava/lang/String; = "/sys/bus/platform/drivers/msm_otg/78db000.usb/otg_mode"

.field private static final OTG_MODE_STATE_FILE_PATH_8953:Ljava/lang/String; = "/sys/bus/platform/drivers/msm-dwc3/7000000.ssusb/otg_mode"

.field private static final PATH_OTG_8939:Ljava/lang/String; = "/sys/bus/platform/drivers/msm_otg/78d9000.usb/host_mode"

.field private static final PATH_OTG_8953:Ljava/lang/String; = "/sys/bus/platform/drivers/msm-dwc3/7000000.ssusb/host_mode"

.field private static final PATH_OTG_8976:Ljava/lang/String; = "/sys/bus/platform/drivers/msm_otg/78db000.usb/host_mode"

.field private static final PATH_OTG_8996:Ljava/lang/String; = "/sys/bus/platform/drivers/msm-dwc3/6a00000.ssusb/host_mode"

.field private static PATH_OTG_MODE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FtFeature"

.field private static final VIGOUR_COLOR_MANAGER_MASK:I = 0x1

.field private static final VIGOUR_FEATURE_PRO:Ljava/lang/String; = "ro.vigour.feature"

.field private static final sVigourFeatureBit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    .line 33
    sput-object v0, Landroid/util/FtFeature;->OTG_MODE_STATE_FILE_PATH:Ljava/lang/String;

    .line 37
    const-string v0, "ro.vigour.feature"

    const-string v1, "0x00000000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/FtFeature;->sVigourFeatureBit:Ljava/lang/String;

    .line 41
    const-string v0, "ro.board.platform"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/FtFeature;->CPU_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOtgModeStateFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    sget-object v0, Landroid/util/FtFeature;->OTG_MODE_STATE_FILE_PATH:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Landroid/util/FtFeature;->CPU_MODE:Ljava/lang/String;

    const-string v1, "8953"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const-string v0, "/sys/bus/platform/drivers/msm-dwc3/7000000.ssusb/otg_mode"

    sput-object v0, Landroid/util/FtFeature;->OTG_MODE_STATE_FILE_PATH:Ljava/lang/String;

    .line 163
    :cond_0
    :goto_0
    sget-object v0, Landroid/util/FtFeature;->OTG_MODE_STATE_FILE_PATH:Ljava/lang/String;

    return-object v0

    .line 160
    :cond_1
    const-string v0, "/sys/bus/platform/drivers/msm_otg/78db000.usb/otg_mode"

    sput-object v0, Landroid/util/FtFeature;->OTG_MODE_STATE_FILE_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOtgModeSwitchFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Landroid/util/FtFeature;->CPU_MODE:Ljava/lang/String;

    const-string v1, "8953"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "/sys/bus/platform/drivers/msm-dwc3/7000000.ssusb/host_mode"

    sput-object v0, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    .line 147
    :cond_0
    :goto_0
    sget-object v0, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    return-object v0

    .line 144
    :cond_1
    const-string v0, "/sys/bus/platform/drivers/msm_otg/78db000.usb/host_mode"

    sput-object v0, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getOtgPath()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Landroid/util/FtFeature;->CPU_MODE:Ljava/lang/String;

    const-string v1, "8953"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "/sys/bus/platform/drivers/msm-dwc3/7000000.ssusb/host_mode"

    sput-object v0, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v0, "/sys/bus/platform/drivers/msm_otg/78db000.usb/host_mode"

    sput-object v0, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isColorManagerSupport()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-static {}, Landroid/util/FtFeature;->isVigourFeatureValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    :try_start_0
    sget-object v2, Landroid/util/FtFeature;->sVigourFeatureBit:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 182
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isOtgEnable()Z
    .locals 9

    .prologue
    .line 60
    invoke-static {}, Landroid/util/FtFeature;->getOtgPath()V

    .line 62
    new-instance v3, Ljava/io/File;

    sget-object v6, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 64
    const-string v6, "FtFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v5, 0x0

    .line 100
    :cond_0
    :goto_0
    return v5

    .line 68
    :cond_1
    const/4 v4, 0x0

    .line 69
    .local v4, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 71
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    if-eqz v1, :cond_5

    .line 80
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 87
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 88
    .local v5, "state":Z
    if-eqz v4, :cond_0

    .line 90
    const-string v6, "enabled"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 92
    const/4 v5, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "state":Z
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 83
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 74
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 75
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    if-eqz v0, :cond_2

    .line 80
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 81
    :catch_2
    move-exception v2

    .line 82
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_3

    .line 80
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 83
    :cond_3
    :goto_4
    throw v6

    .line 81
    :catch_3
    move-exception v2

    .line 82
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 96
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "state":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 77
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "state":Z
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 74
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static isVigourFeatureValid()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    sget-object v2, Landroid/util/FtFeature;->sVigourFeatureBit:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    sget-object v2, Landroid/util/FtFeature;->sVigourFeatureBit:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    sget-object v2, Landroid/util/FtFeature;->sVigourFeatureBit:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-ne v2, v3, :cond_0

    .line 170
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static setOtgEnable(Z)V
    .locals 7
    .param p0, "enable"    # Z

    .prologue
    .line 106
    invoke-static {}, Landroid/util/FtFeature;->getOtgPath()V

    .line 108
    new-instance v3, Ljava/io/File;

    sget-object v4, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    const-string v4, "FtFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/util/FtFeature;->PATH_OTG_MODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    .line 116
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    if-eqz p0, :cond_2

    :try_start_1
    const-string v4, "enabled"

    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 119
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    if-eqz v1, :cond_4

    .line 126
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 129
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 117
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_3
    const-string v4, "disabled"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 129
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 120
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 121
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    if-eqz v0, :cond_0

    .line 126
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 127
    :catch_2
    move-exception v2

    .line 128
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v0, :cond_3

    .line 126
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 129
    :cond_3
    :goto_4
    throw v4

    .line 127
    :catch_3
    move-exception v2

    .line 128
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 123
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 120
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :cond_4
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0
.end method
