.class public Lcom/vivo/content/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final BOTTOMDIRECTION:I = 0x3ec

.field private static final LEFTDIRECTION:I = 0x3e9

.field private static final RIGHTDIRECTION:I = 0x3ea

.field private static final TOPDIRECTION:I = 0x3eb

.field private static isOpenTheme:Z

.field private static mBLPoint:[I

.field private static mInstance:Lcom/vivo/content/ImageUtil;

.field private static mLTPoint:[I

.field private static mOldThemeId:I

.field private static mRTPoint:[I

.field private static mTLPoint:[I

.field private static sAlphaThreshold:I

.field private static sIconZoomFactor:F


# instance fields
.field private final ALPHA_REF:I

.field private final DEBUG:Z

.field private final MIN_OS_VERSION:F

.field private final SCALE_RATIO:F

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private final sCanvas:Landroid/graphics/Canvas;

.field sColorIndex:I

.field sColors:[I

.field private sIconBg:Landroid/graphics/drawable/Drawable;

.field private sIconBgHeight:I

.field private sIconBgRadius:I

.field private sIconBgRect:Landroid/graphics/Rect;

.field private sIconBgWidth:I

.field private sIconHeight:I

.field private sIconLeftOffset:I

.field private sIconTextureHeight:I

.field private sIconTextureWidth:I

.field private sIconTopOffset:I

.field private sIconWidth:I

.field private sIconWithBgHeight:I

.field private sIconWithBgWidth:I

.field private sInit:Z

.field private sMaskBitmap:Landroid/graphics/Bitmap;

.field private sMaskRadius:I

.field private sMaskRect:Landroid/graphics/Rect;

.field private sNeedRedraw:Z

.field private final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 92
    const/16 v0, 0x64

    sput v0, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    .line 93
    const v0, 0x3f8147ae    # 1.01f

    sput v0, Lcom/vivo/content/ImageUtil;->sIconZoomFactor:F

    .line 126
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/content/ImageUtil;->isOpenTheme:Z

    .line 469
    new-array v0, v1, [I

    sput-object v0, Lcom/vivo/content/ImageUtil;->mTLPoint:[I

    .line 470
    new-array v0, v1, [I

    sput-object v0, Lcom/vivo/content/ImageUtil;->mLTPoint:[I

    .line 471
    new-array v0, v1, [I

    sput-object v0, Lcom/vivo/content/ImageUtil;->mRTPoint:[I

    .line 472
    new-array v0, v1, [I

    sput-object v0, Lcom/vivo/content/ImageUtil;->mBLPoint:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "ImageUtil"

    iput-object v0, p0, Lcom/vivo/content/ImageUtil;->TAG:Ljava/lang/String;

    .line 75
    iput-boolean v4, p0, Lcom/vivo/content/ImageUtil;->DEBUG:Z

    .line 77
    iput-boolean v4, p0, Lcom/vivo/content/ImageUtil;->sInit:Z

    .line 78
    iput v1, p0, Lcom/vivo/content/ImageUtil;->sIconBgWidth:I

    .line 79
    iput v1, p0, Lcom/vivo/content/ImageUtil;->sIconBgHeight:I

    .line 81
    iput v1, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    .line 82
    iput v1, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    .line 83
    iput v1, p0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    .line 84
    iput v1, p0, Lcom/vivo/content/ImageUtil;->sIconHeight:I

    .line 85
    iput v1, p0, Lcom/vivo/content/ImageUtil;->sIconTextureWidth:I

    .line 86
    iput v1, p0, Lcom/vivo/content/ImageUtil;->sIconTextureHeight:I

    .line 88
    iput v4, p0, Lcom/vivo/content/ImageUtil;->sIconLeftOffset:I

    .line 89
    iput v4, p0, Lcom/vivo/content/ImageUtil;->sIconTopOffset:I

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vivo/content/ImageUtil;->mDensity:F

    .line 95
    const/16 v0, 0xc8

    iput v0, p0, Lcom/vivo/content/ImageUtil;->ALPHA_REF:I

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/content/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/vivo/content/ImageUtil;->sCanvas:Landroid/graphics/Canvas;

    .line 101
    iput v1, p0, Lcom/vivo/content/ImageUtil;->sIconBgRadius:I

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    .line 105
    iput v1, p0, Lcom/vivo/content/ImageUtil;->sMaskRadius:I

    .line 106
    iput-object v2, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    .line 108
    iput-boolean v4, p0, Lcom/vivo/content/ImageUtil;->sNeedRedraw:Z

    .line 110
    iput-object v2, p0, Lcom/vivo/content/ImageUtil;->sIconBg:Landroid/graphics/drawable/Drawable;

    .line 113
    iget-object v0, p0, Lcom/vivo/content/ImageUtil;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 117
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vivo/content/ImageUtil;->sColors:[I

    .line 118
    iput v4, p0, Lcom/vivo/content/ImageUtil;->sColorIndex:I

    .line 123
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vivo/content/ImageUtil;->MIN_OS_VERSION:F

    .line 127
    const v0, 0x3f3c3c3c

    iput v0, p0, Lcom/vivo/content/ImageUtil;->SCALE_RATIO:F

    .line 144
    iget-object v0, p0, Lcom/vivo/content/ImageUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 145
    iput-object p1, p0, Lcom/vivo/content/ImageUtil;->mContext:Landroid/content/Context;

    .line 150
    :cond_0
    return-void

    .line 117
    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method private clearInitFlags(I)V
    .locals 2
    .param p1, "themeId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/content/ImageUtil;->sInit:Z

    .line 1177
    iput-object v1, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 1178
    iput-object v1, p0, Lcom/vivo/content/ImageUtil;->sIconBg:Landroid/graphics/drawable/Drawable;

    .line 1179
    sput p1, Lcom/vivo/content/ImageUtil;->mOldThemeId:I

    .line 1180
    return-void
.end method

.method private static comfirmRadius(Landroid/graphics/Bitmap;)I
    .locals 24
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 538
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    new-array v2, v1, [I

    .line 539
    .local v2, "pixels":[I
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 541
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 542
    .local v23, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 543
    .local v10, "height":I
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v19, v0

    .line 544
    .local v19, "mTRPoint":[I
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v17, v0

    .line 545
    .local v17, "mLBPoint":[I
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v18, v0

    .line 546
    .local v18, "mRBPoint":[I
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 547
    .local v16, "mBRPoint":[I
    const/4 v13, 0x1

    .line 548
    .local v13, "keepGoing":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_2

    if-eqz v13, :cond_2

    .line 549
    add-int/lit8 v12, v23, -0x1

    .local v12, "j":I
    :goto_1
    if-ltz v12, :cond_1

    if-eqz v13, :cond_1

    .line 550
    mul-int v1, v23, v11

    add-int/2addr v1, v12

    aget v1, v2, v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 551
    .local v9, "alpha":I
    sget v1, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v9, v1, :cond_0

    .line 552
    const/4 v1, 0x0

    aput v12, v19, v1

    .line 553
    const/4 v1, 0x1

    aput v11, v19, v1

    .line 554
    const/4 v13, 0x0

    .line 549
    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 548
    .end local v9    # "alpha":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 559
    .end local v12    # "j":I
    :cond_2
    const/4 v13, 0x1

    .line 560
    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v23

    if-ge v11, v0, :cond_5

    if-eqz v13, :cond_5

    .line 561
    add-int/lit8 v12, v10, -0x1

    .restart local v12    # "j":I
    :goto_3
    if-ltz v12, :cond_4

    if-eqz v13, :cond_4

    .line 562
    mul-int v1, v23, v12

    add-int/2addr v1, v11

    aget v1, v2, v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 563
    .restart local v9    # "alpha":I
    sget v1, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v9, v1, :cond_3

    .line 564
    const/4 v1, 0x0

    aput v11, v17, v1

    .line 565
    const/4 v1, 0x1

    aput v12, v17, v1

    .line 566
    const/4 v13, 0x0

    .line 561
    :cond_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 560
    .end local v9    # "alpha":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 571
    .end local v12    # "j":I
    :cond_5
    const/4 v13, 0x1

    .line 572
    add-int/lit8 v11, v23, -0x1

    :goto_4
    if-ltz v11, :cond_8

    if-eqz v13, :cond_8

    .line 573
    add-int/lit8 v12, v10, -0x1

    .restart local v12    # "j":I
    :goto_5
    if-ltz v12, :cond_7

    if-eqz v13, :cond_7

    .line 574
    mul-int v1, v23, v12

    add-int/2addr v1, v11

    aget v1, v2, v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 575
    .restart local v9    # "alpha":I
    sget v1, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v9, v1, :cond_6

    .line 576
    const/4 v1, 0x0

    aput v11, v18, v1

    .line 577
    const/4 v1, 0x1

    aput v12, v18, v1

    .line 578
    const/4 v13, 0x0

    .line 573
    :cond_6
    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    .line 572
    .end local v9    # "alpha":I
    :cond_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 583
    .end local v12    # "j":I
    :cond_8
    const/4 v13, 0x1

    .line 584
    add-int/lit8 v11, v10, -0x1

    :goto_6
    if-ltz v11, :cond_b

    if-eqz v13, :cond_b

    .line 585
    add-int/lit8 v12, v23, -0x1

    .restart local v12    # "j":I
    :goto_7
    if-ltz v12, :cond_a

    if-eqz v13, :cond_a

    .line 586
    mul-int v1, v23, v11

    add-int/2addr v1, v12

    aget v1, v2, v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 587
    .restart local v9    # "alpha":I
    sget v1, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v9, v1, :cond_9

    .line 588
    const/4 v1, 0x0

    aput v12, v16, v1

    .line 589
    const/4 v1, 0x1

    aput v11, v16, v1

    .line 590
    const/4 v13, 0x0

    .line 585
    :cond_9
    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    .line 584
    .end local v9    # "alpha":I
    :cond_a
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 594
    .end local v12    # "j":I
    :cond_b
    sget-object v1, Lcom/vivo/content/ImageUtil;->mTLPoint:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    sget-object v3, Lcom/vivo/content/ImageUtil;->mLTPoint:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget-object v3, Lcom/vivo/content/ImageUtil;->mTLPoint:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/vivo/content/ImageUtil;->mLTPoint:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 595
    .local v15, "ltRadius":I
    const/4 v1, 0x0

    aget v1, v19, v1

    sget-object v3, Lcom/vivo/content/ImageUtil;->mRTPoint:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    aget v3, v19, v3

    sget-object v4, Lcom/vivo/content/ImageUtil;->mRTPoint:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 596
    .local v21, "rtRadius":I
    const/4 v1, 0x0

    aget v1, v17, v1

    sget-object v3, Lcom/vivo/content/ImageUtil;->mBLPoint:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    aget v3, v17, v3

    sget-object v4, Lcom/vivo/content/ImageUtil;->mBLPoint:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 597
    .local v14, "lbRadius":I
    const/4 v1, 0x0

    aget v1, v18, v1

    const/4 v3, 0x0

    aget v3, v16, v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    aget v3, v18, v3

    const/4 v4, 0x1

    aget v4, v16, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 598
    .local v20, "rbRadius":I
    move/from16 v0, v20

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v0, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 600
    .local v22, "temRadius":I
    return v22
.end method

.method private static computeDiagonals([DLandroid/graphics/Rect;[ILandroid/graphics/Bitmap;)V
    .locals 25
    .param p0, "diagonals"    # [D
    .param p1, "outline"    # Landroid/graphics/Rect;
    .param p2, "pixels"    # [I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 646
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 647
    .local v22, "left":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    .line 648
    .local v23, "right":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 649
    .local v24, "top":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 650
    .local v15, "bottom":I
    const/4 v2, 0x2

    new-array v12, v2, [I

    .line 651
    .local v12, "LTPoint":[I
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 652
    .local v13, "RTPoint":[I
    const/4 v2, 0x2

    new-array v11, v2, [I

    .line 653
    .local v11, "BRPoint":[I
    const/4 v2, 0x2

    new-array v10, v2, [I

    .line 655
    .local v10, "BLPoint":[I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 656
    .local v5, "width":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 658
    .local v9, "height":I
    mul-int v2, v5, v9

    new-array v0, v2, [I

    move-object/from16 p2, v0

    .line 659
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 662
    move/from16 v20, v22

    .line 663
    .local v20, "i":I
    move/from16 v21, v24

    .line 664
    .local v21, "j":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    move/from16 v0, v21

    if-ge v0, v15, :cond_0

    .line 665
    mul-int v2, v21, v5

    add-int v2, v2, v20

    aget v2, p2, v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v14, v2, 0xff

    .line 666
    .local v14, "alpha":I
    sget v2, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v14, v2, :cond_4

    .line 667
    const/4 v2, 0x0

    aput v20, v12, v2

    .line 668
    const/4 v2, 0x1

    aput v21, v12, v2

    .line 675
    .end local v14    # "alpha":I
    :cond_0
    add-int/lit8 v20, v23, -0x1

    .line 676
    add-int/lit8 v21, v15, -0x1

    .line 677
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    move/from16 v0, v21

    move/from16 v1, v24

    if-lt v0, v1, :cond_1

    .line 678
    mul-int v2, v21, v5

    add-int v2, v2, v20

    aget v2, p2, v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v14, v2, 0xff

    .line 679
    .restart local v14    # "alpha":I
    sget v2, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v14, v2, :cond_5

    .line 680
    const/4 v2, 0x0

    aput v20, v11, v2

    .line 681
    const/4 v2, 0x1

    aput v21, v11, v2

    .line 688
    .end local v14    # "alpha":I
    :cond_1
    move/from16 v20, v23

    .line 689
    move/from16 v21, v24

    .line 690
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    move/from16 v0, v21

    if-ge v0, v15, :cond_2

    .line 691
    mul-int v2, v21, v5

    add-int v2, v2, v20

    aget v2, p2, v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v14, v2, 0xff

    .line 692
    .restart local v14    # "alpha":I
    sget v2, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v14, v2, :cond_6

    .line 693
    const/4 v2, 0x0

    aput v20, v13, v2

    .line 694
    const/4 v2, 0x1

    aput v21, v13, v2

    .line 701
    .end local v14    # "alpha":I
    :cond_2
    move/from16 v20, v22

    .line 702
    add-int/lit8 v21, v15, -0x1

    .line 703
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    move/from16 v0, v21

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    .line 704
    mul-int v2, v21, v5

    add-int v2, v2, v20

    aget v2, p2, v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v14, v2, 0xff

    .line 705
    .restart local v14    # "alpha":I
    sget v2, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v14, v2, :cond_7

    .line 706
    const/4 v2, 0x0

    aput v20, v10, v2

    .line 707
    const/4 v2, 0x1

    aput v21, v10, v2

    .line 715
    .end local v14    # "alpha":I
    :cond_3
    const-wide/16 v18, 0x0

    .local v18, "diagonalP":D
    const-wide/16 v16, 0x0

    .line 716
    .local v16, "diagonalN":D
    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x0

    aget v3, v12, v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    aget v3, v11, v3

    const/4 v4, 0x0

    aget v4, v12, v4

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v11, v3

    const/4 v4, 0x1

    aget v4, v12, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v11, v4

    const/4 v6, 0x1

    aget v6, v12, v6

    sub-int/2addr v4, v6

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 718
    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x0

    aget v3, v13, v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x0

    aget v4, v13, v4

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v13, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    const/4 v6, 0x1

    aget v6, v13, v6

    sub-int/2addr v4, v6

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    .line 720
    const/4 v2, 0x0

    aput-wide v18, p0, v2

    .line 721
    const/4 v2, 0x1

    aput-wide v16, p0, v2

    .line 722
    return-void

    .line 671
    .end local v16    # "diagonalN":D
    .end local v18    # "diagonalP":D
    .restart local v14    # "alpha":I
    :cond_4
    add-int/lit8 v20, v20, 0x1

    .line 672
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 684
    :cond_5
    add-int/lit8 v20, v20, -0x1

    .line 685
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_1

    .line 697
    :cond_6
    add-int/lit8 v20, v20, -0x1

    .line 698
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 710
    :cond_7
    add-int/lit8 v20, v20, 0x1

    .line 711
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_3
.end method

.method static computeOutlineRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 22
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v4, v6

    new-array v5, v4, [I

    .line 477
    .local v5, "pixels":[I
    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 480
    .local v21, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 481
    .local v14, "height":I
    const/16 v18, 0x0

    .local v18, "left":I
    move/from16 v19, v21

    .local v19, "right":I
    const/16 v20, 0x0

    .local v20, "top":I
    move v13, v14

    .line 482
    .local v13, "bottom":I
    const/16 v17, 0x1

    .line 483
    .local v17, "keepGoing":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_2

    if-eqz v17, :cond_2

    .line 484
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    if-eqz v17, :cond_1

    .line 485
    mul-int v4, v21, v15

    add-int v4, v4, v16

    aget v4, v5, v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    .line 486
    .local v12, "alpha":I
    sget v4, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v12, v4, :cond_0

    .line 487
    move/from16 v20, v15

    .line 488
    sget-object v4, Lcom/vivo/content/ImageUtil;->mTLPoint:[I

    const/4 v6, 0x0

    aput v16, v4, v6

    .line 489
    sget-object v4, Lcom/vivo/content/ImageUtil;->mTLPoint:[I

    const/4 v6, 0x1

    aput v15, v4, v6

    .line 490
    const/16 v17, 0x0

    .line 484
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 483
    .end local v12    # "alpha":I
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 495
    .end local v16    # "j":I
    :cond_2
    const/16 v17, 0x1

    .line 496
    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v21

    if-ge v15, v0, :cond_5

    if-eqz v17, :cond_5

    .line 497
    const/16 v16, 0x0

    .restart local v16    # "j":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v14, :cond_4

    if-eqz v17, :cond_4

    .line 498
    mul-int v4, v21, v16

    add-int/2addr v4, v15

    aget v4, v5, v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    .line 499
    .restart local v12    # "alpha":I
    sget v4, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v12, v4, :cond_3

    .line 500
    move/from16 v18, v15

    .line 501
    sget-object v4, Lcom/vivo/content/ImageUtil;->mLTPoint:[I

    const/4 v6, 0x0

    aput v15, v4, v6

    .line 502
    sget-object v4, Lcom/vivo/content/ImageUtil;->mLTPoint:[I

    const/4 v6, 0x1

    aput v16, v4, v6

    .line 503
    const/16 v17, 0x0

    .line 497
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 496
    .end local v12    # "alpha":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 508
    .end local v16    # "j":I
    :cond_5
    const/16 v17, 0x1

    .line 509
    add-int/lit8 v15, v21, -0x1

    :goto_4
    if-ltz v15, :cond_8

    if-eqz v17, :cond_8

    .line 510
    const/16 v16, 0x0

    .restart local v16    # "j":I
    :goto_5
    move/from16 v0, v16

    if-ge v0, v14, :cond_7

    if-eqz v17, :cond_7

    .line 511
    mul-int v4, v21, v16

    add-int/2addr v4, v15

    aget v4, v5, v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    .line 512
    .restart local v12    # "alpha":I
    sget v4, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v12, v4, :cond_6

    .line 513
    move/from16 v19, v15

    .line 514
    sget-object v4, Lcom/vivo/content/ImageUtil;->mRTPoint:[I

    const/4 v6, 0x0

    aput v15, v4, v6

    .line 515
    sget-object v4, Lcom/vivo/content/ImageUtil;->mRTPoint:[I

    const/4 v6, 0x1

    aput v16, v4, v6

    .line 516
    const/16 v17, 0x0

    .line 510
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 509
    .end local v12    # "alpha":I
    :cond_7
    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 521
    .end local v16    # "j":I
    :cond_8
    const/16 v17, 0x1

    .line 522
    add-int/lit8 v15, v14, -0x1

    :goto_6
    if-ltz v15, :cond_b

    if-eqz v17, :cond_b

    .line 523
    const/16 v16, 0x0

    .restart local v16    # "j":I
    :goto_7
    add-int/lit8 v4, v21, -0x1

    move/from16 v0, v16

    if-gt v0, v4, :cond_a

    if-eqz v17, :cond_a

    .line 524
    mul-int v4, v21, v15

    add-int v4, v4, v16

    aget v4, v5, v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    .line 525
    .restart local v12    # "alpha":I
    sget v4, Lcom/vivo/content/ImageUtil;->sAlphaThreshold:I

    if-le v12, v4, :cond_9

    .line 526
    move v13, v15

    .line 527
    sget-object v4, Lcom/vivo/content/ImageUtil;->mBLPoint:[I

    const/4 v6, 0x0

    aput v16, v4, v6

    .line 528
    sget-object v4, Lcom/vivo/content/ImageUtil;->mBLPoint:[I

    const/4 v6, 0x1

    aput v15, v4, v6

    .line 529
    const/16 v17, 0x0

    .line 523
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 522
    .end local v12    # "alpha":I
    :cond_a
    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    .line 533
    .end local v16    # "j":I
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 535
    return-void
.end method

.method private static computeRadius([ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 26
    .param p0, "pixels"    # [I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 605
    .local v21, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 606
    .local v9, "height":I
    const/4 v13, -0x1

    .line 607
    .local v13, "radius":I
    const/4 v11, 0x0

    .local v11, "left":I
    move/from16 v17, v21

    .local v17, "right":I
    const/16 v19, 0x0

    .local v19, "top":I
    move v4, v9

    .line 609
    .local v4, "bottom":I
    const/16 v20, 0x1

    .local v20, "topFlat":Z
    const/4 v12, 0x1

    .local v12, "leftFlat":Z
    const/4 v5, 0x1

    .local v5, "bottomFlat":Z
    const/16 v18, 0x1

    .line 610
    .local v18, "rightFlat":Z
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v8, v0, [D

    .line 611
    .local v8, "diagonals":[D
    const/4 v10, 0x0

    .line 612
    .local v10, "isSymmetrical":Z
    invoke-static/range {p1 .. p2}, Lcom/vivo/content/ImageUtil;->computeOutlineRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 614
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v8, v0, v1, v2}, Lcom/vivo/content/ImageUtil;->computeDiagonals([DLandroid/graphics/Rect;[ILandroid/graphics/Bitmap;)V

    .line 615
    const/16 v22, 0x0

    aget-wide v22, v8, v22

    const/16 v24, 0x1

    aget-wide v24, v8, v24

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v6, v22, v24

    .line 616
    .local v6, "diagonal":D
    const/16 v22, 0x0

    aget-wide v22, v8, v22

    const/16 v24, 0x1

    aget-wide v24, v8, v24

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_0

    .line 617
    const/4 v10, 0x1

    .line 619
    :cond_0
    const/4 v14, -0x1

    .line 620
    .local v14, "radiusX":I
    const/4 v15, -0x1

    .line 621
    .local v15, "radiusY":I
    if-eqz v10, :cond_1

    .line 622
    sget-object v22, Lcom/vivo/content/ImageUtil;->mTLPoint:[I

    const/16 v23, 0x0

    aget v22, v22, v23

    sget-object v23, Lcom/vivo/content/ImageUtil;->mLTPoint:[I

    const/16 v24, 0x0

    aget v23, v23, v24

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 623
    sget-object v22, Lcom/vivo/content/ImageUtil;->mTLPoint:[I

    const/16 v23, 0x1

    aget v22, v22, v23

    sget-object v23, Lcom/vivo/content/ImageUtil;->mLTPoint:[I

    const/16 v24, 0x1

    aget v23, v23, v24

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 624
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 629
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    mul-float v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v16, v22, v23

    .line 636
    .local v16, "ratio":F
    :goto_1
    const v22, 0x3f8ccccd    # 1.1f

    cmpg-float v22, v16, v22

    if-gez v22, :cond_3

    div-int/lit8 v22, v21, 0x3

    move/from16 v0, v22

    if-ge v13, v0, :cond_3

    div-int/lit8 v22, v9, 0x3

    move/from16 v0, v22

    if-ge v13, v0, :cond_3

    sub-int v22, v14, v15

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 641
    .end local v13    # "radius":I
    :goto_2
    return v13

    .line 626
    .end local v16    # "ratio":F
    .restart local v13    # "radius":I
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/vivo/content/ImageUtil;->comfirmRadius(Landroid/graphics/Bitmap;)I

    move-result v13

    goto :goto_0

    .line 629
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    mul-float v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v16, v22, v23

    goto :goto_1

    .line 641
    .restart local v16    # "ratio":F
    :cond_3
    const/4 v13, -0x1

    goto :goto_2
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "srcIconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 725
    iput-object p2, p0, Lcom/vivo/content/ImageUtil;->mContext:Landroid/content/Context;

    .line 726
    const/4 v11, 0x0

    .line 727
    .local v11, "mOut":Landroid/graphics/Bitmap;
    iget-boolean v0, p0, Lcom/vivo/content/ImageUtil;->sInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/content/ImageUtil;->sIconBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 728
    :cond_0
    invoke-direct {p0, p2}, Lcom/vivo/content/ImageUtil;->initStatics(Landroid/content/Context;)V

    .line 729
    iget-boolean v0, p0, Lcom/vivo/content/ImageUtil;->sInit:Z

    if-nez v0, :cond_1

    .line 730
    invoke-direct {p0, p1}, Lcom/vivo/content/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 751
    :goto_0
    return-object v0

    .line 732
    :cond_1
    invoke-direct {p0, p1}, Lcom/vivo/content/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 733
    .local v6, "iconBitmap":Landroid/graphics/Bitmap;
    const/4 v10, -0x1

    .line 735
    .local v10, "iconRadius":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 736
    .local v3, "iconRect":Landroid/graphics/Rect;
    invoke-static {v6, v3}, Lcom/vivo/content/ImageUtil;->computeOutlineRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 739
    invoke-static {v6, v3}, Lcom/vivo/content/ImageUtil;->getRadius(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v10

    .line 742
    iget-boolean v0, p0, Lcom/vivo/content/ImageUtil;->sNeedRedraw:Z

    if-nez v0, :cond_2

    .line 743
    iget-object v4, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/vivo/content/ImageUtil;->sIconBg:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    int-to-float v7, v10

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/vivo/content/ImageUtil;->createNonDefalutBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    .end local v6    # "iconBitmap":Landroid/graphics/Bitmap;
    move-result-object v11

    :goto_1
    move-object v0, v11

    .line 751
    goto :goto_0

    .line 747
    .restart local v6    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v0, p0, Lcom/vivo/content/ImageUtil;->sIconBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/vivo/content/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v4, p0

    move-object v5, p2

    move-object v7, p1

    move-object v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/vivo/content/ImageUtil;->createNormalBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_1
.end method

.method private createNonDefalutBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "iconRect"    # Landroid/graphics/Rect;
    .param p4, "maskBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "iconBg"    # Landroid/graphics/drawable/Drawable;
    .param p6, "scale"    # F
    .param p7, "iconRadius"    # F

    .prologue
    .line 909
    const/high16 v8, 0x3f800000    # 1.0f

    .line 910
    .local v8, "factScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgHeight:I

    move/from16 v27, v0

    sget-object v28, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v26 .. v28}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 911
    .local v20, "maskedBitmap":Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Canvas;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Canvas;-><init>()V

    .line 912
    .local v16, "maskCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f800000    # 1.0f

    mul-float v26, v26, v27

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v19, v26, v27

    .line 918
    .local v19, "maskWidthScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f800000    # 1.0f

    mul-float v26, v26, v27

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v17, v26, v27

    .line 922
    .local v17, "maskHeightScale":F
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 923
    .local v18, "maskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v19

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v17

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v17

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_0

    .line 929
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconLeftOffset:I

    move/from16 v27, v0

    add-int v13, v26, v27

    .line 930
    .local v13, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconTopOffset:I

    move/from16 v27, v0

    add-int v25, v26, v27

    .line 931
    .local v25, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    move/from16 v26, v0

    add-int v26, v26, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    move/from16 v27, v0

    add-int v27, v27, v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 934
    .end local v13    # "left":I
    .end local v25    # "top":I
    :cond_0
    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v26, p7, v26

    if-eqz v26, :cond_2

    .line 935
    const/16 v26, 0x0

    cmpl-float v26, p6, v26

    if-lez v26, :cond_1

    .line 940
    :goto_0
    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3ff0cccccccccccdL    # 1.05

    cmpl-double v26, v26, v28

    if-nez v26, :cond_4

    .line 941
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, p6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, p6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 949
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v8

    sub-float v14, v26, v27

    .line 950
    .local v14, "marginLeft":F
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v8

    sub-float v15, v26, v27

    .line 952
    .local v15, "marginTop":F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/vivo/content/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 953
    .local v9, "iconBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 954
    .local v12, "iconWidth":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 956
    .local v11, "iconHeight":I
    int-to-float v0, v12

    move/from16 v26, v0

    mul-float v24, v8, v26

    .line 957
    .local v24, "targetWidth":F
    int-to-float v0, v11

    move/from16 v26, v0

    mul-float v23, v8, v26

    .line 959
    .local v23, "targetHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 960
    float-to-int v0, v14

    move/from16 v26, v0

    float-to-int v0, v15

    move/from16 v27, v0

    add-float v28, v14, v24

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v15, v23

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 962
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 965
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 966
    .local v21, "matrix":Landroid/graphics/Matrix;
    new-instance v22, Landroid/graphics/Paint;

    const/16 v26, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 967
    .local v22, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 968
    new-instance v26, Landroid/graphics/PorterDuffXfermode;

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v26 .. v27}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 969
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 971
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconTextureWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconTextureHeight:I

    move/from16 v27, v0

    sget-object v28, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v26 .. v28}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 972
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    .line 973
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconTextureWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgWidth:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    div-int/lit8 v13, v26, 0x2

    .line 976
    .restart local v13    # "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconTextureHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgHeight:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    div-int/lit8 v25, v26, 0x2

    .line 977
    .restart local v25    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 978
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgWidth:I

    move/from16 v26, v0

    add-int v26, v26, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgHeight:I

    move/from16 v27, v0

    add-int v27, v27, v25

    move-object/from16 v0, p5

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 979
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 981
    int-to-float v0, v13

    move/from16 v26, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 983
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x30201dc

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 984
    .local v10, "iconBorder":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgWidth:I

    move/from16 v26, v0

    add-int v26, v26, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgHeight:I

    move/from16 v27, v0

    add-int v27, v27, v25

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v10, v13, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 985
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 987
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 988
    const/16 v26, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 989
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 991
    return-object v6

    .line 935
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "iconBorder":Landroid/graphics/drawable/Drawable;
    .end local v11    # "iconHeight":I
    .end local v12    # "iconWidth":I
    .end local v13    # "left":I
    .end local v14    # "marginLeft":F
    .end local v15    # "marginTop":F
    .end local v21    # "matrix":Landroid/graphics/Matrix;
    .end local v22    # "paint":Landroid/graphics/Paint;
    .end local v23    # "targetHeight":F
    .end local v24    # "targetWidth":F
    .end local v25    # "top":I
    :cond_1
    const p6, 0x3f8ccccd    # 1.1f

    goto/16 :goto_0

    .line 937
    :cond_2
    const/16 v26, 0x0

    cmpl-float v26, p6, v26

    if-lez v26, :cond_3

    :goto_2
    goto/16 :goto_0

    :cond_3
    const p6, 0x3f59999a    # 0.85f

    goto :goto_2

    .line 944
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, p6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, p6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v8

    goto/16 :goto_1
.end method

.method private createNormalBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "srcIconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "iconRect"    # Landroid/graphics/Rect;
    .param p5, "iconBgBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "iconRadius"    # I

    .prologue
    .line 761
    const/4 v8, 0x0

    .line 762
    .local v8, "icon":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 763
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 764
    .local v6, "canvasStatus1":I
    new-instance v12, Landroid/graphics/Paint;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 765
    .local v12, "mPaint":Landroid/graphics/Paint;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v10, v0, [I

    .line 766
    .local v10, "iconCenter":[I
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v9, v0, [I

    .line 767
    .local v9, "iconBgCenter":[I
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v13, v0, [I

    .line 768
    .local v13, "maskCenter":[I
    const/4 v7, 0x0

    .line 771
    .local v7, "finalIcon":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 772
    .local v11, "mOut":Landroid/graphics/Bitmap;
    const/16 v19, -0x1

    move/from16 v0, p6

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 773
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/vivo/content/ImageUtil;->getRadius(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    .line 776
    :cond_0
    const/16 v19, -0x1

    move/from16 v0, p6

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 777
    const/high16 v16, 0x3f800000    # 1.0f

    .line 778
    .local v16, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const v20, 0x3f59999a    # 0.85f

    mul-float v16, v19, v20

    .line 780
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v16

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v16

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 782
    invoke-virtual {v5, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 784
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v16

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 786
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 790
    move-object/from16 v0, p4

    invoke-static {v8, v0}, Lcom/vivo/content/ImageUtil;->computeOutlineRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 791
    const/16 v19, 0x0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v10, v19

    .line 792
    const/16 v19, 0x1

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v10, v19

    .line 793
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v13, v19

    .line 794
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v13, v19

    .line 796
    const/16 v19, 0x0

    aget v19, v10, v19

    const/16 v20, 0x0

    aget v20, v13, v20

    sub-int v14, v19, v20

    .line 797
    .local v14, "offsetX":I
    const/16 v19, 0x1

    aget v19, v10, v19

    const/16 v20, 0x1

    aget v20, v13, v20

    sub-int v15, v19, v20

    .line 799
    .local v15, "offsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 800
    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 801
    invoke-virtual {v5, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 802
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v8, v0, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 803
    new-instance v19, Landroid/graphics/PorterDuffXfermode;

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v19 .. v20}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    int-to-float v0, v15

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 846
    .end local v16    # "scale":F
    :goto_0
    move-object/from16 v0, p4

    invoke-static {v7, v0}, Lcom/vivo/content/ImageUtil;->computeOutlineRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 847
    const/16 v19, 0x0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v10, v19

    .line 848
    const/16 v19, 0x1

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v10, v19

    .line 849
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v9, v19

    .line 850
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v9, v19

    .line 851
    const/16 v19, 0x0

    aget v19, v9, v19

    const/16 v20, 0x0

    aget v20, v10, v20

    sub-int v14, v19, v20

    .line 852
    const/16 v19, 0x1

    aget v19, v9, v19

    const/16 v20, 0x1

    aget v20, v10, v20

    sub-int v15, v19, v20

    .line 855
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 856
    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 857
    invoke-virtual {v5, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 858
    invoke-virtual {v12}, Landroid/graphics/Paint;->reset()V

    .line 859
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 860
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 861
    const/16 v19, -0x1

    move/from16 v0, p6

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 862
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v7, v0, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 868
    :goto_1
    return-object v11

    .line 807
    .end local v14    # "offsetX":I
    .end local v15    # "offsetY":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sget v20, Lcom/vivo/content/ImageUtil;->sIconZoomFactor:F

    mul-float v19, v19, v20

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v17, v19, v20

    .line 808
    .local v17, "scaleX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sget v20, Lcom/vivo/content/ImageUtil;->sIconZoomFactor:F

    mul-float v19, v19, v20

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v18, v19, v20

    .line 809
    .local v18, "scaleY":F
    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgRadius:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-gtz v19, :cond_2

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconBgRadius:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_3

    .line 814
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/vivo/content/ImageUtil;->restoreBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 815
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    .end local p3    # "srcIconDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 818
    .restart local p3    # "srcIconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v17

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v18

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 820
    invoke-virtual {v5, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 822
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v17

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 824
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 827
    move-object/from16 v0, p4

    invoke-static {v8, v0}, Lcom/vivo/content/ImageUtil;->computeOutlineRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 828
    const/16 v19, 0x0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v10, v19

    .line 829
    const/16 v19, 0x1

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v10, v19

    .line 830
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v13, v19

    .line 831
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    aput v20, v13, v19

    .line 833
    const/16 v19, 0x0

    aget v19, v13, v19

    const/16 v20, 0x0

    aget v20, v10, v20

    sub-int v14, v19, v20

    .line 834
    .restart local v14    # "offsetX":I
    const/16 v19, 0x1

    aget v19, v13, v19

    const/16 v20, 0x1

    aget v20, v10, v20

    sub-int v15, v19, v20

    .line 836
    .restart local v15    # "offsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 837
    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 838
    invoke-virtual {v5, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 840
    new-instance v19, Landroid/graphics/PorterDuffXfermode;

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v19 .. v20}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 841
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v8, v0, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 864
    .end local v17    # "scaleX":F
    .end local v18    # "scaleY":F
    :cond_4
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 865
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v7, v0, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v12, 0x0

    .line 448
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 449
    .local v4, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 450
    .local v3, "h":I
    if-lez v4, :cond_0

    if-gtz v3, :cond_1

    .line 451
    :cond_0
    const-string v5, "ImageUtil"

    const-string v6, "drawableToBitmap error : get drawable width and height error!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget v4, p0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    .line 453
    iget v3, p0, Lcom/vivo/content/ImageUtil;->sIconHeight:I

    .line 455
    :cond_1
    iget v5, p0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/vivo/content/ImageUtil;->sIconHeight:I

    if-lez v5, :cond_2

    .line 456
    mul-int v5, v4, v3

    int-to-double v6, v5

    iget v5, p0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconHeight:I

    mul-int/2addr v5, v8

    int-to-double v8, v5

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-lez v5, :cond_2

    .line 457
    iget v4, p0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    .line 458
    iget v3, p0, Lcom/vivo/content/ImageUtil;->sIconHeight:I

    .line 461
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 462
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 463
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 464
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v12, v12, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 465
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 466
    return-object v0
.end method

.method private static getFactIconSize(Landroid/graphics/Bitmap;I)I
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 1269
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1270
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1271
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pix":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 1272
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1273
    const/4 v8, 0x0

    .line 1274
    .local v8, "size":I
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 1275
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_0
    if-ge v9, v3, :cond_b

    .line 1276
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_1
    if-ge v10, v7, :cond_0

    .line 1277
    mul-int v0, v10, v3

    add-int/2addr v0, v9

    aget v0, v1, v0

    invoke-static {v0}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    move v8, v9

    .line 1275
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1276
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1283
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_2
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_5

    .line 1284
    add-int/lit8 v9, v3, -0x1

    .restart local v9    # "x":I
    :goto_2
    if-ltz v9, :cond_b

    .line 1285
    const/4 v10, 0x0

    .restart local v10    # "y":I
    :goto_3
    if-ge v10, v7, :cond_3

    .line 1286
    mul-int v0, v10, v3

    add-int/2addr v0, v9

    aget v0, v1, v0

    invoke-static {v0}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1287
    move v8, v9

    .line 1284
    :cond_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 1285
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1292
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_5
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_8

    .line 1294
    const/4 v10, 0x0

    .restart local v10    # "y":I
    :goto_4
    if-ge v10, v7, :cond_b

    .line 1295
    const/4 v9, 0x0

    .restart local v9    # "x":I
    :goto_5
    if-ge v10, v3, :cond_6

    .line 1296
    mul-int v0, v10, v3

    add-int/2addr v0, v9

    :try_start_0
    aget v0, v1, v0

    invoke-static {v0}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_7

    .line 1297
    move v8, v10

    .line 1294
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1295
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1304
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_8
    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_b

    .line 1306
    add-int/lit8 v10, v7, -0x1

    .restart local v10    # "y":I
    :goto_6
    if-ltz v10, :cond_b

    .line 1307
    const/4 v9, 0x0

    .restart local v9    # "x":I
    :goto_7
    if-ge v9, v3, :cond_9

    .line 1308
    mul-int v0, v10, v3

    add-int/2addr v0, v9

    :try_start_1
    aget v0, v1, v0

    invoke-static {v0}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_a

    .line 1309
    move v8, v10

    .line 1306
    :cond_9
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 1307
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1314
    :catch_0
    move-exception v0

    .line 1317
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_b
    :goto_8
    return v8

    .line 1302
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :catch_1
    move-exception v0

    goto :goto_8
.end method

.method private static getFitableRector(IIIIZ[III)[I
    .locals 9
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "LRdirection"    # I
    .param p3, "TBdirection"    # I
    .param p4, "rowFirst"    # Z
    .param p5, "pix"    # [I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1030
    const/4 v5, 0x0

    .line 1031
    .local v5, "xEnd":I
    const/4 v7, 0x0

    .line 1032
    .local v7, "yEnd":I
    const/4 v2, 0x0

    .line 1033
    .local v2, "sXIncrementally":Z
    const/4 v3, 0x0

    .line 1035
    .local v3, "sYIncrementally":Z
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 1037
    .local v0, "rector":[I
    const/16 v8, 0x3e9

    if-ne p2, v8, :cond_3

    const/16 v8, 0x3eb

    if-ne p3, v8, :cond_3

    .line 1038
    move v5, p6

    .line 1039
    move/from16 v7, p7

    .line 1040
    const/4 v2, 0x1

    .line 1041
    const/4 v3, 0x1

    .line 1059
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 1060
    .local v1, "sFetch":Z
    if-eqz p4, :cond_10

    .line 1061
    if-eqz v2, :cond_a

    .line 1062
    move v4, p0

    .local v4, "x":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 1063
    if-eqz v3, :cond_7

    .line 1064
    move v6, p1

    .local v6, "y":I
    :goto_2
    if-ge v6, v7, :cond_1

    .line 1065
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    invoke-static {v8}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1066
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 1067
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 1068
    const/4 v1, 0x1

    .line 1083
    :cond_1
    :goto_3
    if-eqz v1, :cond_9

    .line 1084
    const/4 v1, 0x0

    .line 1171
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_2
    :goto_4
    return-object v0

    .line 1042
    .end local v1    # "sFetch":Z
    :cond_3
    const/16 v8, 0x3e9

    if-ne p2, v8, :cond_4

    const/16 v8, 0x3ec

    if-ne p3, v8, :cond_4

    .line 1043
    move v5, p6

    .line 1044
    const/4 v7, 0x0

    .line 1045
    const/4 v2, 0x1

    .line 1046
    const/4 v3, 0x0

    goto :goto_0

    .line 1047
    :cond_4
    const/16 v8, 0x3ea

    if-ne p2, v8, :cond_5

    const/16 v8, 0x3eb

    if-ne p3, v8, :cond_5

    .line 1048
    const/4 v5, 0x0

    .line 1049
    move/from16 v7, p7

    .line 1050
    const/4 v2, 0x0

    .line 1051
    const/4 v3, 0x1

    goto :goto_0

    .line 1052
    :cond_5
    const/16 v8, 0x3ea

    if-ne p2, v8, :cond_0

    const/16 v8, 0x3ec

    if-ne p3, v8, :cond_0

    .line 1053
    const/4 v5, 0x0

    .line 1054
    const/4 v7, 0x0

    .line 1055
    const/4 v2, 0x0

    .line 1056
    const/4 v3, 0x0

    goto :goto_0

    .line 1064
    .restart local v1    # "sFetch":Z
    .restart local v4    # "x":I
    .restart local v6    # "y":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1073
    .end local v6    # "y":I
    :cond_7
    move v6, p1

    .restart local v6    # "y":I
    :goto_5
    if-lt v6, v7, :cond_1

    .line 1074
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    invoke-static {v8}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1075
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 1076
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 1077
    const/4 v1, 0x1

    .line 1078
    goto :goto_3

    .line 1073
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 1062
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1089
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_a
    move v4, p0

    .restart local v4    # "x":I
    :goto_6
    if-lt v4, v5, :cond_2

    .line 1090
    if-eqz v3, :cond_d

    .line 1091
    move v6, p1

    .restart local v6    # "y":I
    :goto_7
    if-ge v6, v7, :cond_b

    .line 1092
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    invoke-static {v8}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1093
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 1094
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 1095
    const/4 v1, 0x1

    .line 1110
    :cond_b
    :goto_8
    if-eqz v1, :cond_f

    .line 1111
    const/4 v1, 0x0

    .line 1112
    goto :goto_4

    .line 1091
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1100
    .end local v6    # "y":I
    :cond_d
    move v6, p1

    .restart local v6    # "y":I
    :goto_9
    if-lt v6, v7, :cond_b

    .line 1101
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    invoke-static {v8}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1102
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 1103
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 1104
    const/4 v1, 0x1

    .line 1105
    goto :goto_8

    .line 1100
    :cond_e
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 1089
    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 1117
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_10
    if-eqz v3, :cond_16

    .line 1118
    move v6, p1

    .restart local v6    # "y":I
    :goto_a
    if-ge v6, v7, :cond_2

    .line 1119
    if-eqz v2, :cond_13

    .line 1120
    move v4, p0

    .restart local v4    # "x":I
    :goto_b
    if-ge v4, v5, :cond_11

    .line 1121
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    invoke-static {v8}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1122
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 1123
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 1124
    const/4 v1, 0x1

    .line 1138
    :cond_11
    :goto_c
    if-eqz v1, :cond_15

    .line 1139
    const/4 v1, 0x0

    .line 1140
    goto/16 :goto_4

    .line 1120
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1129
    .end local v4    # "x":I
    :cond_13
    move v4, p0

    .restart local v4    # "x":I
    :goto_d
    if-lt v4, v5, :cond_11

    .line 1130
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    invoke-static {v8}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1131
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 1132
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 1133
    const/4 v1, 0x1

    .line 1134
    goto :goto_c

    .line 1129
    :cond_14
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 1118
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1144
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_16
    move v6, p1

    .restart local v6    # "y":I
    :goto_e
    if-lt v6, v7, :cond_2

    .line 1145
    if-eqz v2, :cond_19

    .line 1146
    move v4, p0

    .restart local v4    # "x":I
    :goto_f
    if-ge v4, v5, :cond_17

    .line 1147
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    invoke-static {v8}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 1148
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 1149
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 1150
    const/4 v1, 0x1

    .line 1164
    :cond_17
    :goto_10
    if-eqz v1, :cond_1b

    .line 1165
    const/4 v1, 0x0

    .line 1166
    goto/16 :goto_4

    .line 1146
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1155
    .end local v4    # "x":I
    :cond_19
    move v4, p0

    .restart local v4    # "x":I
    :goto_11
    if-lt v4, v5, :cond_17

    .line 1156
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    invoke-static {v8}, Lcom/vivo/content/ImageUtil;->isActivePix(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1157
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 1158
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 1159
    const/4 v1, 0x1

    .line 1160
    goto :goto_10

    .line 1155
    :cond_1a
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    .line 1144
    :cond_1b
    add-int/lit8 v6, v6, -0x1

    goto :goto_e
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lcom/vivo/content/ImageUtil;->mInstance:Lcom/vivo/content/ImageUtil;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/vivo/content/ImageUtil;

    invoke-direct {v0, p0}, Lcom/vivo/content/ImageUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/content/ImageUtil;->mInstance:Lcom/vivo/content/ImageUtil;

    .line 137
    :cond_0
    invoke-static {}, Lcom/vivo/content/ImageUtil;->isOpenThemeStyle()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/content/ImageUtil;->isOpenTheme:Z

    .line 140
    sget-object v0, Lcom/vivo/content/ImageUtil;->mInstance:Lcom/vivo/content/ImageUtil;

    return-object v0
.end method

.method private static getRadius(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 8
    .param p0, "iconBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "iconRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 755
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 756
    .local v1, "iconPixels":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 757
    invoke-static {v1, p0, p1}, Lcom/vivo/content/ImageUtil;->computeRadius([ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method private getVisibleOffset(Landroid/graphics/Bitmap;)I
    .locals 17
    .param p1, "toMeasure"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 1231
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1232
    .local v3, "dWidht":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1233
    .local v7, "dHeight":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 1234
    .local v1, "pix":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1235
    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v7, -0x1

    const/16 v10, 0x3ea

    const/16 v11, 0x3ec

    const/4 v12, 0x0

    move-object v13, v1

    move v14, v3

    move v15, v7

    invoke-static/range {v8 .. v15}, Lcom/vivo/content/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v16

    .line 1236
    .local v16, "offsetX":[I
    const/4 v0, 0x0

    aget v0, v16, v0

    const/4 v2, 0x1

    aget v2, v16, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private initStatics(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x1

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 335
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 336
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 337
    .local v0, "density":F
    iput v0, p0, Lcom/vivo/content/ImageUtil;->mDensity:F

    .line 338
    invoke-direct {p0}, Lcom/vivo/content/ImageUtil;->readThemeAppIconSize()V

    .line 340
    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    if-ne v8, v9, :cond_4

    .line 341
    :cond_0
    const v8, 0x30c001c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    .line 351
    :goto_0
    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sIconBg:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_3

    .line 352
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "launcher/icon_mask.png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "icon_mask":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "launcher/icon_bg_one.png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "icon_bg_one":Ljava/lang/String;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 355
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 356
    .local v7, "temap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_5

    .line 357
    :cond_2
    const-string v8, "ImageUtil"

    const-string v9, "icon_bg_one or icon_mask is null. exist?"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v3    # "icon_bg_one":Ljava/lang/String;
    .end local v4    # "icon_mask":Ljava/lang/String;
    .end local v7    # "temap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-void

    .line 345
    :cond_4
    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    .line 346
    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    .line 347
    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconTopOffset:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconTopOffset:I

    .line 348
    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconLeftOffset:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconLeftOffset:I

    goto :goto_0

    .line 360
    .restart local v3    # "icon_bg_one":Ljava/lang/String;
    .restart local v4    # "icon_mask":Ljava/lang/String;
    .restart local v7    # "temap":Landroid/graphics/Bitmap;
    :cond_5
    const v8, 0x30c001d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 361
    .local v2, "iconSize":I
    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-static {v8, v2, v2, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 362
    invoke-static {v7, v2, v2, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 363
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lcom/vivo/content/ImageUtil;->sIconBg:Landroid/graphics/drawable/Drawable;

    .line 364
    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sIconBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v8}, Lcom/vivo/content/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 365
    .local v1, "iconBg":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconBgWidth:I

    .line 366
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconHeight:I

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconBgHeight:I

    .line 367
    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconTextureHeight:I

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconTextureWidth:I

    .line 369
    const-string v8, "ImageUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "iconSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  sIconWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  sIconHeight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/content/ImageUtil;->sIconHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-static {v8, v9}, Lcom/vivo/content/ImageUtil;->getRadius(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sMaskRadius:I

    .line 372
    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-static {v1, v8}, Lcom/vivo/content/ImageUtil;->getRadius(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconBgRadius:I

    .line 374
    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/vivo/content/ImageUtil;->sMaskRadius:I

    if-ltz v8, :cond_6

    iget v8, p0, Lcom/vivo/content/ImageUtil;->sMaskRadius:I

    iget-object v9, p0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_6

    iget v8, p0, Lcom/vivo/content/ImageUtil;->sMaskRadius:I

    iget-object v9, p0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_6

    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconBgRadius:I

    if-ltz v8, :cond_6

    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconBgRadius:I

    iget-object v9, p0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_6

    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconBgRadius:I

    iget-object v9, p0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_6

    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-ne v8, v9, :cond_6

    .line 384
    iput-boolean v11, p0, Lcom/vivo/content/ImageUtil;->sNeedRedraw:Z

    .line 388
    :goto_2
    iput-boolean v11, p0, Lcom/vivo/content/ImageUtil;->sInit:Z

    .line 389
    const-string v8, "ImageUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the sNeedRedraw "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/vivo/content/ImageUtil;->sNeedRedraw:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   maskWidth "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/content/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v8, "ImageUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the mask rect = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/content/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sMaskRadius = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/content/ImageUtil;->sMaskRadius:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v8, "ImageUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the bg rect = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/content/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sIconBgRadius = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/content/ImageUtil;->sIconBgRadius:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 386
    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vivo/content/ImageUtil;->sNeedRedraw:Z

    goto :goto_2
.end method

.method private static isActivePix(I)Z
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 1000
    const/4 v0, 0x0

    .line 1011
    .local v0, "sActivePix":Z
    if-gez p0, :cond_0

    .line 1012
    const/4 v0, 0x1

    .line 1014
    :cond_0
    return v0
.end method

.method private isExport()Z
    .locals 2

    .prologue
    .line 1242
    const-string v0, "ro.vivo.product.overseas"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOpenThemeStyle()Z
    .locals 11

    .prologue
    .line 1246
    const/4 v4, 0x0

    .line 1247
    .local v4, "openTheme":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "description.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1248
    .local v8, "xmlPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v7, "xmlFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1265
    :goto_0
    return v4

    .line 1253
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1254
    .local v2, "mInputStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 1255
    .local v1, "mFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 1256
    .local v5, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v3, Lcom/vivo/content/XmlFileReadHandler;

    invoke-direct {v3}, Lcom/vivo/content/XmlFileReadHandler;-><init>()V

    .line 1257
    .local v3, "mXmlFileReadHandler":Lcom/vivo/content/XmlFileReadHandler;
    invoke-virtual {v5, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 1258
    invoke-virtual {v3}, Lcom/vivo/content/XmlFileReadHandler;->getThemeInfo()Ljava/util/HashMap;

    move-result-object v6

    .line 1260
    .local v6, "themeInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "open"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 1262
    .end local v1    # "mFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "mInputStream":Ljava/io/InputStream;
    .end local v3    # "mXmlFileReadHandler":Lcom/vivo/content/XmlFileReadHandler;
    .end local v5    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "themeInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private readThemeAppIconSize()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 399
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "launcher/iconsize.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, "themePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v2, "iconFile":Ljava/io/File;
    iput v11, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    iput v11, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 408
    .local v3, "inS":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 409
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 410
    .local v4, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v5, Lcom/vivo/content/XmlFileReadHandler;

    invoke-direct {v5}, Lcom/vivo/content/XmlFileReadHandler;-><init>()V

    .line 411
    .local v5, "s":Lcom/vivo/content/XmlFileReadHandler;
    invoke-virtual {v4, v3, v5}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 412
    invoke-virtual {v5}, Lcom/vivo/content/XmlFileReadHandler;->getThemeInfo()Ljava/util/HashMap;

    move-result-object v6

    .line 414
    .local v6, "themeInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 415
    const-string v8, "width"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    .line 416
    const-string v8, "height"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    .line 417
    const/4 v8, 0x0

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconLeftOffset:I

    .line 418
    const/4 v8, 0x0

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconTopOffset:I

    .line 419
    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    iget v9, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    if-eq v8, v9, :cond_0

    .line 420
    const/4 v8, -0x1

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    .line 421
    const/4 v8, -0x1

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v3    # "inS":Ljava/io/InputStream;
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "s":Lcom/vivo/content/XmlFileReadHandler;
    .end local v6    # "themeInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "ImageUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read theme exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iput v11, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    .line 439
    iput v11, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    .line 440
    iput v11, p0, Lcom/vivo/content/ImageUtil;->sIconLeftOffset:I

    .line 441
    iput v11, p0, Lcom/vivo/content/ImageUtil;->sIconTopOffset:I

    goto :goto_0

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v3    # "inS":Ljava/io/InputStream;
    .restart local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .restart local v5    # "s":Lcom/vivo/content/XmlFileReadHandler;
    .restart local v6    # "themeInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string v8, "width"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    .line 426
    const-string v8, "height"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    .line 427
    const-string v8, "leftoffset"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconLeftOffset:I

    .line 428
    const-string v8, "topoffset"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconTopOffset:I

    .line 430
    iget v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    iget v9, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I

    if-eq v8, v9, :cond_0

    .line 431
    const/4 v8, -0x1

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgWidth:I

    .line 432
    const/4 v8, -0x1

    iput v8, p0, Lcom/vivo/content/ImageUtil;->sIconWithBgHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private restoreBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    new-array v1, v0, [I

    .line 873
    .local v1, "pixels":[I
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 875
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 876
    .local v14, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 879
    .local v10, "height":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 880
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v14, :cond_1

    .line 881
    mul-int v0, v14, v11

    add-int/2addr v0, v12

    aget v0, v1, v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 882
    .local v8, "alpha":I
    const/16 v0, 0xc8

    if-le v8, v0, :cond_0

    .line 883
    mul-int v0, v14, v11

    add-int/2addr v0, v12

    aget v9, v1, v0

    .line 884
    .local v9, "color":I
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_2
    if-ge v13, v12, :cond_1

    .line 885
    mul-int v0, v14, v11

    add-int/2addr v0, v13

    aput v9, v1, v0

    .line 884
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 880
    .end local v9    # "color":I
    .end local v13    # "k":I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 879
    .end local v8    # "alpha":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 892
    .end local v12    # "j":I
    :cond_2
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_5

    .line 893
    add-int/lit8 v12, v14, -0x1

    .restart local v12    # "j":I
    :goto_4
    if-ltz v12, :cond_4

    .line 894
    mul-int v0, v14, v11

    add-int/2addr v0, v12

    aget v0, v1, v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 895
    .restart local v8    # "alpha":I
    const/16 v0, 0xc8

    if-le v8, v0, :cond_3

    .line 896
    mul-int v0, v14, v11

    add-int/2addr v0, v12

    aget v9, v1, v0

    .line 897
    .restart local v9    # "color":I
    add-int/lit8 v13, v14, -0x1

    .restart local v13    # "k":I
    :goto_5
    if-le v13, v12, :cond_4

    .line 898
    mul-int v0, v14, v11

    add-int/2addr v0, v13

    aput v9, v1, v0

    .line 897
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 893
    .end local v9    # "color":I
    .end local v13    # "k":I
    :cond_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 892
    .end local v8    # "alpha":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 904
    .end local v12    # "j":I
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v14, v10, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createGreyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 314
    iget-object v6, p0, Lcom/vivo/content/ImageUtil;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v6

    .line 315
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 316
    .local v2, "greyBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/vivo/content/ImageUtil;->sCanvas:Landroid/graphics/Canvas;

    .line 318
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 320
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 321
    .local v3, "greyColorMatrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v3}, Landroid/graphics/ColorMatrix;->reset()V

    .line 322
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 323
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 324
    .local v1, "colorFilter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 325
    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 327
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v5, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 328
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 329
    monitor-exit v6

    return-object v2

    .line 330
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "colorFilter":Landroid/graphics/ColorMatrixColorFilter;
    .end local v2    # "greyBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "greyColorMatrix":Landroid/graphics/ColorMatrix;
    .end local v4    # "paint":Landroid/graphics/Paint;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "id"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 153
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vivo/content/ImageUtil;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/content/ImageUtil;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/Context;ZZLandroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/Context;ZZLandroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "srcIconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "isScale"    # Z
    .param p5, "isRedraw"    # Z
    .param p6, "res"    # Landroid/content/res/Resources;
    .param p7, "id"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 276
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 277
    .local v0, "config":Landroid/content/res/Configuration;
    if-nez v0, :cond_2

    .line 278
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/vivo/content/ImageUtil;->clearInitFlags(I)V

    .line 287
    :cond_0
    :goto_0
    if-eqz p6, :cond_4

    invoke-virtual {p6, p7}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 288
    invoke-virtual {p6, p7}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 290
    .local v1, "dyIcon":Lcom/vivo/content/DynamicIcon;
    const-string v6, "com.bbk.calendar"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 291
    sget-object v6, Lcom/vivo/content/DynamicIcon;->CALENDAR_COMP:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/vivo/content/ImageUtil;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/vivo/content/DynamicIcon;->creatDynamicIcon(Landroid/content/ComponentName;Landroid/content/Context;)Lcom/vivo/content/DynamicIcon;

    move-result-object v1

    .line 298
    :cond_1
    const/4 v5, 0x0

    .line 299
    .local v5, "temBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 300
    iget-object v6, p0, Lcom/vivo/content/ImageUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/vivo/content/DynamicIcon;->getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 301
    if-eqz v5, :cond_3

    .line 309
    .end local v1    # "dyIcon":Lcom/vivo/content/DynamicIcon;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "temBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v5

    .line 280
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v2

    .line 281
    .local v2, "mNewThemeId":I
    sget v6, Lcom/vivo/content/ImageUtil;->mOldThemeId:I

    if-eq v2, v6, :cond_0

    .line 282
    invoke-direct {p0, v2}, Lcom/vivo/content/ImageUtil;->clearInitFlags(I)V

    goto :goto_0

    .line 304
    .end local v2    # "mNewThemeId":I
    .restart local v1    # "dyIcon":Lcom/vivo/content/DynamicIcon;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v5    # "temBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-direct {p0, p1}, Lcom/vivo/content/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    .line 309
    .end local v1    # "dyIcon":Lcom/vivo/content/DynamicIcon;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "temBitmap":Landroid/graphics/Bitmap;
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/vivo/content/ImageUtil;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1
.end method

.method public createOpenIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 38
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sCanvas:Landroid/graphics/Canvas;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 167
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    move/from16 v29, v0

    const/16 v31, -0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/vivo/content/ImageUtil;->initStatics(Landroid/content/Context;)V

    .line 171
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v31, 0x30c001e

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 173
    .local v15, "mIconBgSize":F
    const v29, 0x3f3c3c3c

    mul-float v29, v29, v15

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v20, v0

    .line 174
    .local v20, "sIconScaleWidth":I
    const v29, 0x3f3c3c3c

    mul-float v29, v29, v15

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v19, v0

    .line 175
    .local v19, "sIconScaleHeight":I
    move/from16 v28, v20

    .line 176
    .local v28, "width":I
    move/from16 v11, v19

    .line 178
    .local v11, "height":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v29, v0

    if-eqz v29, :cond_6

    .line 179
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object/from16 v16, v0

    .line 180
    .local v16, "painter":Landroid/graphics/drawable/PaintDrawable;
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 181
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 190
    .end local v16    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 191
    .local v12, "iconWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 193
    .local v13, "iconeHeight":I
    invoke-direct/range {p0 .. p1}, Lcom/vivo/content/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 194
    .local v6, "bmpIcon":Landroid/graphics/Bitmap;
    const/16 v29, 0x3e9

    move/from16 v0, v29

    invoke-static {v6, v0}, Lcom/vivo/content/ImageUtil;->getFactIconSize(Landroid/graphics/Bitmap;I)I

    move-result v14

    .line 195
    .local v14, "left":I
    const/16 v29, 0x3ea

    move/from16 v0, v29

    invoke-static {v6, v0}, Lcom/vivo/content/ImageUtil;->getFactIconSize(Landroid/graphics/Bitmap;I)I

    move-result v18

    .line 196
    .local v18, "right":I
    const/16 v29, 0x3eb

    move/from16 v0, v29

    invoke-static {v6, v0}, Lcom/vivo/content/ImageUtil;->getFactIconSize(Landroid/graphics/Bitmap;I)I

    move-result v27

    .line 197
    .local v27, "top":I
    const/16 v29, 0x3ec

    move/from16 v0, v29

    invoke-static {v6, v0}, Lcom/vivo/content/ImageUtil;->getFactIconSize(Landroid/graphics/Bitmap;I)I

    move-result v7

    .line 199
    .local v7, "bottom":I
    sub-int v29, v14, v18

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v24

    .line 200
    .local v24, "sourceWidth":I
    sub-int v29, v27, v7

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v23

    .line 202
    .local v23, "sourceHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    move/from16 v29, v0

    if-lez v29, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconHeight:I

    move/from16 v29, v0

    if-lez v29, :cond_2

    .line 203
    mul-int v29, v12, v13

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconHeight:I

    move/from16 v31, v0

    mul-int v29, v29, v31

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3ff8000000000000L    # 1.5

    mul-double v34, v34, v36

    cmpl-double v29, v32, v34

    if-lez v29, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vivo/content/ImageUtil;->sIconWidth:I

    .line 205
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vivo/content/ImageUtil;->sIconHeight:I

    .line 209
    :cond_2
    if-lez v24, :cond_3

    if-lez v23, :cond_3

    .line 210
    int-to-float v0, v12

    move/from16 v29, v0

    int-to-float v0, v13

    move/from16 v31, v0

    div-float v17, v29, v31

    .line 211
    .local v17, "ratio":F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v21, v29, v31

    .line 212
    .local v21, "scaleX":F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v22, v29, v31

    .line 213
    .local v22, "scaleY":F
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    .line 214
    int-to-float v0, v12

    move/from16 v29, v0

    mul-float v29, v29, v21

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    .line 215
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v17

    move/from16 v0, v29

    float-to-int v11, v0

    .line 223
    .end local v17    # "ratio":F
    .end local v21    # "scaleX":F
    .end local v22    # "scaleY":F
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconTextureWidth:I

    move/from16 v29, v0

    if-lez v29, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconTextureHeight:I

    move/from16 v29, v0

    if-gtz v29, :cond_5

    .line 224
    :cond_4
    float-to-int v0, v15

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/content/ImageUtil;->sIconTextureWidth:I

    .line 225
    float-to-int v0, v15

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/content/ImageUtil;->sIconTextureHeight:I

    .line 227
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconTextureWidth:I

    move/from16 v26, v0

    .line 228
    .local v26, "textureWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconTextureHeight:I

    move/from16 v25, v0

    .line 230
    .local v25, "textureHeight":I
    sget-object v29, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v26

    move/from16 v1, v25

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 231
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vivo/content/ImageUtil;->sCanvas:Landroid/graphics/Canvas;

    .line 232
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 234
    sub-int v29, v26, v28

    div-int/lit8 v14, v29, 0x2

    .line 235
    sub-int v29, v25, v11

    div-int/lit8 v27, v29, 0x2

    .line 239
    const/4 v9, 0x0

    .line 251
    .local v9, "debug":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 252
    add-int v29, v14, v28

    add-int v31, v27, v11

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v31

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 255
    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    const/16 v29, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconTextureWidth:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/ImageUtil;->sIconTextureHeight:I

    move/from16 v33, v0

    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v4, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 258
    .local v10, "finalBitmap":Landroid/graphics/Bitmap;
    monitor-exit v30

    return-object v10

    .line 182
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bmpIcon":Landroid/graphics/Bitmap;
    .end local v7    # "bottom":I
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "debug":Z
    .end local v10    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "iconWidth":I
    .end local v13    # "iconeHeight":I
    .end local v14    # "left":I
    .end local v18    # "right":I
    .end local v23    # "sourceHeight":I
    .end local v24    # "sourceWidth":I
    .end local v25    # "textureHeight":I
    .end local v26    # "textureWidth":I
    .end local v27    # "top":I
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 184
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v5, v0

    .line 185
    .local v5, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 186
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v29

    if-nez v29, :cond_1

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 259
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "height":I
    .end local v15    # "mIconBgSize":F
    .end local v19    # "sIconScaleHeight":I
    .end local v20    # "sIconScaleWidth":I
    .end local v28    # "width":I
    :catchall_0
    move-exception v29

    monitor-exit v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v29

    .line 217
    .restart local v6    # "bmpIcon":Landroid/graphics/Bitmap;
    .restart local v7    # "bottom":I
    .restart local v11    # "height":I
    .restart local v12    # "iconWidth":I
    .restart local v13    # "iconeHeight":I
    .restart local v14    # "left":I
    .restart local v15    # "mIconBgSize":F
    .restart local v17    # "ratio":F
    .restart local v18    # "right":I
    .restart local v19    # "sIconScaleHeight":I
    .restart local v20    # "sIconScaleWidth":I
    .restart local v21    # "scaleX":F
    .restart local v22    # "scaleY":F
    .restart local v23    # "sourceHeight":I
    .restart local v24    # "sourceWidth":I
    .restart local v27    # "top":I
    .restart local v28    # "width":I
    :cond_7
    int-to-float v0, v13

    move/from16 v29, v0

    mul-float v29, v29, v22

    move/from16 v0, v29

    float-to-int v11, v0

    .line 218
    int-to-float v0, v11

    move/from16 v29, v0

    mul-float v29, v29, v17

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    goto/16 :goto_1
.end method

.method public createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "srcIconDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/vivo/content/ImageUtil;->isExport()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/vivo/content/ImageUtil;->isOpenTheme:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/vivo/content/ImageUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/vivo/content/ImageUtil;->createOpenIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/vivo/content/ImageUtil;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getCloneBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 30
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "theme_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1188
    .local v25, "theme_id":Ljava/lang/String;
    if-eqz v25, :cond_0

    const-string v2, "2"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1189
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3020171

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1193
    .local v11, "cloneFlagBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    .line 1194
    .local v27, "width":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 1196
    .local v16, "height":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/content/ImageUtil;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/vivo/content/ImageUtil;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/Context;ZZLandroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 1197
    .local v21, "sourceBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    .line 1198
    .local v28, "x":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    .line 1199
    .local v29, "y":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/vivo/content/ImageUtil;->getVisibleOffset(Landroid/graphics/Bitmap;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v22, v0

    .line 1200
    .local v22, "srcOffset":F
    move/from16 v0, v28

    int-to-float v2, v0

    sub-float v23, v2, v22

    .line 1201
    .local v23, "srcOffsetX":F
    move/from16 v0, v29

    int-to-float v2, v0

    sub-float v24, v2, v22

    .line 1202
    .local v24, "srcOffsetY":F
    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v27

    int-to-float v3, v0

    div-float v20, v2, v3

    .line 1203
    .local v20, "scaleWidth":F
    move/from16 v0, v29

    int-to-float v2, v0

    move/from16 v0, v16

    int-to-float v3, v0

    div-float v19, v2, v3

    .line 1205
    .local v19, "scaleHeight":F
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/vivo/content/ImageUtil;->getVisibleOffset(Landroid/graphics/Bitmap;)I

    move-result v26

    .line 1206
    .local v26, "visibleCloneWidth":I
    sub-int v2, v27, v26

    int-to-float v2, v2

    mul-float v13, v2, v20

    .line 1207
    .local v13, "cloneOffsetWidth":F
    sub-int v2, v16, v26

    int-to-float v2, v2

    mul-float v12, v2, v19

    .line 1208
    .local v12, "cloneOffsetHeight":F
    sub-float v2, v13, v23

    move/from16 v0, v28

    int-to-float v3, v0

    div-float/2addr v2, v3

    add-float v15, v20, v2

    .line 1209
    .local v15, "finalScaleWidth":F
    sub-float v2, v12, v24

    move/from16 v0, v29

    int-to-float v3, v0

    div-float/2addr v2, v3

    add-float v14, v19, v2

    .line 1210
    .local v14, "finalScaleHeight":F
    move/from16 v0, v28

    move/from16 v1, v27

    if-le v0, v1, :cond_1

    .line 1211
    float-to-double v2, v15

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v2, v4

    double-to-float v15, v2

    .line 1212
    float-to-double v2, v14

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v2, v4

    double-to-float v14, v2

    .line 1214
    :cond_1
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1215
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7, v15, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1216
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v2, v11

    move/from16 v5, v27

    move/from16 v6, v16

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1218
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 1219
    .local v17, "newbit":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1220
    .local v10, "canvas":Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 1221
    .local v18, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1222
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v10, v11, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1223
    const/16 v2, 0x1f

    invoke-virtual {v10, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 1224
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 1225
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 1226
    return-object v17

    .line 1191
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "cloneFlagBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "cloneOffsetHeight":F
    .end local v13    # "cloneOffsetWidth":F
    .end local v14    # "finalScaleHeight":F
    .end local v15    # "finalScaleWidth":F
    .end local v16    # "height":I
    .end local v17    # "newbit":Landroid/graphics/Bitmap;
    .end local v18    # "paint":Landroid/graphics/Paint;
    .end local v19    # "scaleHeight":F
    .end local v20    # "scaleWidth":F
    .end local v21    # "sourceBitmap":Landroid/graphics/Bitmap;
    .end local v22    # "srcOffset":F
    .end local v23    # "srcOffsetX":F
    .end local v24    # "srcOffsetY":F
    .end local v26    # "visibleCloneWidth":I
    .end local v27    # "width":I
    .end local v28    # "x":I
    .end local v29    # "y":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3020172

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .restart local v11    # "cloneFlagBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0
.end method
