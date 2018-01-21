.class public Lcom/vivo/vivotransition/TransitionUtil;
.super Ljava/lang/Object;
.source "TransitionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getChildOffset(Landroid/view/ViewGroup;II)I
    .locals 5
    .param p0, "targetView"    # Landroid/view/ViewGroup;
    .param p1, "index"    # I
    .param p2, "pageSpacing"    # I

    .prologue
    .line 10
    const/4 v2, 0x0

    .line 11
    .local v2, "offset":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 13
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    int-to-float v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 11
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method public static getScrollProgress(Landroid/view/ViewGroup;ILandroid/view/View;II)F
    .locals 4
    .param p0, "targetView"    # Landroid/view/ViewGroup;
    .param p1, "transitionX"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "page"    # I
    .param p4, "pageSpacing"    # I

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, p4

    add-float v1, v2, v3

    .line 21
    .local v1, "totalDistance":F
    invoke-static {p0, p3, p4}, Lcom/vivo/vivotransition/TransitionUtil;->getChildOffset(Landroid/view/ViewGroup;II)I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 22
    .local v0, "result":F
    return v0
.end method
