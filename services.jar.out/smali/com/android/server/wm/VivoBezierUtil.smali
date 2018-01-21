.class public Lcom/android/server/wm/VivoBezierUtil;
.super Ljava/lang/Object;
.source "VivoBezierUtil.java"


# static fields
.field private static final FRAME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Launcher.BezierUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildBezierPoints(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "controlPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    const/4 v7, 0x0

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v2, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 38
    .local v1, "order":I
    const v0, 0x3a83126f    # 0.001f

    .line 39
    .local v0, "delta":F
    const/4 v3, 0x0

    .local v3, "t":F
    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    .line 40
    new-instance v4, Landroid/graphics/PointF;

    invoke-static {v1, v7, v3, p0}, Lcom/android/server/wm/VivoBezierUtil;->deCasteljauX(IIFLjava/util/ArrayList;)F

    move-result v5

    invoke-static {v1, v7, v3, p0}, Lcom/android/server/wm/VivoBezierUtil;->deCasteljauY(IIFLjava/util/ArrayList;)F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-float/2addr v3, v0

    goto :goto_0

    .line 43
    :cond_0
    return-object v2
.end method

.method public static varargs buildPath([Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 10
    .param p0, "points"    # [Landroid/graphics/PointF;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v3, "controlPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 50
    .local v1, "bezierPath":Landroid/graphics/Path;
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    move-object v0, p0

    .local v0, "arr$":[Landroid/graphics/PointF;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 52
    .local v6, "point":Landroid/graphics/PointF;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    .end local v6    # "point":Landroid/graphics/PointF;
    :cond_0
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {v3}, Lcom/android/server/wm/VivoBezierUtil;->buildBezierPoints(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 56
    .local v2, "bezierPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 57
    invoke-virtual {v1, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 59
    .restart local v6    # "point":Landroid/graphics/PointF;
    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 61
    .end local v6    # "point":Landroid/graphics/PointF;
    :cond_1
    invoke-virtual {v1, v9, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    return-object v1
.end method

.method private static deCasteljauX(IIFLjava/util/ArrayList;)F
    .locals 3
    .param p0, "i"    # I
    .param p1, "j"    # I
    .param p2, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;)F"
        }
    .end annotation

    .prologue
    .local p3, "controlPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 20
    sub-float/2addr v1, p2

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    .line 22
    :goto_0
    return v0

    :cond_0
    sub-float v0, v1, p2

    add-int/lit8 v1, p0, -0x1

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/wm/VivoBezierUtil;->deCasteljauX(IIFLjava/util/ArrayList;)F

    move-result v1

    mul-float/2addr v0, v1

    add-int/lit8 v1, p0, -0x1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, p2, p3}, Lcom/android/server/wm/VivoBezierUtil;->deCasteljauX(IIFLjava/util/ArrayList;)F

    move-result v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private static deCasteljauY(IIFLjava/util/ArrayList;)F
    .locals 3
    .param p0, "i"    # I
    .param p1, "j"    # I
    .param p2, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;)F"
        }
    .end annotation

    .prologue
    .local p3, "controlPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 29
    sub-float/2addr v1, p2

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    .line 31
    :goto_0
    return v0

    :cond_0
    sub-float v0, v1, p2

    add-int/lit8 v1, p0, -0x1

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/wm/VivoBezierUtil;->deCasteljauY(IIFLjava/util/ArrayList;)F

    move-result v1

    mul-float/2addr v0, v1

    add-int/lit8 v1, p0, -0x1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, p2, p3}, Lcom/android/server/wm/VivoBezierUtil;->deCasteljauY(IIFLjava/util/ArrayList;)F

    move-result v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    goto :goto_0
.end method
