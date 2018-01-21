.class public Lcom/vivo/vivotransition/interpolator/ZInterpolator;
.super Ljava/lang/Object;
.source "ZInterpolator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private focalLength:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "foc"    # F

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/vivo/vivotransition/interpolator/ZInterpolator;->focalLength:F

    .line 13
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    iget v0, p0, Lcom/vivo/vivotransition/interpolator/ZInterpolator;->focalLength:F

    iget v1, p0, Lcom/vivo/vivotransition/interpolator/ZInterpolator;->focalLength:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iget v1, p0, Lcom/vivo/vivotransition/interpolator/ZInterpolator;->focalLength:F

    iget v2, p0, Lcom/vivo/vivotransition/interpolator/ZInterpolator;->focalLength:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    div-float/2addr v0, v1

    return v0
.end method
