.class public Lcom/android/server/wm/TransformParam;
.super Ljava/lang/Object;
.source "TransformParam.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field public offsetx:F

.field public offsety:F

.field public scale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/TransformParam;->init(FFF)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/TransformParam;)V
    .locals 2
    .param p1, "param"    # Lcom/android/server/wm/TransformParam;

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/TransformParam;->init(FFF)V

    .line 30
    :goto_0
    return-void

    .line 27
    :cond_0
    iget v0, p1, Lcom/android/server/wm/TransformParam;->scale:F

    iput v0, p0, Lcom/android/server/wm/TransformParam;->scale:F

    .line 28
    iget v0, p1, Lcom/android/server/wm/TransformParam;->offsetx:F

    iput v0, p0, Lcom/android/server/wm/TransformParam;->offsetx:F

    .line 29
    iget v0, p1, Lcom/android/server/wm/TransformParam;->offsety:F

    iput v0, p0, Lcom/android/server/wm/TransformParam;->offsety:F

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final init(FFF)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "offsetx"    # F
    .param p3, "offsety"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/server/wm/TransformParam;->scale:F

    .line 34
    iput p2, p0, Lcom/android/server/wm/TransformParam;->offsetx:F

    .line 35
    iput p3, p0, Lcom/android/server/wm/TransformParam;->offsety:F

    .line 36
    return-void
.end method

.method public final init(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "paramRect1"    # Landroid/graphics/Rect;
    .param p2, "paramRect2"    # Landroid/graphics/Rect;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 43
    .local v8, "width1":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 44
    .local v1, "height1":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 45
    .local v9, "width2":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 49
    .local v2, "height2":I
    mul-int v10, v9, v1

    mul-int v11, v2, v8

    if-ge v10, v11, :cond_2

    .line 50
    mul-int v10, v1, v9

    div-int v4, v10, v8

    .line 51
    .local v4, "i2":I
    div-int v10, v9, v8

    int-to-float v0, v10

    .line 52
    .local v0, "f":F
    move v3, v9

    .line 60
    .local v3, "i1":I
    :goto_1
    sub-int v10, v2, v4

    div-int/lit8 v5, v10, 0x2

    .line 61
    .local v5, "i3":I
    sub-int v10, v9, v3

    div-int/lit8 v6, v10, 0x2

    .line 62
    .local v6, "i4":I
    iput v0, p0, Lcom/android/server/wm/TransformParam;->scale:F

    .line 63
    iget v10, p2, Landroid/graphics/Rect;->left:I

    iget v11, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    add-int/2addr v10, v6

    int-to-float v10, v10

    iput v10, p0, Lcom/android/server/wm/TransformParam;->offsetx:F

    .line 64
    iget v10, p2, Landroid/graphics/Rect;->top:I

    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    add-int/2addr v10, v5

    int-to-float v10, v10

    iput v10, p0, Lcom/android/server/wm/TransformParam;->offsety:F

    goto :goto_0

    .line 54
    .end local v0    # "f":F
    .end local v3    # "i1":I
    .end local v4    # "i2":I
    .end local v5    # "i3":I
    .end local v6    # "i4":I
    :cond_2
    mul-int v10, v8, v2

    div-int v7, v10, v1

    .line 55
    .local v7, "n":I
    div-int v10, v2, v1

    int-to-float v0, v10

    .line 56
    .restart local v0    # "f":F
    move v3, v7

    .line 57
    .restart local v3    # "i1":I
    move v4, v2

    .restart local v4    # "i2":I
    goto :goto_1
.end method

.method public final init(Lcom/android/server/wm/TransformParam;)V
    .locals 1
    .param p1, "paramTransformationSpec"    # Lcom/android/server/wm/TransformParam;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget v0, p1, Lcom/android/server/wm/TransformParam;->scale:F

    iput v0, p0, Lcom/android/server/wm/TransformParam;->scale:F

    .line 73
    iget v0, p1, Lcom/android/server/wm/TransformParam;->offsetx:F

    iput v0, p0, Lcom/android/server/wm/TransformParam;->offsetx:F

    .line 74
    iget v0, p1, Lcom/android/server/wm/TransformParam;->offsety:F

    iput v0, p0, Lcom/android/server/wm/TransformParam;->offsety:F

    goto :goto_0
.end method

.method public final noChange()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget v0, p0, Lcom/android/server/wm/TransformParam;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/TransformParam;->offsetx:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/TransformParam;->offsety:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/TransformParam;->init(FFF)V

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TransformParam;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offsetx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TransformParam;->offsetx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offsety:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TransformParam;->offsety:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
