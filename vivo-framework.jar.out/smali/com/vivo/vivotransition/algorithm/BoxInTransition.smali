.class public Lcom/vivo/vivotransition/algorithm/BoxInTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "BoxInTransition.java"


# static fields
.field private static final PAGE_ANGLE:F = 80.0f


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 17
    const-string v0, "3D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mAnimationType:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v0, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 20
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

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

    .line 26
    const/4 v0, -0x1

    .line 27
    .local v0, "index":I
    cmpl-float v1, p4, v3

    if-eqz v1, :cond_4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 28
    cmpl-float v1, p4, v3

    if-lez v1, :cond_2

    .line 29
    float-to-double v2, p4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 30
    add-int/lit8 v0, p2, 0x1

    .line 31
    if-lt v0, p1, :cond_0

    .line 32
    move v0, p2

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    move v0, p2

    goto :goto_0

    .line 38
    :cond_2
    float-to-double v2, p4

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    .line 39
    move v0, p2

    goto :goto_0

    .line 41
    :cond_3
    add-int/lit8 v0, p2, -0x1

    .line 42
    if-gez v0, :cond_0

    .line 43
    move v0, p2

    goto :goto_0

    .line 48
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
    .line 57
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v1, v4

    .line 58
    .local v1, "childWidth":F
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v0, v4

    .line 59
    .local v0, "childHeight":F
    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v2

    .line 61
    .local v2, "scaleX":F
    const/4 v4, 0x0

    cmpg-float v4, p4, v4

    if-gez v4, :cond_2

    .line 62
    iget v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mOrientation:I

    if-nez v4, :cond_1

    .line 63
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x3f000000    # -8.0f

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v8, p4

    const/high16 v9, 0x42200000    # 40.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 64
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x0

    invoke-static {p5, v5}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 77
    :goto_0
    iget v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mOrientation:I

    if-nez v4, :cond_4

    .line 78
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, 0x42a00000    # 80.0f

    mul-float/2addr v5, p4

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    .line 79
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    invoke-static {p5, v5}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 85
    :goto_1
    iget v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mLayout_type:I

    if-nez v4, :cond_6

    .line 86
    if-nez p2, :cond_0

    if-eqz p3, :cond_5

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v6, p4, v1

    mul-float/2addr v6, v2

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 98
    :goto_2
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 100
    const/4 v4, 0x1

    return v4

    .line 67
    :cond_1
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x0

    invoke-static {p5, v5}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    goto :goto_0

    .line 69
    :cond_2
    iget v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mOrientation:I

    if-nez v4, :cond_3

    .line 70
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x3f000000    # -8.0f

    const/high16 v8, 0x42200000    # 40.0f

    mul-float/2addr v8, p4

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 71
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v1}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    goto :goto_0

    .line 74
    :cond_3
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v0}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    goto :goto_0

    .line 81
    :cond_4
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x42a00000    # 80.0f

    mul-float/2addr v6, p4

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationX:F

    .line 82
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    invoke-static {p5, v5}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    goto :goto_1

    .line 89
    :cond_5
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x0

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    goto :goto_2

    .line 91
    :cond_6
    iget v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mOrientation:I

    if-nez v4, :cond_7

    .line 92
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v6, p4, v1

    mul-float/2addr v6, v2

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    goto :goto_2

    .line 94
    :cond_7
    invoke-virtual {p5}, Landroid/view/View;->getScaleY()F

    move-result v3

    .line 95
    .local v3, "scaleY":F
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BoxInTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v6, p4, v0

    mul-float/2addr v6, v3

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationY:F

    goto :goto_2
.end method
