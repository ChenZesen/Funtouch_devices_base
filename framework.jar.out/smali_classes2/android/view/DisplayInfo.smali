.class public final Landroid/view/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public appHeight:I

.field public appVsyncOffsetNanos:J

.field public appWidth:I

.field public colorTransformId:I

.field public defaultColorTransformId:I

.field public defaultModeId:I

.field public flags:I

.field public largestNominalAppHeight:I

.field public largestNominalAppWidth:I

.field public layerStack:I

.field public logicalDensityDpi:I

.field public logicalHeight:I

.field public logicalWidth:I

.field public modeId:I

.field public name:Ljava/lang/String;

.field public overscanBottom:I

.field public overscanLeft:I

.field public overscanRight:I

.field public overscanTop:I

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public physicalXDpi:F

.field public physicalYDpi:F

.field public presentationDeadlineNanos:J

.field public rotation:I

.field public smallestNominalAppHeight:I

.field public smallestNominalAppWidth:I

.field public state:I

.field public supportedColorTransforms:[Landroid/view/Display$ColorTransform;

.field public supportedModes:[Landroid/view/Display$Mode;

.field public type:I

.field public uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Landroid/view/DisplayInfo$1;

    invoke-direct {v0}, Landroid/view/DisplayInfo$1;-><init>()V

    sput-object v0, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 185
    sget-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 260
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 185
    sget-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 267
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 268
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/DisplayInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/DisplayInfo$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 185
    sget-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 263
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 264
    return-void
.end method

.method private findColorTransform(I)Landroid/view/Display$ColorTransform;
    .locals 5
    .param p1, "colorTransformId"    # I

    .prologue
    .line 507
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 508
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    aget-object v0, v2, v1

    .line 509
    .local v0, "colorTransform":Landroid/view/Display$ColorTransform;
    invoke-virtual {v0}, Landroid/view/Display$ColorTransform;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 510
    return-object v0

    .line 507
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "colorTransform":Landroid/view/Display$ColorTransform;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to locate color transform: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private findMode(I)Landroid/view/Display$Mode;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 452
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 453
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 454
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    return-object v1

    .line 452
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to locate mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    .line 656
    const-string v1, ", FLAG_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 659
    const-string v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 662
    const-string v1, ", FLAG_PRIVATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 665
    const-string v1, ", FLAG_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 668
    const-string v1, ", FLAG_SCALING_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_5

    .line 671
    const-string v1, ", FLAG_ROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V
    .locals 3
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 554
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 555
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v0, v0

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 557
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 558
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 559
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 561
    if-eqz p3, :cond_0

    iget v0, p3, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v0, :cond_0

    iget v0, p3, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int p4, v0

    .line 564
    :cond_0
    if-eqz p3, :cond_1

    iget v0, p3, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v0, :cond_1

    iget v0, p3, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int p5, v0

    .line 568
    :cond_1
    iput p4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p4, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 569
    iput p5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p5, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 571
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p2, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 572
    invoke-virtual {p2, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 574
    :cond_2
    return-void
.end method

.method private getMetricsWithSize([FLandroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V
    .locals 3
    .param p1, "info"    # [F
    .param p2, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "configuration"    # Landroid/content/res/Configuration;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/16 v2, 0xd

    .line 728
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    aget v0, p1, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 732
    iput p5, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p5, p2, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 733
    iput p6, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p6, p2, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 735
    aget v0, p1, v2

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    iput v0, p2, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p2, Landroid/util/DisplayMetrics;->density:F

    .line 736
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    iput v0, p2, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 737
    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 738
    const/16 v0, 0xf

    aget v0, p1, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 740
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p3, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    invoke-virtual {p3, p2}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method


# virtual methods
.method public copyFrom(Landroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .prologue
    .line 315
    iget v0, p1, Landroid/view/DisplayInfo;->layerStack:I

    iput v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    .line 316
    iget v0, p1, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/DisplayInfo;->flags:I

    .line 317
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/DisplayInfo;->type:I

    .line 318
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 319
    iget-object v0, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 320
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 321
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 322
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 323
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 324
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 325
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 326
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 327
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 328
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 329
    iget v0, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 330
    iget v0, p1, Landroid/view/DisplayInfo;->overscanTop:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 331
    iget v0, p1, Landroid/view/DisplayInfo;->overscanRight:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 332
    iget v0, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 333
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 334
    iget v0, p1, Landroid/view/DisplayInfo;->modeId:I

    iput v0, p0, Landroid/view/DisplayInfo;->modeId:I

    .line 335
    iget v0, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    iput v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 336
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 337
    iget v0, p1, Landroid/view/DisplayInfo;->colorTransformId:I

    iput v0, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    .line 338
    iget v0, p1, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    iput v0, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    .line 339
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$ColorTransform;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 341
    iget v0, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 342
    iget v0, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 343
    iget v0, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 344
    iget-wide v0, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 345
    iget-wide v0, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iput-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 346
    iget v0, p1, Landroid/view/DisplayInfo;->state:I

    iput v0, p0, Landroid/view/DisplayInfo;->state:I

    .line 347
    iget v0, p1, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    .line 348
    iget-object v0, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public copyFrom([F)V
    .locals 2
    .param p1, "other"    # [F
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 680
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 684
    const/4 v0, 0x1

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 685
    const/4 v0, 0x2

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 686
    const/4 v0, 0x3

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 687
    const/4 v0, 0x4

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 688
    const/4 v0, 0x5

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 689
    const/4 v0, 0x6

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 690
    const/4 v0, 0x7

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 691
    const/16 v0, 0x8

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 692
    const/16 v0, 0x9

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 693
    const/16 v0, 0xa

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 694
    const/16 v0, 0xb

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 695
    const/16 v0, 0xc

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 696
    const/16 v0, 0xd

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 697
    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 698
    const/16 v0, 0xf

    aget v0, p1, v0

    iput v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/view/DisplayInfo;)Z
    .locals 4
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .prologue
    .line 276
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    iget v1, p1, Landroid/view/DisplayInfo;->layerStack:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v1, p1, Landroid/view/DisplayInfo;->flags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    iget v1, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->appWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    iget v1, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    iget v1, p1, Landroid/view/DisplayInfo;->overscanTop:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    iget v1, p1, Landroid/view/DisplayInfo;->overscanRight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    iget v1, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    iget v1, p1, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    iget v1, p1, Landroid/view/DisplayInfo;->modeId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    iget v1, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    iget v1, p1, Landroid/view/DisplayInfo;->colorTransformId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    iget v1, p1, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v1, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v1, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v2, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-wide v2, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    iget v1, p1, Landroid/view/DisplayInfo;->state:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget v1, p1, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 272
    instance-of v0, p1, Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/DisplayInfo;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findDefaultModeByRefreshRate(F)I
    .locals 6
    .param p1, "refreshRate"    # F

    .prologue
    .line 465
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 466
    .local v2, "modes":[Landroid/view/Display$Mode;
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 467
    .local v0, "defaultMode":Landroid/view/Display$Mode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 468
    aget-object v3, v2, v1

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    .line 473
    :goto_1
    return v3

    .line 467
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 517
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 518
    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "ci"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 527
    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 528
    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 521
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 523
    return-void
.end method

.method public getAppMetrics([FLandroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "info"    # [F
    .param p2, "outMetrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 704
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics([FLandroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 705
    return-void
.end method

.method public getAppMetrics([FLandroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "info"    # [F
    .param p2, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "ci"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "configuration"    # Landroid/content/res/Configuration;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 716
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v5, v0

    const/4 v0, 0x1

    aget v0, p1, v0

    float-to-int v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/DisplayInfo;->getMetricsWithSize([FLandroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 717
    return-void
.end method

.method public getAppMetrics([FLandroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    .locals 7
    .param p1, "info"    # [F
    .param p2, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "displayAdjustments"    # Landroid/view/DisplayAdjustments;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 710
    invoke-virtual {p3}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    invoke-virtual {p3}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v5, v0

    const/4 v0, 0x1

    aget v0, p1, v0

    float-to-int v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/DisplayInfo;->getMetricsWithSize([FLandroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 711
    return-void
.end method

.method public getColorTransform()Landroid/view/Display$ColorTransform;
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findColorTransform(I)Landroid/view/Display$ColorTransform;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultColorTransform()Landroid/view/Display$ColorTransform;
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findColorTransform(I)Landroid/view/Display$ColorTransform;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMode()Landroid/view/Display$Mode;
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRefreshRates()[F
    .locals 11

    .prologue
    .line 480
    iget-object v5, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 481
    .local v5, "modes":[Landroid/view/Display$Mode;
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 482
    .local v7, "rates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 483
    .local v0, "defaultMode":Landroid/view/Display$Mode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, v5

    if-ge v1, v9, :cond_1

    .line 484
    aget-object v4, v5, v1

    .line 485
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 487
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_1
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v9

    new-array v8, v9, [F

    .line 491
    .local v8, "result":[F
    const/4 v1, 0x0

    .line 492
    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 493
    .local v6, "rate":Ljava/lang/Float;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v8, v1

    move v1, v2

    .line 494
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 495
    .end local v6    # "rate":Ljava/lang/Float;
    :cond_2
    return-object v8
.end method

.method public getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 532
    iget v4, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 533
    return-void
.end method

.method public getLogicalMetrics([FLandroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "info"    # [F
    .param p2, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "configuration"    # Landroid/content/res/Configuration;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 722
    const/4 v0, 0x6

    aget v0, p1, v0

    float-to-int v5, v0

    const/4 v0, 0x7

    aget v0, p1, v0

    float-to-int v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/DisplayInfo;->getMetricsWithSize([FLandroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 723
    return-void
.end method

.method public getMode()Landroid/view/Display$Mode;
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getNaturalHeight()I
    .locals 2

    .prologue
    .line 541
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_0
.end method

.method public getNaturalWidth()I
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_0
.end method

.method public hasAccess(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 549
    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-static {p1, v0, v1}, Landroid/view/Display;->hasAccess(III)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->layerStack:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->flags:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->type:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->modeId:I

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 373
    .local v2, "nModes":I
    new-array v3, v2, [Landroid/view/Display$Mode;

    iput-object v3, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 375
    iget-object v4, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    sget-object v3, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    aput-object v3, v4, v0

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    .local v1, "nColorTransforms":I
    new-array v3, v1, [Landroid/view/Display$ColorTransform;

    iput-object v3, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 381
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 382
    iget-object v4, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    sget-object v3, Landroid/view/Display$ColorTransform;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$ColorTransform;

    aput-object v3, v4, v0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->state:I

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->ownerUid:I

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DisplayInfo{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v1, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v1, "\", uniqueId \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v1, "\", app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget v1, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    const-string v1, ", real "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    if-eqz v1, :cond_1

    .line 593
    :cond_0
    const-string v1, ", overscan ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 597
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 601
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_1
    const-string v1, ", largest app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 605
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 607
    const-string v1, ", smallest app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    const-string v1, ", mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget v1, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 613
    const-string v1, ", defaultMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget v1, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    const-string v1, ", modes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const-string v1, ", colorTransformId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iget v1, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    const-string v1, ", defaultColorTransformId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget v1, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, ", supportedColorTransforms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v1, ", rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget v1, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 625
    const-string v1, ", density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 629
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 631
    const-string v1, ") dpi, layerStack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 633
    const-string v1, ", appVsyncOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 635
    const-string v1, ", presDeadline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 637
    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    iget v1, p0, Landroid/view/DisplayInfo;->type:I

    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 640
    const-string v1, ", address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_2
    const-string v1, ", state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget v1, p0, Landroid/view/DisplayInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 645
    :cond_3
    const-string v1, ", owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_4
    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-static {v1}, Landroid/view/DisplayInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 397
    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v1, p0, Landroid/view/DisplayInfo;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    iget v1, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v1, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget v1, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v1, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget v1, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 419
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/view/Display$Mode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_0
    iget v1, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget v1, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 425
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/view/Display$ColorTransform;->writeToParcel(Landroid/os/Parcel;I)V

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_1
    iget v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 429
    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 430
    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 431
    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 432
    iget v1, p0, Landroid/view/DisplayInfo;->state:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    return-void
.end method
