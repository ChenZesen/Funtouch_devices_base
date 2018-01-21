.class Lcom/vivo/vivotransition/VivoTransition$ShadowView;
.super Landroid/view/View;
.source "VivoTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/vivotransition/VivoTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShadowView"
.end annotation


# instance fields
.field mBmp:Landroid/graphics/Bitmap;

.field mPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->mPaint:Landroid/graphics/Paint;

    .line 162
    return-void
.end method

.method static createShadow(Landroid/view/View;)Lcom/vivo/vivotransition/VivoTransition$ShadowView;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 110
    new-instance v0, Lcom/vivo/vivotransition/VivoTransition$ShadowView;

    invoke-direct {v0, p0}, Lcom/vivo/vivotransition/VivoTransition$ShadowView;-><init>(Landroid/view/View;)V

    .line 111
    .local v0, "shadowview":Lcom/vivo/vivotransition/VivoTransition$ShadowView;
    invoke-virtual {v0, p0}, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->copyView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 113
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clearBitmap()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    :cond_0
    return-void
.end method

.method public copyView(Landroid/view/View;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "flag":Z
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v2

    .line 126
    .local v2, "flag1":Z
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v3

    .line 127
    .local v3, "i":I
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 128
    invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 129
    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 134
    const-string v4, "VivoTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyView failed, view : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return v1

    .line 136
    :cond_1
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->mBmp:Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 138
    invoke-virtual {p1, v2}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 139
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 140
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->mBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "VivoTransition"

    const-string v1, "bitmap is null, should not come here!!! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "f"    # F

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    return-void
.end method
