.class public Lcom/android/server/policy/key/VivoSmartwakeCharContainer;
.super Landroid/widget/FrameLayout;
.source "VivoSmartwakeCharContainer.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;,
        Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_TIME:J = 0x2bcL

.field private static final ANIMATE_VIEW_HEIGHT:I = 0x12c

.field private static final ANIMATE_VIEW_UP_HEIGHT:I = 0x12c

.field private static final ANIMATE_VIEW_UP_WIDTH:I = 0x32

.field private static final ANIMATE_VIEW_WIDTH:I = 0x12c

.field private static final ANIMATION_FRAME_NUM:I = 0x14

.field private static final ANTIC_CLOCK_WISE:I = 0x20

.field private static final BITMAP_SPLIT_COL_NUM:I = 0x4

.field private static final CLOCK_WISE:I = 0x10

.field private static final DISAPPEAR_WINDOW:I = 0x1

.field private static final GESTURE_POINT_PATH:Ljava/lang/String; = "/sys/touchscreen/gesture_point"

.field private static final MAX_POINT_NUM:I = 0xa

.field private static final TAG:Ljava/lang/String; = "VivoSmartwakeCharContainer"

.field private static gDisappearTime:I

.field private static gDisappearTimeSecure:I


# instance fields
.field private mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

.field private mDirectionValue:I

.field private mEndCallback:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

.field private mHandler:Landroid/os/Handler;

.field private mImagesCharAt:I

.field private mImagesCharC:I

.field private mImagesCharE:I

.field private mImagesCharF1:I

.field private mImagesCharF2:I

.field private mImagesCharO:I

.field private mImagesCharS:I

.field private mImagesCharUp:I

.field private mImagesCharV:I

.field private mImagesCharW:I

.field private mImagesReversalCharO:I

