.class public Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
.super Ljava/lang/Object;
.source "PictureAdjustmentConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;
    }
.end annotation


# instance fields
.field private contrast:I

.field private hue:I

.field private intensity:I

.field protected isDesaturation:Z

.field protected isGlobalPADisabled:Z

.field private paValues:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;",
            ">;"
        }
    .end annotation
.end field

.field private sat_threshold:I

.field private saturation:I


# direct methods
.method public constructor <init>(Ljava/util/EnumSet;IIIII)V
    .locals 1
    .param p2, "hue"    # I
    .param p3, "saturation"    # I
    .param p4, "intensity"    # I
    .param p5, "contrast"    # I
    .param p6, "sat_thresh"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;",
            ">;IIIII)V"
        }
    .end annotation

    .prologue
    .local p1, "paramFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;>;"
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->isDesaturation:Z

    .line 49
    iput-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->isGlobalPADisabled:Z

    .line 63
    iput-object p1, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->paValues:Ljava/util/EnumSet;

    .line 64
    iput p2, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->hue:I

    .line 65
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->saturation:I

    .line 66
    iput p4, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->intensity:I

    .line 67
    iput p5, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->contrast:I

    .line 68
    iput p6, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->sat_threshold:I

    .line 69
    return-void
.end method


# virtual methods
.method public getContrast()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->contrast:I

    return v0
.end method

.method public getHue()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->hue:I

    return v0
.end method

.method public getIntensity()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->intensity:I

    return v0
.end method

.method public getParamFlags()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->paValues:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->saturation:I

    return v0
.end method

.method public getSaturationThreshold()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->sat_threshold:I

    return v0
.end method

.method public isDesaturationEnabled()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->isDesaturation:Z

    return v0
.end method

.method public isGlobalPictureAdjustmentDisabled()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->isGlobalPADisabled:Z

    return v0
.end method
