.class public Lcom/vivo/vivotransition/AlgorithmUtil;
.super Ljava/lang/Object;
.source "AlgorithmUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cos(F)F
    .locals 1
    .param p0, "angle"    # F

    .prologue
    .line 55
    const v0, 0x3fc90fdb

    add-float/2addr v0, p0

    invoke-static {v0}, Lcom/vivo/vivotransition/AlgorithmUtil;->sin(F)F

    move-result v0

    return v0
.end method

.method public static getTransformRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "child"    # Landroid/view/View;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v1}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p0, v1}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotX(Landroid/view/View;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/vivo/vivotransition/AlgorithmUtil;->transformPivotY(Landroid/view/View;F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 15
    return-void
.end method

.method public static sin(F)F
    .locals 9
    .param p0, "angle"    # F

    .prologue
    const v7, 0x40c90fdb

    .line 33
    const v1, 0x40490fdb    # (float)Math.PI

    .line 34
    .local v1, "pi":F
    const v0, 0x40c90fdb

    .line 35
    .local v0, "doublePi":F
    const v2, 0x3fa2f983

    .line 36
    .local v2, "pi4":F
    const v5, 0x3ecf817a

    .line 37
    .local v5, "squarePi4":F
    const v3, 0x3e666666    # 0.225f

    .line 38
    .local v3, "s":F
    const/4 v4, 0x0

    .line 40
    .local v4, "sin":F
    const v6, -0x3fb6f025

    cmpg-float v6, p0, v6

    if-gez v6, :cond_1

    .line 41
    add-float/2addr p0, v7

    .line 46
    :cond_0
    :goto_0
    const v6, 0x3fa2f983

    mul-float/2addr v6, p0

    const v7, 0x3ecf817a

    mul-float/2addr v7, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 48
    const v6, 0x3e666666    # 0.225f

    mul-float/2addr v6, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 49
    return v4

    .line 42
    :cond_1
    const v6, 0x40490fdb    # (float)Math.PI

    cmpl-float v6, p0, v6

    if-lez v6, :cond_0

    .line 43
    sub-float/2addr p0, v7

    goto :goto_0
.end method

.method public static transformPivotX(Landroid/view/View;F)F
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pivotX"    # F

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    .line 20
    .local v0, "basePivotX":F
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    sub-float v3, p1, v0

    mul-float/2addr v2, v3

    add-float v1, v0, v2

    .line 21
    .local v1, "destinationPivotX":F
    return v1
.end method

.method public static transformPivotY(Landroid/view/View;F)F
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pivotY"    # F

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    .line 27
    .local v0, "basePivotY":F
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    sub-float v3, p1, v0

    mul-float/2addr v2, v3

    add-float v1, v0, v2

    .line 28
    .local v1, "destinationPivotY":F
    return v1
.end method