.field private mKeyCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 100
    const-string v1, "ro.product.model.bbk"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "product":Ljava/lang/String;
    const/16 v1, 0x2bc

    sput v1, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->gDisappearTimeSecure:I

    .line 102
    const/16 v1, 0x1f4

    sput v1, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->gDisappearTime:I

    .line 103
    const-string v1, "VivoSmartwakeCharContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->gDisappearTimeSecure:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->gDisappearTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    .line 73
    iput-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mEndCallback:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    .line 75
    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mKeyCode:I

    .line 77
    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mDirectionValue:I

    .line 83
    const v0, 0x3020365

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharC:I

    .line 84
    const v0, 0x3020367

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharE:I

    .line 85
    const v0, 0x302036a

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharO:I

    .line 86
    const v0, 0x302036b

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesReversalCharO:I

    .line 87
    const v0, 0x302036d

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharW:I

    .line 88
    const v0, 0x302036c

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharUp:I

    .line 89
    const v0, 0x3020368

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharF1:I

    .line 90
    const v0, 0x3020369

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharF2:I

    .line 91
    const v0, 0x3020364

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharAt:I

    .line 93
    const v0, 0x302004c

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharV:I

    .line 94
    const v0, 0x302004b

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharS:I

    .line 168
    new-instance v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$1;-><init>(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mHandler:Landroid/os/Handler;

    .line 163
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->setBackgroundColor(I)V

    .line 165
    new-instance v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;-><init>(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->disappearAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mEndCallback:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addCharAtView(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "trackPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/16 v10, 0x12c

    const/high16 v11, 0x43960000    # 300.0f

    .line 758
    const/4 v3, 0x0

    .line 759
    .local v3, "maxLen":F
    const/4 v4, 0x0

    .line 760
    .local v4, "midPoint":Landroid/graphics/Point;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 761
    .local v8, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v9, v8, -0x1

    if-ge v0, v9, :cond_2

    .line 763
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 764
    .local v5, "p1":Landroid/graphics/Point;
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    if-ge v1, v8, :cond_1

    .line 766
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 767
    .local v6, "p2":Landroid/graphics/Point;
    invoke-direct {p0, v5, v6}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getTwoPointsDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v2

    .line 768
    .local v2, "len":F
    cmpl-float v9, v2, v3

    if-lez v9, :cond_0

    .line 770
    move v3, v2

    .line 771
    invoke-direct {p0, v5, v6}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getMidPoint(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 764
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 761
    .end local v2    # "len":F
    .end local v6    # "p2":Landroid/graphics/Point;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    .end local v1    # "j":I
    .end local v5    # "p1":Landroid/graphics/Point;
    :cond_2
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 778
    .local v7, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, 0x3

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 779
    iget v9, v4, Landroid/graphics/Point;->x:I

    add-int/lit16 v9, v9, -0x96

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 780
    iget v9, v4, Landroid/graphics/Point;->y:I

    add-int/lit16 v9, v9, -0x96

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 782
    iget-object v9, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    div-float v10, v3, v11

    invoke-virtual {v9, v10}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleX(F)V

    .line 783
    iget-object v9, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    div-float v10, v3, v11

    invoke-virtual {v9, v10}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleY(F)V

    .line 785
    iget-object v9, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {p0, v9, v7}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    return-void
.end method

.method private addCharCView(Ljava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "trackPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 513
    .local v13, "size":I
    add-int/lit8 v18, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v7, v0

    .line 514
    .local v7, "endX":F
    add-int/lit8 v18, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v8, v0

    .line 515
    .local v8, "endY":F
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v15, v0

    .line 516
    .local v15, "startX":F
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v16, v0

    .line 517
    .local v16, "startY":F
    sub-float v18, v8, v16

    sub-float v19, v7, v15

    div-float v14, v18, v19

    .line 519
    .local v14, "slope":F
    const/4 v9, 0x0

    .line 520
    .local v9, "farDistance":F
    const/4 v11, 0x1

    .local v11, "index":I
    :goto_0
    add-int/lit8 v18, v13, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_1

    .line 522
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v19, v14, v18

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v19, v18

    add-float v18, v18, v16

    mul-float v19, v14, v15

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    mul-float v19, v14, v14

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v19

    div-float v6, v18, v19

    .line 523
    .local v6, "dis":F
    cmpl-float v18, v6, v9

    if-lez v18, :cond_0

    .line 525
    move v9, v6

    .line 520
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 528
    .end local v6    # "dis":F
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    add-int/lit8 v19, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getTwoPointsDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v10

    .line 529
    .local v10, "height":F
    move/from16 v17, v9

    .line 531
    .local v17, "width":F
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    add-int/lit8 v19, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getSlopeAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v4

    .line 533
    .local v4, "degree":D
    const-wide/16 v18, 0x0

    cmpl-double v18, v4, v18

    if-lez v18, :cond_2

    .line 535
    const-wide v18, 0x4056800000000000L    # 90.0

    sub-double v4, v4, v18

    .line 542
    :goto_1
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v18, 0x12c

    const/16 v19, 0x12c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 544
    .local v12, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v18, 0x5

    move/from16 v0, v18

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getWidth()I

    move-result v19

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    sub-int v18, v19, v18

    move/from16 v0, v18

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 546
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    const/high16 v19, 0x43960000    # 300.0f

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotX(F)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotY(F)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    const/high16 v19, 0x43960000    # 300.0f

    div-float v19, v17, v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleX(F)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    const/high16 v19, 0x43960000    # 300.0f

    div-float v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleY(F)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    double-to-float v0, v4

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setRotation(F)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    return-void

    .line 539
    .end local v12    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const-wide v18, 0x4056800000000000L    # 90.0

    add-double v4, v4, v18

    goto/16 :goto_1
.end method

.method private addCharEView(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "trackPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 563
    .local v7, "size":I
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .local v5, "minDisPoint":Landroid/graphics/Point;
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 566
    .local v4, "maxDisPoint":Landroid/graphics/Point;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eq v3, v7, :cond_2

    .line 568
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, v5, Landroid/graphics/Point;->y:I

    if-gt v8, v9, :cond_1

    .line 570
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "minDisPoint":Landroid/graphics/Point;
    check-cast v5, Landroid/graphics/Point;

    .line 566
    .restart local v5    # "minDisPoint":Landroid/graphics/Point;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    if-lt v8, v9, :cond_0

    .line 574
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "maxDisPoint":Landroid/graphics/Point;
    check-cast v4, Landroid/graphics/Point;

    .restart local v4    # "maxDisPoint":Landroid/graphics/Point;
    goto :goto_1

    .line 578
    :cond_2
    invoke-direct {p0, v5, v4}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getTwoPointsDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v2

    .line 579
    .local v2, "distance":F
    invoke-direct {p0, v5, v4}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getSlopeAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    .line 581
    .local v0, "degree":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-lez v8, :cond_3

    .line 583
    const-wide v8, 0x4056800000000000L    # 90.0

    sub-double/2addr v0, v8

    .line 590
    :goto_2
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x12c

    const/16 v9, 0x12c

    invoke-direct {v6, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 592
    .local v6, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, 0x3

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 593
    iget v8, v5, Landroid/graphics/Point;->x:I

    iget v9, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/lit16 v8, v8, -0x96

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 594
    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/lit16 v8, v8, -0x96

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 596
    iget-object v8, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/high16 v9, 0x43160000    # 150.0f

    invoke-virtual {v8, v9}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotX(F)V

    .line 597
    iget-object v8, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/high16 v9, 0x43160000    # 150.0f

    invoke-virtual {v8, v9}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotY(F)V

    .line 599
    iget-object v8, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/high16 v9, 0x43960000    # 300.0f

    div-float v9, v2, v9

    invoke-virtual {v8, v9}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleX(F)V

    .line 600
    iget-object v8, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/high16 v9, 0x43960000    # 300.0f

    div-float v9, v2, v9

    invoke-virtual {v8, v9}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleY(F)V

    .line 602
    iget-object v8, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    double-to-float v9, v0

    invoke-virtual {v8, v9}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setRotation(F)V

    .line 604
    iget-object v8, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    return-void

    .line 587
    .end local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    const-wide v8, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v8

    goto :goto_2
.end method

.method private addCharFView(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, "trackPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v7, 0x0

    .line 715
    .local v7, "maxLen":F
    const/4 v9, 0x0

    .line 716
    .local v9, "maxLenIndexStart":I
    const/4 v8, 0x0

    .line 717
    .local v8, "maxLenIndexEnd":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 719
    .local v14, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v15, v14, -0x1

    if-ge v4, v15, :cond_2

    .line 721
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Point;

    .line 722
    .local v11, "p1":Landroid/graphics/Point;
    add-int/lit8 v5, v4, 0x1

    .local v5, "j":I
    :goto_1
    if-ge v5, v14, :cond_1

    .line 724
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Point;

    .line 725
    .local v12, "p2":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getTwoPointsDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v6

    .line 726
    .local v6, "len":F
    cmpl-float v15, v6, v7

    if-lez v15, :cond_0

    .line 728
    move v7, v6

    .line 729
    move v9, v4

    .line 730
    move v8, v5

    .line 722
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 719
    .end local v6    # "len":F
    .end local v12    # "p2":Landroid/graphics/Point;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 735
    .end local v5    # "j":I
    .end local v11    # "p1":Landroid/graphics/Point;
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getSlopeAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v2

    .line 737
    .local v2, "degree":D
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v15, 0x12c

    const/16 v16, 0x12c

    move/from16 v0, v16

    invoke-direct {v13, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 739
    .local v13, "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getMidPoint(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    .line 741
    .local v10, "midPoint":Landroid/graphics/Point;
    const/4 v15, 0x3

    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 742
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/high16 v16, 0x43160000    # 150.0f

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotX(F)V

    .line 743
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/high16 v16, 0x43160000    # 150.0f

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotY(F)V

    .line 744
    iget v15, v10, Landroid/graphics/Point;->x:I

    add-int/lit16 v15, v15, -0x96

    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 745
    iget v15, v10, Landroid/graphics/Point;->y:I

    add-int/lit16 v15, v15, -0x96

    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 747
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const v16, 0x3f19999a    # 0.6f

    mul-float v16, v16, v7

    const/high16 v17, 0x43960000    # 300.0f

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleX(F)V

    .line 748
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/high16 v16, 0x43960000    # 300.0f

    div-float v16, v7, v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleY(F)V

    .line 750
    const-wide/high16 v16, 0x4054000000000000L    # 80.0

    add-double v2, v2, v16

    .line 751
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    double-to-float v0, v2

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setRotation(F)V

    .line 753
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v13}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 754
    return-void
.end method

.method private addCharOView(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, "trackPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 612
    .local v8, "size":I
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 614
    .local v9, "startPoint":Landroid/graphics/Point;
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 615
    .local v4, "maxDisPoint":Landroid/graphics/Point;
    const/4 v5, 0x0

    .line 617
    .local v5, "maxDistance":F
    const/4 v6, 0x0

    .line 618
    .local v6, "maxPointIndex":I
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_0
    if-eq v3, v8, :cond_1

    .line 620
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Point;

    invoke-direct {p0, v10, v9}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getTwoPointsDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v2

    .line 621
    .local v2, "dis":F
    cmpl-float v10, v2, v5

    if-lez v10, :cond_0

    .line 623
    move v5, v2

    .line 624
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "maxDisPoint":Landroid/graphics/Point;
    check-cast v4, Landroid/graphics/Point;

    .line 625
    .restart local v4    # "maxDisPoint":Landroid/graphics/Point;
    move v6, v3

    .line 618
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 629
    .end local v2    # "dis":F
    :cond_1
    invoke-direct {p0, v4, v9}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getSlopeAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    .line 631
    .local v0, "degree":D
    iget v10, v4, Landroid/graphics/Point;->y:I

    iget v11, v9, Landroid/graphics/Point;->y:I

    if-ge v10, v11, :cond_3

    .line 633
    const-wide/16 v10, 0x0

    cmpl-double v10, v0, v10

    if-lez v10, :cond_2

    .line 635
    const-wide v10, 0x4070e00000000000L    # 270.0

    sub-double/2addr v0, v10

    .line 654
    :goto_1
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x12c

    const/16 v11, 0x12c

    invoke-direct {v7, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 656
    .local v7, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, 0x3

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 657
    iget v10, v9, Landroid/graphics/Point;->x:I

    add-int/lit16 v10, v10, -0x96

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 658
    iget v10, v9, Landroid/graphics/Point;->y:I

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 660
    iget-object v10, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/high16 v11, 0x43160000    # 150.0f

    invoke-virtual {v10, v11}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotX(F)V

    .line 661
    iget-object v10, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotY(F)V

    .line 663
    iget-object v10, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/high16 v11, 0x43960000    # 300.0f

    div-float v11, v5, v11

    invoke-virtual {v10, v11}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleX(F)V

    .line 664
    iget-object v10, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/high16 v11, 0x43960000    # 300.0f

    div-float v11, v5, v11

    invoke-virtual {v10, v11}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleY(F)V

    .line 666
    iget-object v10, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    double-to-float v11, v0

    invoke-virtual {v10, v11}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setRotation(F)V

    .line 668
    iget-object v10, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {p0, v10, v7}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    return-void

    .line 639
    .end local v7    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const-wide v10, 0x4070e00000000000L    # 270.0

    add-double/2addr v0, v10

    goto :goto_1

    .line 644
    :cond_3
    const-wide/16 v10, 0x0

    cmpl-double v10, v0, v10

    if-lez v10, :cond_4

    .line 646
    const-wide v10, 0x4056800000000000L    # 90.0

    sub-double/2addr v0, v10

    goto :goto_1

    .line 650
    :cond_4
    const-wide v10, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v10

    goto :goto_1
.end method

.method private addCharSView(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "trackPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/high16 v5, 0x43960000    # 300.0f

    const v4, 0x3f266666    # 0.65f

    const/16 v3, 0x12c

    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 836
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleX(F)V

    .line 837
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleY(F)V

    .line 838
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setAnimationSize(II)V

    .line 839
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 840
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    return-void
.end method

.method private addCharUpView(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "trackPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/high16 v9, 0x43960000    # 300.0f

    const-wide v10, 0x4056800000000000L    # 90.0

    const/4 v8, 0x0

    .line 790
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 791
    .local v4, "size":I
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    invoke-direct {p0, v5, v6}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getSlopeAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    .line 793
    .local v0, "degree":D
    const-wide/16 v6, 0x0

    cmpl-double v5, v0, v6

    if-lez v5, :cond_0

    .line 795
    sub-double/2addr v0, v10

    .line 802
    :goto_0
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    invoke-direct {p0, v5, v6}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getTwoPointsDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v2

    .line 804
    .local v2, "height":F
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x32

    const/16 v6, 0x12c

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 806
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, 0x3

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 807
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, -0x19

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 808
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/lit16 v5, v5, -0x12c

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 810
    iget-object v5, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v5, v6}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotX(F)V

    .line 811
    iget-object v5, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotY(F)V

    .line 813
    iget-object v5, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    div-float v6, v2, v9

    invoke-virtual {v5, v6}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleY(F)V

    .line 815
    iget-object v5, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    double-to-float v6, v0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setRotation(F)V

    .line 817
    iget-object v5, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {p0, v5, v3}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    return-void

    .line 799
    .end local v2    # "height":F
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-double/2addr v0, v10

    goto :goto_0
.end method

.method private addCharVView(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "trackPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/high16 v5, 0x43960000    # 300.0f

    const v4, 0x3f266666    # 0.65f

    const/16 v3, 0x12c

    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 825
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleX(F)V

    .line 826
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleY(F)V

    .line 827
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setAnimationSize(II)V

    .line 828
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 829
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    return-void
.end method

.method private addCharWView(Ljava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, "trackPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 674
    .local v13, "size":I
    add-int/lit8 v18, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v7, v0

    .line 675
    .local v7, "endX":F
    add-int/lit8 v18, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v8, v0

    .line 676
    .local v8, "endY":F
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v15, v0

    .line 677
    .local v15, "startX":F
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v16, v0

    .line 678
    .local v16, "startY":F
    sub-float v18, v8, v16

    sub-float v19, v7, v15

    div-float v14, v18, v19

    .line 680
    .local v14, "slope":F
    const/4 v9, 0x0

    .line 681
    .local v9, "farDistance":F
    const/4 v11, 0x1

    .local v11, "index":I
    :goto_0
    add-int/lit8 v18, v13, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_1

    .line 683
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v19, v14, v18

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v19, v18

    add-float v18, v18, v16

    mul-float v19, v14, v15

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    mul-float v19, v14, v14

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v19

    div-float v6, v18, v19

    .line 684
    .local v6, "dis":F
    cmpl-float v18, v6, v9

    if-lez v18, :cond_0

    .line 686
    move v9, v6

    .line 681
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 690
    .end local v6    # "dis":F
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    add-int/lit8 v19, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getSlopeAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v4

    .line 692
    .local v4, "degree":D
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    add-int/lit8 v19, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getTwoPointsDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v17

    .line 693
    .local v17, "width":F
    move v10, v9

    .line 695
    .local v10, "height":F
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v18, 0x12c

    const/16 v19, 0x12c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 697
    .local v12, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 698
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 699
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotX(F)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setPivotY(F)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    const/high16 v19, 0x43960000    # 300.0f

    div-float v19, v17, v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleX(F)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    const/high16 v19, 0x43960000    # 300.0f

    div-float v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleY(F)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    double-to-float v0, v4

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setRotation(F)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    return-void
.end method

.method private disappearAnimation()V
    .locals 4

    .prologue
    .line 845
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 846
    .local v0, "alphAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$2;-><init>(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 877
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 879
    return-void

    .line 845
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getDirection(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 5
    .param p1, "p1"    # Landroid/graphics/Point;
    .param p2, "p2"    # Landroid/graphics/Point;
    .param p3, "p3"    # Landroid/graphics/Point;

    .prologue
    .line 902
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 903
    .local v0, "result":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 905
    const/4 v1, 0x1

    .line 909
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDisappearTimeSecure()I
    .locals 9

    .prologue
    .line 122
    const/16 v2, 0x708

    .line 123
    .local v2, "disappearTimeSecure":I
    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 124
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    move v3, v2

    .line 147
    .end local v2    # "disappearTimeSecure":I
    .local v3, "disappearTimeSecure":I
    :goto_0
    return v3

    .line 128
    .end local v3    # "disappearTimeSecure":I
    .restart local v2    # "disappearTimeSecure":I
    :cond_0
    const-string v7, "activity"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 130
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    move v3, v2

    .line 132
    .end local v2    # "disappearTimeSecure":I
    .restart local v3    # "disappearTimeSecure":I
    goto :goto_0

    .line 134
    .end local v3    # "disappearTimeSecure":I
    .restart local v2    # "disappearTimeSecure":I
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 135
    .local v6, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v6, :cond_2

    move v3, v2

    .line 137
    .end local v2    # "disappearTimeSecure":I
    .restart local v3    # "disappearTimeSecure":I
    goto :goto_0

    .line 139
    .end local v3    # "disappearTimeSecure":I
    .restart local v2    # "disappearTimeSecure":I
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 141
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v7, "com.android.camera"

    iget-object v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 143
    const/16 v2, 0x2bc

    .end local v5    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    move v3, v2

    .line 147
    .end local v2    # "disappearTimeSecure":I
    .restart local v3    # "disappearTimeSecure":I
    goto :goto_0
.end method

.method private getMidPoint(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1, "p1"    # Landroid/graphics/Point;
    .param p2, "p2"    # Landroid/graphics/Point;

    .prologue
    .line 889
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getSlopeAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 6
    .param p1, "p1"    # Landroid/graphics/Point;
    .param p2, "p2"    # Landroid/graphics/Point;

    .prologue
    .line 894
    iget v3, p2, Landroid/graphics/Point;->y:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 895
    .local v2, "slope":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 896
    .local v0, "degree":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 897
    return-wide v0
.end method

.method private getTwoPointsDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 5
    .param p1, "p1"    # Landroid/graphics/Point;
    .param p2, "p2"    # Landroid/graphics/Point;

    .prologue
    .line 883
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Point;->y:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 884
    .local v0, "distance":F
    return v0
.end method

.method private readPointsFromFile()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x14

    .line 455
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v7, "trackWPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v11, "/sys/touchscreen/gesture_point"

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 460
    .local v3, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 462
    .local v5, "length":I
    new-array v1, v5, [B

    .line 464
    .local v1, "buffer":[B
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 467
    new-instance v6, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v6, v1, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 469
    .local v6, "sourceString":Ljava/lang/String;
    const-string v11, " "

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "arrayStrings":[Ljava/lang/String;
    array-length v11, v0

    if-lt v11, v12, :cond_0

    .line 473
    const/16 v11, 0x13

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mDirectionValue:I

    .line 476
    :cond_0
    const/4 v9, 0x0

    .local v9, "x":I
    const/4 v10, 0x0

    .line 477
    .local v10, "y":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v11, v0

    if-eq v4, v11, :cond_1

    if-ge v4, v12, :cond_1

    .line 479
    aget-object v11, v0, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 480
    .local v8, "value":I
    const v11, 0xffff

    if-ne v8, v11, :cond_2

    .line 498
    .end local v8    # "value":I
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 506
    .end local v0    # "arrayStrings":[Ljava/lang/String;
    .end local v1    # "buffer":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "sourceString":Ljava/lang/String;
    .end local v9    # "x":I
    .end local v10    # "y":I
    :goto_1
    return-object v7

    .line 485
    .restart local v0    # "arrayStrings":[Ljava/lang/String;
    .restart local v1    # "buffer":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "i":I
    .restart local v5    # "length":I
    .restart local v6    # "sourceString":Ljava/lang/String;
    .restart local v8    # "value":I
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_2
    rem-int/lit8 v11, v4, 0x2

    if-nez v11, :cond_3

    .line 487
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 477
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 491
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 492
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    const/4 v9, 0x0

    .line 494
    const/4 v10, 0x0

    goto :goto_2

    .line 501
    .end local v0    # "arrayStrings":[Ljava/lang/String;
    .end local v1    # "buffer":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "sourceString":Ljava/lang/String;
    .end local v8    # "value":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 504
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getmKeyCode()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mKeyCode:I

    return v0
.end method

.method public setAnimEndlistener(Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mEndCallback:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    .line 195
    return-void
.end method

.method public setmKeyCode(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 183
    const-string v0, "VivoSmartwakeCharContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput p1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mKeyCode:I

    .line 185
    return-void
.end method

.method public startTrackAnimation(Z)V
    .locals 24
    .param p1, "isSecure"    # Z

    .prologue
    .line 199
    const-string v20, "VivoSmartwakeCharContainer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "startTrackAnimation "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mDirectionValue:I

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->recycle()V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->removeAllViews()V

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mKeyCode:I

    move/from16 v20, v0

    const/16 v21, 0x12e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 209
    const v20, 0x3020366

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->setBackgroundResource(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    if-eqz p1, :cond_1

    sget v20, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->gDisappearTimeSecure:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    :goto_0
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 451
    :cond_0
    :goto_1
    return-void

    .line 210
    :cond_1
    sget v20, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->gDisappearTime:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    goto :goto_0

    .line 214
    :cond_2
    const/4 v9, 0x0

    .line 216
    .local v9, "imageRes":I
    const/4 v10, 0x0

    .line 218
    .local v10, "isExceptional":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->readPointsFromFile()Ljava/util/ArrayList;

    move-result-object v19

    .line 220
    .local v19, "trackPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    if-eqz v19, :cond_a

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_a

    .line 222
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Point;

    .line 223
    .local v15, "tP":Landroid/graphics/Point;
    const/4 v13, 0x0

    .line 225
    .local v13, "samePointCount":I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    .line 227
    .local v18, "temPoint":Landroid/graphics/Point;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getWidth()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    if-ltz v20, :cond_4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    if-gez v20, :cond_9

    .line 229
    :cond_4
    const/4 v10, 0x1

    .line 237
    .end local v18    # "temPoint":Landroid/graphics/Point;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ne v13, v0, :cond_6

    .line 238
    const/4 v10, 0x1

    .line 246
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "samePointCount":I
    .end local v15    # "tP":Landroid/graphics/Point;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mKeyCode:I

    move/from16 v20, v0

    const/16 v21, 0x13

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 248
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 250
    :cond_7
    const/4 v10, 0x1

    .line 258
    :cond_8
    :goto_4
    const-string v20, "VivoSmartwakeCharContainer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isExceptional = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz v10, :cond_12

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mKeyCode:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mEndCallback:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mEndCallback:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;->charAnimationEnd()V

    goto/16 :goto_1

    .line 232
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v13    # "samePointCount":I
    .restart local v15    # "tP":Landroid/graphics/Point;
    .restart local v18    # "temPoint":Landroid/graphics/Point;
    :cond_9
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 234
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 243
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "samePointCount":I
    .end local v15    # "tP":Landroid/graphics/Point;
    .end local v18    # "temPoint":Landroid/graphics/Point;
    :cond_a
    const/4 v10, 0x1

    goto :goto_3

    .line 253
    :cond_b
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 255
    :cond_c
    const/4 v10, 0x1

    goto :goto_4

    .line 265
    :sswitch_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharC:I

    .line 328
    :goto_5
    const/4 v12, 0x0

    .line 329
    .local v12, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v20, 0x13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mKeyCode:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 331
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .end local v12    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v20, 0x32

    const/16 v21, 0x12c

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 332
    .restart local v12    # "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f333333    # 0.7f

    mul-float v21, v21, v22

    const/high16 v22, 0x43960000    # 300.0f

    div-float v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleY(F)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    const/16 v21, 0x32

    const/16 v22, 0x12c

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setAnimationSize(II)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x28a

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setDuration(J)V

    .line 343
    :goto_6
    const/16 v20, 0x11

    move/from16 v0, v20

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    .end local v12    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_7
    const/16 v20, 0x13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mKeyCode:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    const/16 v21, 0x32

    const/16 v22, 0x12c

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setAnimationSize(II)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x28a

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setDuration(J)V

    .line 436
    :goto_8
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 438
    .local v16, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 440
    .local v4, "bm":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 441
    .local v6, "end":J
    const-string v20, "VivoSmartwakeCharContainer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Create bitmap costs time : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v6, v16

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setSourceBitmap(Landroid/graphics/Bitmap;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->startCharAnimation()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 447
    .end local v4    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "end":J
    .end local v16    # "start":J
    :catch_0
    move-exception v5

    .line 449
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 269
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    :sswitch_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharE:I

    .line 270
    goto/16 :goto_5

    .line 273
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mDirectionValue:I

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 275
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesReversalCharO:I

    goto/16 :goto_5

    .line 277
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mDirectionValue:I

    move/from16 v20, v0

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 279
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharO:I

    goto/16 :goto_5

    .line 283
    :cond_e
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_10

    .line 285
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 286
    .local v14, "size":I
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Point;

    add-int/lit8 v21, v14, -0x1

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/Point;

    add-int/lit8 v22, v14, -0x1

    div-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getDirection(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v11

    .line 287
    .local v11, "isFlip":Z
    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesReversalCharO:I

    .line 288
    :goto_9
    goto/16 :goto_5

    .line 287
    :cond_f
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharO:I

    goto :goto_9

    .line 291
    .end local v11    # "isFlip":Z
    .end local v14    # "size":I
    :cond_10
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharO:I

    .line 294
    goto/16 :goto_5

    .line 297
    :sswitch_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharW:I

    .line 298
    goto/16 :goto_5

    .line 301
    :sswitch_4
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharF1:I

    .line 302
    goto/16 :goto_5

    .line 305
    :sswitch_5
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharAt:I

    .line 306
    goto/16 :goto_5

    .line 309
    :sswitch_6
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharUp:I

    .line 310
    goto/16 :goto_5

    .line 313
    :sswitch_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharS:I

    .line 314
    goto/16 :goto_5

    .line 317
    :sswitch_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharV:I

    .line 318
    goto/16 :goto_5

    .line 338
    .restart local v12    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_11
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .end local v12    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v20, 0x12c

    const/16 v21, 0x12c

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 339
    .restart local v12    # "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f266666    # 0.65f

    mul-float v21, v21, v22

    const/high16 v22, 0x43960000    # 300.0f

    div-float v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleX(F)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f266666    # 0.65f

    mul-float v21, v21, v22

    const/high16 v22, 0x43960000    # 300.0f

    div-float v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setScaleY(F)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    const/16 v21, 0x12c

    const/16 v22, 0x12c

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setAnimationSize(II)V

    goto/16 :goto_6

    .line 348
    .end local v12    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mKeyCode:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_1

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mEndCallback:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mEndCallback:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;->charAnimationEnd()V

    goto/16 :goto_1

    .line 351
    :sswitch_9
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharC:I

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addCharCView(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 356
    :sswitch_a
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharE:I

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addCharEView(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 361
    :sswitch_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mDirectionValue:I

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 363
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesReversalCharO:I

    .line 382
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addCharOView(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 365
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mDirectionValue:I

    move/from16 v20, v0

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 367
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharO:I

    goto :goto_a

    .line 371
    :cond_14
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 372
    .restart local v14    # "size":I
    const/16 v20, 0x3

    move/from16 v0, v20

    if-lt v14, v0, :cond_16

    .line 374
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Point;

    add-int/lit8 v21, v14, -0x1

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/Point;

    add-int/lit8 v22, v14, -0x1

    div-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getDirection(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v11

    .line 375
    .restart local v11    # "isFlip":Z
    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesReversalCharO:I

    .line 376
    :goto_b
    goto :goto_a

    .line 375
    :cond_15
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharO:I

    goto :goto_b

    .line 379
    .end local v11    # "isFlip":Z
    :cond_16
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharO:I

    goto :goto_a

    .line 386
    .end local v14    # "size":I
    :sswitch_c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharW:I

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addCharWView(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 391
    :sswitch_d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharF1:I

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addCharFView(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 396
    :sswitch_e
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharAt:I

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addCharAtView(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 401
    :sswitch_f
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharUp:I

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addCharUpView(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 406
    :sswitch_10
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharS:I

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addCharSView(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 411
    :sswitch_11
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mImagesCharV:I

    .line 412
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->addCharVView(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 431
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mAnimateCharView:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;

    move-object/from16 v20, v0

    const/16 v21, 0x12c

    const/16 v22, 0x12c

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->setAnimationSize(II)V

    goto/16 :goto_8

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_6
        0x1d -> :sswitch_5
        0x1f -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_4
        0x2b -> :sswitch_2
        0x2f -> :sswitch_7
        0x32 -> :sswitch_8
        0x33 -> :sswitch_3
    .end sparse-switch

    .line 348
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_f
        0x1d -> :sswitch_e
        0x1f -> :sswitch_9
        0x21 -> :sswitch_a
        0x22 -> :sswitch_d
        0x2b -> :sswitch_b
        0x2f -> :sswitch_10
        0x32 -> :sswitch_11
        0x33 -> :sswitch_c
    .end sparse-switch
.end method

.method public updateDisappearTime(IZ)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "isSecure"    # Z

    .prologue
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    if-eqz p2, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getDisappearTimeSecure()I

    move-result v0

    sput v0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->gDisappearTimeSecure:I

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_0
    .end packed-switch
.end method
