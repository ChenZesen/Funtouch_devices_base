.class public Lcom/vivo/vivotransition/algorithm/BoxTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "BoxTransition.java"


# static fields
.field private static final CAMERA_DISTANCE_FACTOR:F = 2.67f

.field private static final PAGE_ANGLE:F = 105.0f


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 17
    const-string v0, "3D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mAnimationType:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v0, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 20
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawingOrder(IIIF)I
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "i"    # I
    .param p3, "part"    # I
    .param p4, "scrollProgress"    # F

    .prologue
    const/4 v3, 0x0

    .line 27
    const/4 v0, -0x1

    .line 28
    .local v0, "index":I
    cmpl-float v1, p4, v3

    if-eqz v1, :cond_4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 29
    cmpl-float v1, p4, v3

    if-lez v1, :cond_2

    .line 30
    float-to-double v2, p4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 31
    add-int/lit8 v0, p2, 0x1

    .line 32
    if-lt v0, p1, :cond_0

    .line 33
    move v0, p2

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    move v0, p2

    goto :goto_0

    .line 39
    :cond_2
    float-to-double v2, p4

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    .line 40
    move v0, p2

    goto :goto_0

    .line 42
    :cond_3
    add-int/lit8 v0, p2, -0x1

    .line 43
    if-gez v0, :cond_0

    .line 44
    move v0, p2

    goto :goto_0

    .line 49
    :cond_4
    move v0, p2

    goto :goto_0
.end method

.method public transform(IZZFLandroid/view/View;)Z
    .locals 10
    .param p1, "part"    # I
    .param p2, "isOverScrollFirst"    # Z
    .param p3, "isOverScrollLast"    # Z
    .param p4, "scrollProgress"    # F
    .param p5, "childView"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v1, v5

    .line 59
    .local v1, "childWidth":F
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v0, v5

    .line 60
    .local v0, "childHeight":F
    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 61
    .local v3, "scaleX":F
    const v5, -0x3fd51eb8    # -2.67f

    mul-float v2, v5, v0

    .line 62
    .local v2, "cz":F
    iget-boolean v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mSetCameraZ:Z

    if-eqz v5, :cond_0

    .line 63
    iget v2, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mCameraZ:F

    .line 64
    :cond_0
    const/high16 v5, -0x3f000000    # -8.0f

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_1

    .line 65
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v5, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v2

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 68
    :cond_1
    const/4 v5, 0x0

    cmpg-float v5, p4, v5

    if-gez v5, :cond_4

    .line 69
    iget v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mOrientation:I

    if-nez v5, :cond_3

    .line 70
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v6, 0x0

    invoke-static {p5, v6}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v6

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 80
    :goto_0
    iget v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mOrientation:I

    if-nez v5, :cond_6

    .line 81
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x42d20000    # 105.0f

    mul-float/2addr v7, p4

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    .line 82
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v0, v6

    invoke-static {p5, v6}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v6

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 88
    :goto_1
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    .line 89
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 91
    iget v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mLayout_type:I

    if-nez v5, :cond_8

    .line 92
    if-nez p2, :cond_2

    if-eqz p3, :cond_7

    .line 93
    :cond_2
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v6, -0x40800000    # -1.0f

    mul-float v7, p4, v1

    mul-float/2addr v7, v3

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 104
    :goto_2
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 106
    const/4 v5, 0x1

    return v5

    .line 72
    :cond_3
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v6, 0x0

    invoke-static {p5, v6}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v6

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    goto :goto_0

    .line 74
    :cond_4
    iget v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mOrientation:I

    if-nez v5, :cond_5

    .line 75
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v1}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v6

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    goto :goto_0

    .line 77
    :cond_5
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v0}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v6

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    goto :goto_0

    .line 84
    :cond_6
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v6, 0x42d20000    # 105.0f

    mul-float/2addr v6, p4

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationX:F

    .line 85
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v1, v6

    invoke-static {p5, v6}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v6

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    goto :goto_1

    .line 95
    :cond_7
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v6, 0x0

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    goto :goto_2

    .line 97
    :cond_8
    iget v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mOrientation:I

    if-nez v5, :cond_9

    .line 98
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v6, -0x40800000    # -1.0f

    mul-float v7, p4, v1

    mul-float/2addr v7, v3

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    goto :goto_2

    .line 100
    :cond_9
    invoke-virtual {p5}, Landroid/view/View;->getScaleY()F

    move-result v4

    .line 101
    .local v4, "scaleY":F
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/BoxTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v6, -0x40800000    # -1.0f

    mul-float v7, p4, v0

    mul-float/2addr v7, v4

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationY:F

    goto :goto_2
.end method
