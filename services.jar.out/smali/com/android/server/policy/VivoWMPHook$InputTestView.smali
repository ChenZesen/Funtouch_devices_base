.class Lcom/android/server/policy/VivoWMPHook$InputTestView;
.super Landroid/view/View;
.source "VivoWMPHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoWMPHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputTestView"
.end annotation


# static fields
.field private static final MAXP:F = 0.75f

.field private static final MINP:F = 0.25f

.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 679
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 680
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPath:Landroid/graphics/Path;

    .line 681
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 683
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPaint:Landroid/graphics/Paint;

    .line 684
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 685
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 686
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 687
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 688
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 689
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 692
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/VivoWMPHook$InputTestView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    return-void
.end method

.method private touch_move(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 725
    iget v2, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 726
    .local v0, "dx":F
    iget v2, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 727
    .local v1, "dy":F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 728
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mX:F

    iget v4, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mY:F

    iget v5, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 729
    iput p1, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mX:F

    .line 730
    iput p2, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mY:F

    .line 732
    :cond_1
    return-void
.end method

.method private touch_start(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 719
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 720
    iput p1, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mX:F

    .line 721
    iput p2, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mY:F

    .line 722
    return-void
.end method

.method private touch_up()V
    .locals 3

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mX:F

    iget v2, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 737
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 738
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 739
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 707
    const v0, -0x555556

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 709
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 711
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 712
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 766
    const-string v0, "VivoWMPHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 772
    const-string v0, "VivoWMPHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 700
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 701
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mBitmap:Landroid/graphics/Bitmap;

    .line 702
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoWMPHook$InputTestView;->mCanvas:Landroid/graphics/Canvas;

    .line 703
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 744
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 746
    .local v1, "y":F
    const-string v2, "VivoWMPHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 761
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 749
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/VivoWMPHook$InputTestView;->touch_start(FF)V

    .line 750
    invoke-virtual {p0}, Lcom/android/server/policy/VivoWMPHook$InputTestView;->invalidate()V

    goto :goto_0

    .line 753
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/VivoWMPHook$InputTestView;->touch_move(FF)V

    .line 754
    invoke-virtual {p0}, Lcom/android/server/policy/VivoWMPHook$InputTestView;->invalidate()V

    goto :goto_0

    .line 757
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/policy/VivoWMPHook$InputTestView;->touch_up()V

    .line 758
    invoke-virtual {p0}, Lcom/android/server/policy/VivoWMPHook$InputTestView;->invalidate()V

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
