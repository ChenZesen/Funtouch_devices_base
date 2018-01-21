.class public Lcom/vivo/common/animation/CustomBounceInterpolator;
.super Ljava/lang/Object;
.source "CustomBounceInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private A:D

.field private a:D

.field private b:D

.field private deltaK:D

.field private excursion:D

.field private k:D

.field private k0:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0}, Lcom/vivo/common/animation/CustomBounceInterpolator;->setParams()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/vivo/common/animation/CustomBounceInterpolator;->setParams()V

    .line 22
    return-void
.end method

.method private setParams()V
    .locals 6

    .prologue
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 25
    const-wide v0, 0x3fc1df46a2529d39L    # 0.13962634015954636

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->excursion:D

    .line 26
    const-wide v0, 0x3fda2e1077c7044fL    # 0.409061543436171

    iput-wide v0, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->k0:D

    .line 27
    const-wide v0, 0x3fc4f1a6c638d03fL    # 0.1636246173744684

    iput-wide v0, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->deltaK:D

    .line 28
    iget-wide v0, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->k0:D

    iput-wide v0, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->k:D

    .line 29
    const-wide v0, -0x3fd09585d6aac7a2L    # -15.707963267948966

    const-wide v2, 0x407422369d696f0aL    # 322.138333713389

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->a:D

    .line 30
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->a:D

    div-double v2, v4, v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->b:D

    .line 31
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 10
    .param p1, "input"    # F

    .prologue
    const-wide/high16 v8, 0x4040000000000000L    # 32.0

    .line 46
    const-wide v0, 0x3fe3333333333333L    # 0.6

    float-to-double v2, p1

    iget-wide v4, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->k:D

    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    iget-wide v4, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->a:D

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->b:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->A:D

    .line 47
    const-wide v0, 0x4053a28c59d5433bL    # 78.53981633974483

    const/high16 v2, 0x43400000    # 192.0f

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, p1

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->k:D

    .line 48
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->A:D

    float-to-double v4, p1

    iget-wide v6, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->k:D

    mul-double/2addr v4, v6

    mul-double/2addr v4, v8

    iget-wide v6, p0, Lcom/vivo/common/animation/CustomBounceInterpolator;->excursion:D

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
