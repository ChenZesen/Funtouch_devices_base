.class public Lcom/vivo/vivotransition/algorithm/WindMillTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "WindMillTransition.java"


# static fields
.field private static final COORDINATE_Y_FACTOR:F = 2.0f

.field private static final PAGE_ANGLE:F = 45.0f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 15
    const-string v0, "2D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/WindMillTransition;->mAnimationType:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public transform(IZZFLandroid/view/View;)Z
    .locals 9
    .param p1, "part"    # I
    .param p2, "isOverScrollFirst"    # Z
    .param p3, "isOverScrollLast"    # Z
    .param p4, "scrollProgress"    # F
    .param p5, "childView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 22
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 23
    .local v1, "cw":I
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 24
    .local v0, "ch":I
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/WindMillTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/high16 v5, 0x42340000    # 45.0f

    neg-float v6, p4

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotation:F

    .line 25
    int-to-float v4, v1

    div-float v2, v4, v7

    .line 26
    .local v2, "pivotX":F
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/WindMillTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v2}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 28
    if-le v0, v1, :cond_1

    .line 29
    int-to-float v3, v0

    .line 32
    .local v3, "pivotY":F
    :goto_0
    mul-float/2addr v3, v7

    .line 33
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/WindMillTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v3}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v5

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 34
    iget v4, p0, Lcom/vivo/vivotransition/algorithm/WindMillTransition;->mLayout_type:I

    if-nez v4, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 35
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/WindMillTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    int-to-float v5, v1

    mul-float/2addr v5, p4

    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 36
    :cond_0
    iget-object v4, p0, Lcom/vivo/vivotransition/algorithm/WindMillTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput-boolean v8, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 37
    return v8

    .line 31
    .end local v3    # "pivotY":F
    :cond_1
    int-to-float v3, v1

    .restart local v3    # "pivotY":F
    goto :goto_0
.end method
