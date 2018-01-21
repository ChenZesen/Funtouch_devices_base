.class public Lcom/vivo/vivotransition/algorithm/PushTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "PushTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 11
    const-string v0, "2D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/PushTransition;->mAnimationType:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public transform(IZZFLandroid/view/View;)Z
    .locals 7
    .param p1, "part"    # I
    .param p2, "isOverScrollFirst"    # Z
    .param p3, "isOverScrollLast"    # Z
    .param p4, "scrollProgress"    # F
    .param p5, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 19
    .local v0, "cw":I
    const/4 v2, 0x0

    .line 20
    .local v2, "scale":F
    const/4 v1, 0x0

    .line 21
    .local v1, "pivotX":F
    const/4 v3, 0x0

    cmpg-float v3, p4, v3

    if-gez v3, :cond_1

    .line 22
    int-to-float v1, v0

    .line 23
    add-float v2, p4, v4

    .line 28
    :goto_0
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/PushTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v2, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleX:F

    .line 29
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/PushTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-static {p5, v1}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v4

    iput v4, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 30
    iget v3, p0, Lcom/vivo/vivotransition/algorithm/PushTransition;->mLayout_type:I

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/PushTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    int-to-float v4, v0

    mul-float/2addr v4, p4

    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 33
    :cond_0
    iget-object v3, p0, Lcom/vivo/vivotransition/algorithm/PushTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput-boolean v6, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 34
    return v6

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    sub-float v2, v4, p4

    goto :goto_0
.end method
