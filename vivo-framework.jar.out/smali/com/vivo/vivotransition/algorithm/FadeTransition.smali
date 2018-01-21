.class public Lcom/vivo/vivotransition/algorithm/FadeTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "FadeTransition.java"


# static fields
.field private static final ALPHA_INTERPOLATOR_FACTOR:F = 0.5f

.field private static final EFFECT_FADE_MIN_ALPHA:F = 0.2f


# instance fields
.field private mAlphaInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 17
    const-string v0, "2D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/FadeTransition;->mAnimationType:Ljava/lang/String;

    .line 18
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/FadeTransition;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 19
    return-void
.end method


# virtual methods
.method public transform(IZZFLandroid/view/View;)Z
    .locals 5
    .param p1, "part"    # I
    .param p2, "isOverScrollFirst"    # Z
    .param p3, "isOverScrollLast"    # Z
    .param p4, "scrollProgress"    # F
    .param p5, "childView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 25
    iget-object v1, p0, Lcom/vivo/vivotransition/algorithm/FadeTransition;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 26
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/vivo/vivotransition/algorithm/FadeTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v0

    const v3, 0x3e4ccccd    # 0.2f

    add-float/2addr v2, v3

    iput v2, v1, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    .line 27
    iget-object v1, p0, Lcom/vivo/vivotransition/algorithm/FadeTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput-boolean v4, v1, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 29
    return v4
.end method
