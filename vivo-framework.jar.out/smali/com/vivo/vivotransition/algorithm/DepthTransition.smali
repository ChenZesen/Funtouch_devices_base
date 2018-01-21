.class public Lcom/vivo/vivotransition/algorithm/DepthTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "DepthTransition.java"


# static fields
.field private static final ALPHA_INTERPOLATOR_FACTOR:F = 0.9f

.field private static final SCALE_INTERPOLATOR_FACTOR:F = 0.5f

.field private static final TRANSITION_SCALE_FACTOR:F = 0.74f


# instance fields
.field private mAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field private mScaleInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 21
    const-string v0, "2D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mAnimationType:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/vivo/vivotransition/interpolator/ZInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/vivo/vivotransition/interpolator/ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mScaleInterpolator:Landroid/animation/TimeInterpolator;

    .line 23
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 24
    return-void
.end method


# virtual methods
.method public transform(IZZFLandroid/view/View;)Z
    .locals 8
    .param p1, "part"    # I
    .param p2, "isOverScrollFirst"    # Z
    .param p3, "isOverScrollLast"    # Z
    .param p4, "scrollProgress"    # F
    .param p5, "childView"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 29
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mScaleInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-interface {v3, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 30
    .local v0, "interpolatedProgress":F
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v5

    .line 31
    .local v1, "screenPivotX":F
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v1}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v4

    iput v4, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 32
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v3, v5

    .line 33
    .local v2, "screenPivotY":F
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v2}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v4

    iput v4, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 34
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    sub-float v4, v6, v0

    const v5, 0x3f3d70a4    # 0.74f

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleX:F

    .line 35
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleX:F

    iput v4, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleY:F

    .line 36
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput-boolean v7, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 37
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v6, v5

    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    iput v4, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    .line 38
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput-boolean v7, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 39
    iget v3, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mLayout_type:I

    if-nez v3, :cond_2

    .line 40
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    neg-float v4, p4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 45
    :cond_1
    :goto_0
    return v7

    .line 43
    :cond_2
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/DepthTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p4

    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    goto :goto_0
.end method
