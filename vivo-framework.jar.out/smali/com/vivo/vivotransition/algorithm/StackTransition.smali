.class public Lcom/vivo/vivotransition/algorithm/StackTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "StackTransition.java"


# static fields
.field private static final ALPHA_INTERPOLATOR_FACTOR:F = 0.9f

.field private static final CAMERA_DISTANCE_FACTOR:F = 2.67f

.field private static final SCALE_INTERPOLATOR_FACTOR:F = 0.5f

.field private static final TRANSITION_SCALE_FACTOR:F = 0.74f


# instance fields
.field private mAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field private mZInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 24
    new-instance v0, Lcom/vivo/vivotransition/interpolator/ZInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/vivo/vivotransition/interpolator/ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mZInterpolator:Landroid/animation/TimeInterpolator;

    .line 25
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 26
    const-string v0, "3D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mAnimationType:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v0, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 29
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public transform(IZZFLandroid/view/View;)Z
    .locals 13
    .param p1, "part"    # I
    .param p2, "isOverScrollFirst"    # Z
    .param p3, "isOverScrollLast"    # Z
    .param p4, "scrollProgress"    # F
    .param p5, "childView"    # Landroid/view/View;

    .prologue
    .line 37
    const v8, -0x3fd51eb8    # -2.67f

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v2, v8, v9

    .line 38
    .local v2, "cameraZ":F
    iget-boolean v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mSetCameraZ:Z

    if-eqz v8, :cond_0

    .line 39
    iget v2, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mCameraZ:F

    .line 41
    :cond_0
    const/high16 v8, -0x3f000000    # -8.0f

    cmpl-float v8, v2, v8

    if-eqz v8, :cond_1

    .line 42
    iget-object v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v8, v8, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v2

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 47
    :cond_1
    iget-object v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mZInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-interface {v8, v9}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    .line 48
    .local v3, "interpolatedProgress":F
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 49
    .local v7, "width":I
    int-to-float v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float v4, v8, v9

    .line 50
    .local v4, "pivotX":F
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v5, v8, v9

    .line 52
    .local v5, "pivotY":F
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v3

    const v9, 0x3f3d70a4    # 0.74f

    mul-float/2addr v9, v3

    add-float v6, v8, v9

    .line 53
    .local v6, "scale":F
    const/4 v8, 0x0

    cmpl-float v8, p4, v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-interface {v8, v9}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    .line 55
    .local v1, "alpha":F
    :goto_0
    iget-object v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v9

    iput v9, v8, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 56
    iget-object v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v9

    iput v9, v8, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 57
    iget-object v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    int-to-float v10, v7

    mul-float/2addr v9, v10

    iput v9, v8, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 58
    iget-object v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v6, v8, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleX:F

    .line 59
    iget-object v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v6, v8, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleY:F

    .line 60
    iget-object v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 62
    iget-object v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v1, v8, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    .line 63
    iget-object v8, p0, Lcom/vivo/vivotransition/algorithm/StackTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 64
    const/4 v8, 0x1

    return v8

    .line 53
    .end local v1    # "alpha":F
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method
