.class Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;
.super Ljava/lang/Object;
.source "BrightnessSceneRatio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/BrightnessSceneRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RatioConfig"
.end annotation


# instance fields
.field ratio:F

.field type:Lcom/vivo/common/autobrightness/AppClassify$AppType;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/AppClassify$AppType;F)V
    .locals 0
    .param p1, "type"    # Lcom/vivo/common/autobrightness/AppClassify$AppType;
    .param p2, "ratio"    # F

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;->type:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    .line 18
    iput p2, p0, Lcom/vivo/common/autobrightness/BrightnessSceneRatio$RatioConfig;->ratio:F

    .line 19
    return-void
.end method
