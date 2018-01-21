.class public Lcom/vivo/alphaindex/ThumbSelector;
.super Landroid/widget/ImageButton;
.source "ThumbSelector.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;
    }
.end annotation


# instance fields
.field private isNeedUpdate:Z

.field private mAlphabet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphabetOffset:I

.field private mAlphabetPrePos:I

.field private mFooter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTextHeight:I

.field private mTextWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/alphaindex/ThumbSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const v0, 0x3010027

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/alphaindex/ThumbSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    .line 37
    iput v4, p0, Lcom/vivo/alphaindex/ThumbSelector;->mTextHeight:I

    .line 38
    iput v4, p0, Lcom/vivo/alphaindex/ThumbSelector;->mTextWidth:I

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabet:Ljava/util/List;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mHeader:Ljava/util/List;

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mFooter:Ljava/util/List;

    .line 44
    iput-boolean v5, p0, Lcom/vivo/alphaindex/ThumbSelector;->isNeedUpdate:Z

    .line 46
    const/4 v2, -0x1

    iput v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetPrePos:I

    .line 47
    iput v4, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetOffset:I

    .line 50
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mListener:Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 64
    .local v1, "density":F
    sget-object v2, Lcom/vivo/internal/R$styleable;->ThumbSelector:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method private createAlphabetBitmap(II)Landroid/graphics/Bitmap;
    .locals 25
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 234
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 235
    .local v5, "alphabetCanvas":Landroid/graphics/Canvas;
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 236
    .local v15, "map":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v16

    .line 238
    .local v16, "metrics":Landroid/graphics/Paint$FontMetrics;
    const/4 v11, 0x0

    .line 239
    .local v11, "index":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vivo/alphaindex/ThumbSelector;->mTextWidth:I

    .line 240
    .local v14, "letterWidth":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vivo/alphaindex/ThumbSelector;->mTextHeight:I

    .line 241
    .local v13, "letterHeight":I
    const/16 v17, 0x0

    .line 246
    .local v17, "offset":I
    invoke-virtual {v5, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mHeader:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 250
    .local v9, "head":Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 253
    .local v18, "srcRec":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    if-le v14, v0, :cond_0

    .line 254
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    sub-int v21, v14, v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v12, v0

    .line 258
    .local v12, "left":F
    :goto_1
    mul-int v21, v11, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetOffset:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 260
    .local v20, "top":F
    new-instance v6, Landroid/graphics/Rect;

    float-to-int v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    add-float v23, v23, v20

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v6, v0, v1, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 261
    .local v6, "dstRec":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v5, v9, v0, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 262
    add-int/lit8 v11, v11, 0x1

    .line 263
    goto :goto_0

    .line 256
    .end local v6    # "dstRec":Landroid/graphics/Rect;
    .end local v12    # "left":F
    .end local v20    # "top":F
    :cond_0
    const/4 v12, 0x0

    .restart local v12    # "left":F
    goto :goto_1

    .line 266
    .end local v9    # "head":Landroid/graphics/Bitmap;
    .end local v12    # "left":F
    .end local v18    # "srcRec":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v7, v0

    .line 267
    .local v7, "fontHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabet:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 268
    .local v19, "str":Ljava/lang/String;
    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    cmpl-float v21, v21, v22

    if-lez v21, :cond_2

    .line 269
    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v12, v21, v22

    .line 273
    .restart local v12    # "left":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 274
    .restart local v20    # "top":F
    if-le v13, v7, :cond_3

    .line 275
    mul-int v21, v11, v13

    sub-int v22, v13, v7

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    add-int v21, v21, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v21, v21, v22

    add-float v20, v20, v21

    .line 279
    :goto_4
    const-string v21, "Thumb"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " : [ "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v12, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 282
    add-int/lit8 v11, v11, 0x1

    .line 283
    goto/16 :goto_2

    .line 271
    .end local v12    # "left":F
    .end local v20    # "top":F
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "left":F
    goto :goto_3

    .line 277
    .restart local v20    # "top":F
    :cond_3
    add-int/lit8 v21, v11, 0x1

    mul-int v21, v21, v13

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v21, v21, v22

    add-float v20, v20, v21

    goto :goto_4

    .line 286
    .end local v12    # "left":F
    .end local v19    # "str":Ljava/lang/String;
    .end local v20    # "top":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mFooter:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 287
    .local v8, "foot":Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 290
    .restart local v18    # "srcRec":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    if-le v14, v0, :cond_5

    .line 291
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    sub-int v21, v14, v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v12, v0

    .line 295
    .restart local v12    # "left":F
    :goto_6
    mul-int v21, v11, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetOffset:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 297
    .restart local v20    # "top":F
    new-instance v6, Landroid/graphics/Rect;

    float-to-int v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    add-float v23, v23, v20

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v6, v0, v1, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 299
    .restart local v6    # "dstRec":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v5, v8, v0, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 300
    add-int/lit8 v11, v11, 0x1

    .line 301
    goto :goto_5

    .line 293
    .end local v6    # "dstRec":Landroid/graphics/Rect;
    .end local v12    # "left":F
    .end local v20    # "top":F
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "left":F
    goto :goto_6

    .line 303
    .end local v8    # "foot":Landroid/graphics/Bitmap;
    .end local v12    # "left":F
    .end local v18    # "srcRec":Landroid/graphics/Rect;
    :cond_6
    return-object v15
.end method

.method private createIfNeed(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getPaddingRight()I

    move-result v4

    sub-int v1, v2, v4

    .line 200
    .local v1, "contentWidth":I
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getPaddingBottom()I

    move-result v4

    sub-int v0, v2, v4

    .line 202
    .local v0, "contentHeight":I
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-boolean v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->isNeedUpdate:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    invoke-direct {p0}, Lcom/vivo/alphaindex/ThumbSelector;->itemCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/vivo/alphaindex/ThumbSelector;->itemCount()I

    move-result v2

    div-int v2, v0, v2

    iput v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mTextHeight:I

    .line 213
    iput v1, p0, Lcom/vivo/alphaindex/ThumbSelector;->mTextWidth:I

    .line 215
    invoke-direct {p0}, Lcom/vivo/alphaindex/ThumbSelector;->itemCount()I

    move-result v2

    iget v4, p0, Lcom/vivo/alphaindex/ThumbSelector;->mTextHeight:I

    mul-int/2addr v2, v4

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetOffset:I

    .line 216
    iget v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetOffset:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetOffset:I

    :goto_1
    iput v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetOffset:I

    .line 218
    const-string v2, "Thumb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TextHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/alphaindex/ThumbSelector;->mTextHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0, v1, v0}, Lcom/vivo/alphaindex/ThumbSelector;->createAlphabetBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/alphaindex/ThumbSelector;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    iput-boolean v3, p0, Lcom/vivo/alphaindex/ThumbSelector;->isNeedUpdate:Z

    goto :goto_0

    :cond_2
    move v2, v3

    .line 216
    goto :goto_1
.end method

.method private itemCount()I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/alphaindex/ThumbSelector;->mHeader:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/vivo/alphaindex/ThumbSelector;->mFooter:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addFooter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 377
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p0, p1}, Lcom/vivo/alphaindex/ThumbSelector;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/vivo/alphaindex/ThumbSelector;->mFooter:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_0
    return-object v0
.end method

.method public addFooter(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 368
    if-eqz p1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mFooter:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->updateThumbSelector()V

    .line 372
    :cond_0
    return-void
.end method

.method public addHeader(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 346
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p0, p1}, Lcom/vivo/alphaindex/ThumbSelector;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    invoke-virtual {p0, v0}, Lcom/vivo/alphaindex/ThumbSelector;->addHeader(Landroid/graphics/Bitmap;)V

    .line 351
    :cond_0
    return-object v0
.end method

.method public addHeader(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 337
    if-eqz p1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mHeader:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->updateThumbSelector()V

    .line 341
    :cond_0
    return-void
.end method

.method public delFooter(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mFooter:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->updateThumbSelector()V

    .line 390
    :cond_0
    return-void
.end method

.method public delHeader(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mHeader:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->updateThumbSelector()V

    .line 359
    :cond_0
    return-void
.end method

.method protected drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    return-object v0

    .line 79
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public getAlphabet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabet:Ljava/util/List;

    return-object v0
.end method

.method public getFooter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mFooter:Ljava/util/List;

    return-object v0
.end method

.method public getHeader()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mHeader:Ljava/util/List;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 189
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageButton;->onLayout(ZIIII)V

    .line 190
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/vivo/alphaindex/ThumbSelector;->createIfNeed(II)V

    .line 191
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 144
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 147
    .local v8, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 149
    .local v2, "heightMode":I
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getMeasuredWidth()I

    move-result v9

    .line 150
    .local v9, "widthSize":I
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getMeasuredHeight()I

    move-result v3

    .line 153
    .local v3, "heightSize":I
    if-eq v8, v12, :cond_2

    .line 154
    const/4 v7, 0x0

    .line 157
    .local v7, "width":I
    iget-object v10, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabet:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 158
    .local v6, "str":Ljava/lang/String;
    iget-object v10, p0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    if-ge v7, v10, :cond_0

    iget-object v10, p0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v7, v10

    :cond_0
    goto :goto_0

    .line 160
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 163
    if-gt v7, v9, :cond_4

    .line 167
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "width":I
    :cond_2
    :goto_1
    if-eq v2, v12, :cond_3

    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "height":I
    iget-object v10, p0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 170
    .local v5, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v10, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v11, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v0, v10

    .line 173
    .local v0, "fontHeight":I
    invoke-direct {p0}, Lcom/vivo/alphaindex/ThumbSelector;->itemCount()I

    move-result v10

    mul-int/2addr v10, v0

    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getPaddingBottom()I

    move-result v11

    add-int v1, v10, v11

    .line 176
    if-gt v1, v3, :cond_5

    .line 180
    .end local v0    # "fontHeight":I
    .end local v1    # "height":I
    .end local v5    # "metrics":Landroid/graphics/Paint$FontMetrics;
    :cond_3
    :goto_2
    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-super {p0, v10, v11}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 182
    return-void

    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "width":I
    :cond_4
    move v9, v7

    .line 163
    goto :goto_1

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "width":I
    .restart local v0    # "fontHeight":I
    .restart local v1    # "height":I
    .restart local v5    # "metrics":Landroid/graphics/Paint$FontMetrics;
    :cond_5
    move v3, v1

    .line 176
    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    iget v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetOffset:I

    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getPaddingTop()I

    move-result v3

    add-int v1, v2, v3

    .line 92
    .local v1, "alphabetStartPos":I
    invoke-direct {p0}, Lcom/vivo/alphaindex/ThumbSelector;->itemCount()I

    move-result v2

    if-lez v2, :cond_4

    iget v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mTextHeight:I

    if-lez v2, :cond_4

    int-to-float v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vivo/alphaindex/ThumbSelector;->mTextHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 95
    .local v0, "alphabetPos":I
    const-string v2, "Thumb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paddingTop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eventY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v2, "Thumb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alphabetNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/vivo/alphaindex/ThumbSelector;->itemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  alphbetPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/vivo/alphaindex/ThumbSelector;->itemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    .line 102
    :cond_0
    const/4 v0, -0x1

    .line 105
    :cond_1
    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 124
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/vivo/alphaindex/ThumbSelector;->setOnTouchEvent(Landroid/view/MotionEvent;I)V

    .line 128
    .end local v0    # "alphabetPos":I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 108
    .restart local v0    # "alphabetPos":I
    :pswitch_0
    iget-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mListener:Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;

    if-eqz v2, :cond_3

    .line 109
    iget-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mListener:Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;

    invoke-interface {v2, p0, v0}, Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;->onSlideStart(Landroid/view/View;I)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mListener:Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;

    if-eqz v2, :cond_3

    if-ltz v0, :cond_3

    iget v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetPrePos:I

    if-eq v0, v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mListener:Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;

    invoke-interface {v2, p0, v0}, Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 114
    iput v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetPrePos:I

    goto :goto_0

    .line 119
    :pswitch_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabetPrePos:I

    .line 120
    iget-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mListener:Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;

    if-eqz v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mListener:Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;

    invoke-interface {v2, p0}, Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;->onSlideEnd(Landroid/view/View;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphabet(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 322
    if-eqz p1, :cond_0

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/alphaindex/ThumbSelector;->mAlphabet:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->updateThumbSelector()V

    .line 328
    return-void
.end method

.method protected setOnTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "alphabetPos"    # I

    .prologue
    .line 137
    return-void
.end method

.method public setSlideListener(Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/vivo/alphaindex/ThumbSelector;->mListener:Lcom/vivo/alphaindex/ThumbSelector$OnSlideListener;

    .line 308
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->updateThumbSelector()V

    .line 401
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 409
    iget-object v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 410
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->updateThumbSelector()V

    .line 411
    return-void
.end method

.method public updateThumbSelector()V
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/alphaindex/ThumbSelector;->isNeedUpdate:Z

    .line 314
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ThumbSelector;->requestLayout()V

    .line 316
    :cond_0
    return-void
.end method
