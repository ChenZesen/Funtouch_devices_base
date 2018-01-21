.class public Lcom/vivo/common/autobrightness/BrightnessSceneRatio;
.super Ljava/lang/Object;
.source "BrightnessSceneRatio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;
    }
.end annotation


# static fields
.field public static final DEFAULT_RATIO:F = 1.0f

.field private static mConfigs:[Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;

    const/4 v1, 0x0

    new-instance v2, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;

    sget-object v3, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_SNS:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;-><init>(Lcom/vivo/common/autobrightness/AppClassify$AppType;F)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;

    sget-object v3, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_SHOPING:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v2, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;-><init>(Lcom/vivo/common/autobrightness/AppClassify$AppType;F)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;

    sget-object v3, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_NEWS:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    invoke-direct {v2, v3, v5}, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;-><init>(Lcom/vivo/common/autobrightness/AppClassify$AppType;F)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;

    sget-object v3, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_READING:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    invoke-direct {v2, v3, v5}, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;-><init>(Lcom/vivo/common/autobrightness/AppClassify$AppType;F)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/BrightnessSceneRatio;->mConfigs:[Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getRatio(IILjava/lang/String;)F
    .locals 7
    .param p0, "actual"    # I
    .param p1, "lux"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 29
    invoke-static {p2}, Lcom/vivo/common/autobrightness/AppClassify;->getAppType(Ljava/lang/String;)Lcom/vivo/common/autobrightness/AppClassify$AppType;

    move-result-object v4

    .line 30
    .local v4, "type":Lcom/vivo/common/autobrightness/AppClassify$AppType;
    sget-object v6, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_UNKOWN:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    if-ne v4, v6, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v5

    .line 33
    :cond_1
    sget-object v0, Lcom/vivo/common/autobrightness/BrightnessSceneRatio;->mConfigs:[Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;

    .local v0, "arr$":[Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 34
    .local v1, "c":Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;
    iget-object v6, v1, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;->type:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    if-ne v6, v4, :cond_2

    .line 35
    iget v5, v1, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;->ratio:F

    goto :goto_0

    .line 33
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
