.class public Lcom/vivo/common/autobrightness/BootBrightnessConfig;
.super Ljava/lang/Object;
.source "BootBrightnessConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BootBrightnessConfig"

.field private static final mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

.field public static final mInitialBrightness:I

.field public static final mInitialSettingBrightness:I

.field private static final model:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x7b

    const/16 v7, 0x81

    const/16 v6, 0x80

    const/16 v5, 0x75

    .line 11
    const-string v0, "ro.product.model.bbk"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->model:Ljava/lang/String;

    .line 14
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const/4 v1, 0x0

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1524"

    invoke-direct {v2, v3, v8}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1515"

    const/16 v4, 0x6c

    invoke-direct {v2, v3, v4}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1502"

    invoke-direct {v2, v3, v6}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1415"

    invoke-direct {v2, v3, v5}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1522"

    invoke-direct {v2, v3, v5}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1516"

    invoke-direct {v2, v3, v5}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1523"

    invoke-direct {v2, v3, v6}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1602"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1603"

    invoke-direct {v2, v3, v5}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1505"

    invoke-direct {v2, v3, v8}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "td1602"

    const/16 v4, 0x78

    invoke-direct {v2, v3, v4}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "td1603"

    invoke-direct {v2, v3, v5}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1510"

    const/16 v4, 0x73

    invoke-direct {v2, v3, v4}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1613"

    invoke-direct {v2, v3, v7}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1610"

    invoke-direct {v2, v3, v5}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1612"

    invoke-direct {v2, v3, v6}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1616"

    invoke-direct {v2, v3, v5}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1621"

    invoke-direct {v2, v3, v7}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "td1605"

    invoke-direct {v2, v3, v7}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1619"

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1617"

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    const-string v3, "pd1624"

    invoke-direct {v2, v3, v5}, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    .line 91
    invoke-static {}, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->InitialSettingBrightness()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mInitialSettingBrightness:I

    .line 92
    invoke-static {}, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->InitialBrightness()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mInitialBrightness:I

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static InitialBrightness()I
    .locals 5

    .prologue
    .line 40
    const/16 v1, 0xff

    .line 41
    .local v1, "mBootBrightness":I
    sget-object v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    if-nez v2, :cond_0

    .line 42
    const-string v2, "BootBrightnessConfig"

    const-string v3, "[InitialBrightness]:mConfigs is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return v1

    .line 45
    :cond_0
    sget-object v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 47
    sget-object v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->model:Ljava/lang/String;

    sget-object v3, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    sget-object v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;->Brightness:I

    .line 49
    const-string v2, "BootBrightnessConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[InitialBrightness]:model matching, set backlight to BootBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_2
    const-string v2, "BootBrightnessConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[InitialBrightness]:model doesn\'t match, set backlight to default BootBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_3
    const-string v2, "BootBrightnessConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[InitialBrightness]:set backlight to default Brightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static InitialSettingBrightness()I
    .locals 5

    .prologue
    .line 62
    const/4 v1, -0x1

    .line 63
    .local v1, "mBootBrightness":I
    sget-object v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    if-nez v2, :cond_0

    .line 64
    const-string v2, "BootBrightnessConfig"

    const-string v3, "[InitialSettingBrightness]:mConfigs is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return v1

    .line 67
    :cond_0
    sget-object v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 69
    sget-object v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->model:Ljava/lang/String;

    sget-object v3, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    sget-object v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mConfigs:[Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;->Brightness:I

    .line 71
    const-string v2, "BootBrightnessConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[InitialSettingBrightness]:model matching, set backlight to BootBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_2
    const-string v2, "BootBrightnessConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[InitialSettingBrightness]:model doesn\'t match, set backlight to default BootBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_3
    const-string v2, "BootBrightnessConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[InitialSettingBrightness]:set backlight to default Brightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
