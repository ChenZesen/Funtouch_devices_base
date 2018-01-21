.class public Landroid/util/ResolutionOverride;
.super Ljava/lang/Object;
.source "ResolutionOverride.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final RES_OVERRIDE:Ljava/lang/String; = "persist.debug.app_res_override"

.field private static final TAG:Ljava/lang/String; = "ResolutionOverride"


# instance fields
.field private mIsEnabled:Z

.field private mOverrideXres:I

.field private mOverrideYres:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 12
    .param p1, "view"    # Landroid/view/SurfaceView;

    .prologue
    const/16 v11, 0x78

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    .line 50
    iput v1, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    .line 51
    iput v1, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    .line 55
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->canOverrideRes()I

    move-result v8

    if-ne v8, v7, :cond_0

    move v1, v7

    .line 58
    .local v1, "enable":Z
    :cond_0
    const/4 v3, 0x0

    .line 60
    .local v3, "orientation":I
    :try_start_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v3, v8, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    if-eqz v1, :cond_4

    if-eq v3, v7, :cond_1

    if-ne v3, v10, :cond_4

    .line 68
    :cond_1
    const-string v8, "persist.debug.app_res_override"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "resStr":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 71
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 73
    .local v4, "pos":I
    if-lez v4, :cond_2

    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-ne v8, v4, :cond_2

    .line 75
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v5, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    .line 76
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .end local v4    # "pos":I
    :cond_2
    :goto_1
    if-ne v3, v10, :cond_3

    .line 84
    iget v6, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    .line 85
    .local v6, "tmp":I
    iget v8, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    iput v8, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    .line 86
    iput v6, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    .line 89
    .end local v6    # "tmp":I
    :cond_3
    iget v8, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    if-lez v8, :cond_4

    iget v8, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    if-lez v8, :cond_4

    .line 90
    iput-boolean v7, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    .line 96
    .end local v5    # "resStr":Ljava/lang/String;
    :cond_4
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "pos":I
    .restart local v5    # "resStr":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 78
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string v8, "ResolutionOverride"

    const-string v9, "Error in extracting the overriding xres and yres"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public handleResize(Landroid/view/SurfaceView;)V
    .locals 4
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Landroid/util/ResolutionOverride$1;

    invoke-direct {v0, p0, p1}, Landroid/util/ResolutionOverride$1;-><init>(Landroid/util/ResolutionOverride;Landroid/view/SurfaceView;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 141
    new-instance v0, Landroid/util/ResolutionOverride$2;

    invoke-direct {v0, p0, p1}, Landroid/util/ResolutionOverride$2;-><init>(Landroid/util/ResolutionOverride;Landroid/view/SurfaceView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public handleTouch(Landroid/view/SurfaceView;Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "view"    # Landroid/view/SurfaceView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 109
    iget-boolean v3, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v3, :cond_0

    .line 122
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 115
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 116
    .local v1, "xscale":F
    iget v3, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 119
    .local v2, "yscale":F
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 120
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setFixedSize(Landroid/view/SurfaceView;)V
    .locals 3
    .param p1, "view"    # Landroid/view/SurfaceView;

    .prologue
    .line 100
    iget-boolean v0, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    iget v2, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method
