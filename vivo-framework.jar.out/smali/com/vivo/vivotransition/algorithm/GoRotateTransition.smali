.class public Lcom/vivo/vivotransition/algorithm/GoRotateTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "GoRotateTransition.java"


# static fields
.field private static final CAMERA_DISTANCE_FACTOR:F = 2.67f

.field private static final PAGE_ANGLE:F = 180.0f


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 16
    const-string v0, "3D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mAnimationType:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v0, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 19
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public transform(IZZFLandroid/view/View;)Z
    .locals 10
    .param p1, "part"    # I
    .param p2, "isOverScrollFirst"    # Z
    .param p3, "isOverScrollLast"    # Z
    .param p4, "scrollProgress"    # F
    .param p5, "childView"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_4

    .line 29
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 30
    .local v1, "cw":I
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 31
    .local v0, "ch":I
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v5, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x402ae148    # 2.67f

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 33
    const/4 v5, 0x0

    cmpg-float v5, p4, v5

    if-gez v5, :cond_2

    .line 34
    const/4 v3, 0x0

    .line 35
    .local v3, "rightScreenPivotX":F
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v3}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v6

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 40
    .end local v3    # "rightScreenPivotX":F
    :goto_0
    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v4, v5, v6

    .line 41
    .local v4, "screenPivotY":F
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v4}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v6

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 42
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x43340000    # 180.0f

    mul-float/2addr v7, p4

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    .line 43
    iget v5, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mLayout_type:I

    if-nez v5, :cond_3

    .line 44
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 45
    :cond_0
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    neg-float v6, p4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 49
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 50
    const/4 v5, 0x1

    .line 53
    .end local v0    # "ch":I
    .end local v1    # "cw":I
    .end local v4    # "screenPivotY":F
    :goto_2
    return v5

    .line 37
    .restart local v0    # "ch":I
    .restart local v1    # "cw":I
    :cond_2
    int-to-float v2, v1

    .line 38
    .local v2, "leftScreenPivotX":F
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v2}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v6

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    goto :goto_0

    .line 47
    .end local v2    # "leftScreenPivotX":F
    .restart local v4    # "screenPivotY":F
    :cond_3
    iget-object v5, p0, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p4

    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v7, v8

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    goto :goto_1

    .line 53
    .end local v0    # "ch":I
    .end local v1    # "cw":I
    .end local v4    # "screenPivotY":F
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method
