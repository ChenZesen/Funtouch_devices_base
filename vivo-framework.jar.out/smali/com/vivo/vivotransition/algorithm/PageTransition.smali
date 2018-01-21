.class public Lcom/vivo/vivotransition/algorithm/PageTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "PageTransition.java"


# static fields
.field private static final CAMARA_DISTANCE:F = -15.0f

.field private static final PAGE_LEFT:I = 0x0

.field private static final PAGE_RIGHT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 19
    const-string v0, "3D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mAnimationType:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mUseBg:Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mAlphaMode:Z

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mBreakTimes:I

    .line 23
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput-boolean v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBackgroundDirty:Z

    .line 24
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v0, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 26
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawingOrder(IIIF)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I
    .param p3, "part"    # I
    .param p4, "scrollProgress"    # F

    .prologue
    .line 33
    if-eqz p3, :cond_0

    .line 34
    sub-int v0, p1, p2

    add-int/lit8 p2, v0, -0x1

    .line 35
    :cond_0
    return p2
.end method

.method public transform(IZZFLandroid/view/View;)Z
    .locals 10
    .param p1, "part"    # I
    .param p2, "isOverScrollFirst"    # Z
    .param p3, "isOverScrollLast"    # Z
    .param p4, "scrollProgress"    # F
    .param p5, "childView"    # Landroid/view/View;

    .prologue
    .line 41
    iget v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mLayout_type:I

    if-nez v4, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 42
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mPageSpacing:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    mul-float/2addr v5, p4

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 43
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 45
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {p5, v2}, Lcom/vivo/vivotransition/AlgorithmUtil;->getTransformRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 47
    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 48
    .local v3, "scale":F
    iget v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mOrientation:I

    if-nez v4, :cond_2

    .line 49
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, p1

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, p1, 0x1

    mul-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    :goto_0
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBoundsDirty:Z

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "pivotX":F
    const/4 v1, 0x0

    .line 56
    .local v1, "pivotY":F
    const/4 v4, 0x1

    if-ne p1, v4, :cond_6

    .line 57
    const/4 v4, 0x0

    cmpg-float v4, p4, v4

    if-gez v4, :cond_3

    .line 58
    float-to-double v4, p4

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, p4

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    .line 60
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 62
    :cond_1
    const/4 v4, 0x1

    .line 102
    :goto_1
    return v4

    .line 51
    .end local v0    # "pivotX":F
    .end local v1    # "pivotY":F
    :cond_2
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    mul-int/2addr v6, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, p1, 0x1

    mul-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 64
    .restart local v0    # "pivotX":F
    .restart local v1    # "pivotY":F
    :cond_3
    float-to-double v4, p4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    .line 65
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x3e900000    # -15.0f

    mul-float/2addr v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 66
    iget v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mOrientation:I

    if-nez v4, :cond_4

    .line 67
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, 0x43340000    # 180.0f

    neg-float v6, p4

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    .line 70
    :goto_2
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v0, v4, v5

    .line 71
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v0}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 72
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v1, v4, v5

    .line 73
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v1}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 74
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 75
    const/4 v4, 0x1

    goto :goto_1

    .line 69
    :cond_4
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, 0x43340000    # 180.0f

    mul-float/2addr v5, p4

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationX:F

    goto :goto_2

    .line 77
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 81
    :cond_6
    const/4 v4, 0x0

    cmpg-float v4, p4, v4

    if-gez v4, :cond_9

    .line 82
    float-to-double v4, p4

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    .line 83
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x3e900000    # -15.0f

    mul-float/2addr v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 84
    iget v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mOrientation:I

    if-nez v4, :cond_7

    .line 85
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, 0x43340000    # 180.0f

    neg-float v6, p4

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    .line 88
    :goto_3
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v0, v4, v5

    .line 89
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v0}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 90
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v1, v4, v5

    .line 91
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v1}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 92
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 93
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 87
    :cond_7
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, 0x43340000    # 180.0f

    mul-float/2addr v5, p4

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationX:F

    goto :goto_3

    .line 95
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 98
    :cond_9
    float-to-double v4, p4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-lez v4, :cond_a

    .line 99
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p4

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    .line 100
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/PageTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 102
    :cond_a
    const/4 v4, 0x1

    goto/16 :goto_1
.end method
