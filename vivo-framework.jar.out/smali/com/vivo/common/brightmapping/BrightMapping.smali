.class public Lcom/vivo/common/brightmapping/BrightMapping;
.super Ljava/lang/Object;
.source "BrightMapping.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BrightMapping"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMaxSettingBrightness:I

.field private final mMinSettingBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "debug.bright.mapping"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/brightmapping/BrightMapping;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "contxt"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v1, 0xff

    iput v1, p0, Lcom/vivo/common/brightmapping/BrightMapping;->mMaxSettingBrightness:I

    .line 25
    iput-object p1, p0, Lcom/vivo/common/brightmapping/BrightMapping;->mContext:Landroid/content/Context;

    .line 26
    iget-object v1, p0, Lcom/vivo/common/brightmapping/BrightMapping;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 28
    .local v0, "mPowerManager":Landroid/os/PowerManager;
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->isNeedMapping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const/4 v1, 0x2

    iput v1, p0, Lcom/vivo/common/brightmapping/BrightMapping;->mMinSettingBrightness:I

    .line 37
    :goto_0
    return-void

    .line 31
    :cond_0
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/vivo/common/brightmapping/BrightMapping;->mMinSettingBrightness:I

    goto :goto_0

    .line 34
    :cond_1
    const/16 v1, 0x14

    iput v1, p0, Lcom/vivo/common/brightmapping/BrightMapping;->mMinSettingBrightness:I

    goto :goto_0
.end method

.method private validateProgress(I)I
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 60
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->getProgressMax()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 61
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->getProgressMax()I

    move-result p1

    .line 65
    .end local p1    # "progress":I
    :cond_0
    :goto_0
    return p1

    .line 62
    .restart local p1    # "progress":I
    :cond_1
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->getProgressMin()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 63
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->getProgressMin()I

    move-result p1

    goto :goto_0
.end method

.method private validateSetting(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    const/16 v0, 0xff

    .line 70
    if-le p1, v0, :cond_1

    move p1, v0

    .line 75
    .end local p1    # "setting":I
    :cond_0
    :goto_0
    return p1

    .line 72
    .restart local p1    # "setting":I
    :cond_1
    iget v0, p0, Lcom/vivo/common/brightmapping/BrightMapping;->mMinSettingBrightness:I

    if-ge p1, v0, :cond_0

    .line 73
    iget p1, p0, Lcom/vivo/common/brightmapping/BrightMapping;->mMinSettingBrightness:I

    goto :goto_0
.end method


# virtual methods
.method public getBrightProgressMax()I
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->isNeedMapping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->getProgressMax()I

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method public getBrightProgressMin()I
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->isNeedMapping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->getProgressMin()I

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vivo/common/brightmapping/BrightMapping;->mMinSettingBrightness:I

    goto :goto_0
.end method

.method public isNeedBrightMapping()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->isNeedMapping()Z

    move-result v0

    return v0
.end method

.method public progressMappingToSetting(I)I
    .locals 14
    .param p1, "progress"    # I

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 80
    move v2, p1

    .line 81
    .local v2, "pro":I
    invoke-direct {p0, p1}, Lcom/vivo/common/brightmapping/BrightMapping;->validateProgress(I)I

    move-result p1

    .line 82
    if-eq v2, p1, :cond_0

    .line 83
    const-string v6, "BrightMapping"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "progressMappingToSetting validate progress from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    int-to-double v6, p1

    mul-double/2addr v6, v10

    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->getProgressMax()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v10

    div-double v0, v6, v8

    .line 89
    .local v0, "percent":D
    const-wide v6, 0x406d400000000000L    # 234.0

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4033000000000000L    # 19.0

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    add-double v4, v6, v12

    .line 90
    .local v4, "set":D
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v3, v6

    .line 91
    .local v3, "setting":I
    invoke-direct {p0, v3}, Lcom/vivo/common/brightmapping/BrightMapping;->validateSetting(I)I

    move-result v3

    .line 92
    sget-boolean v6, Lcom/vivo/common/brightmapping/BrightMapping;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 93
    const-string v6, "BrightMapping"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "progressMappingToSetting progress:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "to setting:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    return v3
.end method

.method public settingMappingToProgress(I)I
    .locals 8
    .param p1, "setting"    # I

    .prologue
    .line 99
    move v3, p1

    .line 100
    .local v3, "tempSet":I
    invoke-direct {p0, p1}, Lcom/vivo/common/brightmapping/BrightMapping;->validateSetting(I)I

    move-result p1

    .line 101
    if-eq v3, p1, :cond_0

    .line 102
    const-string v4, "BrightMapping"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "settingMappingToProgress validate setting from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget v4, p0, Lcom/vivo/common/brightmapping/BrightMapping;->mMinSettingBrightness:I

    if-ne p1, v4, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/vivo/common/brightmapping/BrightMapping;->getBrightProgressMin()I

    move-result v2

    .line 115
    :cond_1
    :goto_0
    return v2

    .line 109
    :cond_2
    const-wide/high16 v4, -0x3fcd000000000000L    # -19.0

    mul-int/lit16 v6, p1, 0x3a8

    add-int/lit16 v6, v6, -0x5e7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide v6, 0x407d400000000000L    # 468.0

    div-double v0, v4, v6

    .line 111
    .local v0, "percent":D
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->getProgressMax()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 112
    .local v2, "progress":I
    sget-boolean v4, Lcom/vivo/common/brightmapping/BrightMapping;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 113
    const-string v4, "BrightMapping"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "settingMappingToProgress setting:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to progress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
