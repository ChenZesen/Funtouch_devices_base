.class public Lcom/vivo/vivotransition/algorithm/FlipOverTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "FlipOverTransition.java"


# static fields
.field private static final LEFTSCREEN_INTERPOLATOR_FACTOR:F = 1.5f

.field private static final LEFT_PAGE_ANGLE:F = 80.0f

.field private static final OVERLAY_FACTOR:F

.field private static final RIGHTSCREEN_INTERPOLATOR_FACTOR:F = 1.5f

.field private static final RIGHT_PAGE_ANGLE:F = 45.0f

.field private static final SCALE_INTERPOLATOR_FACTOR:F = 0.5f

.field private static final TRANSITION_SCALE_FACTOR:F = 0.7f


# instance fields
.field private mLeftScreenAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field private mLeftScreenInterpolator:Landroid/animation/TimeInterpolator;

.field private mLeftScreenScaleInterpolator:Landroid/animation/TimeInterpolator;

.field private mRightScreenInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->OVERLAY_FACTOR:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 29
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 30
    const-string v0, "3D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mAnimationType:Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mLeftScreenInterpolator:Landroid/animation/TimeInterpolator;

    .line 32
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mLeftScreenAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 33
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mRightScreenInterpolator:Landroid/animation/TimeInterpolator;

    .line 34
    new-instance v0, Lcom/vivo/vivotransition/interpolator/ZInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/vivo/vivotransition/interpolator/ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mLeftScreenScaleInterpolator:Landroid/animation/TimeInterpolator;

    .line 35
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v0, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 37
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public transform(IZZFLandroid/view/View;)Z
    .locals 12
    .param p1, "part"    # I
    .param p2, "isOverScrollFirst"    # Z
    .param p3, "isOverScrollLast"    # Z
    .param p4, "scrollProgress"    # F
    .param p5, "childView"    # Landroid/view/View;

    .prologue
    .line 45
    const/4 v4, 0x0

    .line 46
    .local v4, "interpolatedProgress":F
    const/4 v8, 0x0

    .line 47
    .local v8, "translationX":F
    const/4 v5, 0x0

    .line 48
    .local v5, "pivotX":F
    const/4 v6, 0x0

    .line 49
    .local v6, "pivotY":F
    const/4 v2, 0x0

    .line 50
    .local v2, "angle":F
    const/4 v7, 0x0

    .line 51
    .local v7, "scale":F
    const/4 v1, 0x0

    .line 52
    .local v1, "alpha":F
    const/4 v9, 0x0

    cmpg-float v9, p4, v9

    if-gez v9, :cond_1

    .line 53
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mRightScreenInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-interface {v9, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    .line 54
    const/high16 v9, 0x42340000    # 45.0f

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v10, v4

    mul-float v2, v9, v10

    .line 55
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v5, v9, v10

    .line 56
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v6, v9, v10

    .line 57
    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v9, v4

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sget v10, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->OVERLAY_FACTOR:F

    mul-float v8, v9, v10

    .line 58
    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    const/high16 v7, 0x3f800000    # 1.0f

    .line 69
    :goto_0
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v10

    iput v10, v9, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 70
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    move-object/from16 v0, p5

    invoke-static {v0, v6}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v10

    iput v10, v9, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 71
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v2, v9, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    .line 72
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v7, v9, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleX:F

    .line 73
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v7, v9, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleY:F

    .line 74
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 75
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v1, v9, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    .line 76
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 77
    iget v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mLayout_type:I

    if-nez v9, :cond_3

    .line 78
    if-eqz p2, :cond_2

    .line 79
    move/from16 v0, p4

    neg-float v9, v0

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getScaleX()F

    move-result v10

    mul-float v8, v9, v10

    .line 87
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v8, v9, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 88
    const/4 v9, 0x1

    return v9

    .line 61
    :cond_1
    const/4 v5, 0x0

    .line 62
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v6, v9, v10

    .line 63
    const/high16 v9, 0x42a00000    # 80.0f

    iget-object v10, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mLeftScreenInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-interface {v10, v11}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    mul-float v2, v9, v10

    .line 64
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, p4

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getScaleX()F

    move-result v10

    mul-float v8, v9, v10

    .line 65
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mLeftScreenScaleInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-interface {v9, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    .line 66
    .local v3, "f5":F
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v3

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v10, v3

    add-float v7, v9, v10

    .line 67
    iget-object v9, p0, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;->mLeftScreenAlphaInterpolator:Landroid/animation/TimeInterpolator;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-interface {v9, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    goto/16 :goto_0

    .line 81
    .end local v3    # "f5":F
    :cond_2
    if-eqz p3, :cond_0

    .line 82
    const/4 v8, 0x0

    goto :goto_1

    .line 85
    :cond_3
    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p4

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getScaleX()F

    move-result v11

    mul-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    goto :goto_1
.end method
