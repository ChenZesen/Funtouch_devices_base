.class public Lcom/vivo/vivotransition/algorithm/BlindTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "BlindTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 15
    const-string v0, "3D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mAnimationType:Ljava/lang/String;

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mBreakTimes:I

    .line 17
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v0, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 19
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public getBreakOrder(IF)I
    .locals 1
    .param p1, "times"    # I
    .param p2, "scrollProgress"    # F

    .prologue
    .line 31
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 32
    iget v0, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mBreakTimes:I

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 33
    :cond_0
    return p1
.end method

.method public getDrawingOrder(IIIF)I
    .locals 1
    .param p1, "size"    # I
    .param p2, "index"    # I
    .param p3, "times"    # I
    .param p4, "fraction"    # F

    .prologue
    .line 26
    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    return v0
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
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 42
    const/4 v4, 0x0

    .line 69
    :goto_0
    return v4

    .line 46
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-static {p5, v3}, Lcom/vivo/vivotransition/AlgorithmUtil;->getTransformRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 49
    iget v4, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mLayout_type:I

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 50
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p4

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 53
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mBreakTimes:I

    div-int v2, v4, v5

    .line 54
    .local v2, "clipWidth":I
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    int-to-float v7, p1

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 55
    .local v1, "clipCenter":F
    const/high16 v4, -0x3ccc0000    # -180.0f

    mul-float v0, v4, p4

    .line 58
    .local v0, "angle":F
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mBreakTimes:I

    div-int/2addr v6, v7

    mul-int/2addr v6, p1

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mBreakTimes:I

    div-int/2addr v8, v9

    add-int/lit8 v9, p1, 0x1

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 62
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBoundsDirty:Z

    .line 65
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v1, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 66
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 67
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v0, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    .line 68
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/BlindTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 69
    const/4 v4, 0x1

    goto :goto_0
.end method
