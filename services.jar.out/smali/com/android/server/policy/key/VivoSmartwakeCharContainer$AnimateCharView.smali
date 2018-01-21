.class public Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;
.super Landroid/view/View;
.source "VivoSmartwakeCharContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoSmartwakeCharContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimateCharView"
.end annotation


# static fields
.field private static final ANIMATION_TIME:I = 0x320


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDst:Landroid/graphics/Rect;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

.field private mSrc:Landroid/graphics/Rect;

.field private mTempRect:Landroid/graphics/Rect;

.field private mWidth:I

.field final synthetic this$0:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 937
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;-><init>(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 938
    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 942
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;-><init>(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 943
    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    const/16 v1, 0x12c

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 946
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->this$0:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    .line 947
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 915
    iput-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mPaint:Landroid/graphics/Paint;

    .line 917
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mSrc:Landroid/graphics/Rect;

    .line 919
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mDst:Landroid/graphics/Rect;

    .line 921
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mTempRect:Landroid/graphics/Rect;

    .line 923
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    .line 925
    iput-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 929
    iput-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mBitmap:Landroid/graphics/Bitmap;

    .line 931
    iput v2, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mWidth:I

    .line 933
    iput v2, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mHeight:I

    .line 949
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mPaint:Landroid/graphics/Paint;

    .line 950
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 952
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 953
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 954
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 955
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 956
    return-void

    .line 952
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawChar(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1004
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1005
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1006
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1008
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1009
    .local v0, "index":I
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 1011
    const/16 v0, 0x13

    .line 1013
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->getClipRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mSrc:Landroid/graphics/Rect;

    .line 1015
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mSrc:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mDst:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1017
    .end local v0    # "index":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1018
    return-void
.end method

.method private getClipRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "index"    # I
    .param p2, "temp"    # Landroid/graphics/Rect;

    .prologue
    .line 1022
    rem-int/lit8 v0, p1, 0x4

    .line 1023
    .local v0, "col":I
    div-int/lit8 v1, p1, 0x4

    .line 1025
    .local v1, "row":I
    iget v2, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mWidth:I

    mul-int/2addr v2, v0

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 1026
    iget v2, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mHeight:I

    mul-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 1027
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mWidth:I

    add-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 1028
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mHeight:I

    add-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 1030
    return-object p2
.end method


# virtual methods
.method public endAnimation()V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 984
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1055
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->recycle()V

    .line 1048
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->this$0:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->access$200(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1049
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1060
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1042
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->invalidate()V

    .line 1037
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 998
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 999
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->drawChar(Landroid/graphics/Canvas;)V

    .line 1000
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mBitmap:Landroid/graphics/Bitmap;

    .line 993
    :cond_0
    return-void
.end method

.method public setAnimationSize(II)V
    .locals 2
    .param p1, "widht"    # I
    .param p2, "height"    # I

    .prologue
    .line 965
    iput p1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mWidth:I

    .line 966
    iput p2, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mHeight:I

    .line 967
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mDst:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mDst:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 968
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mDst:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mDst:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 969
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 961
    return-void
.end method

.method public setSourceBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmaps"    # Landroid/graphics/Bitmap;

    .prologue
    .line 973
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mBitmap:Landroid/graphics/Bitmap;

    .line 974
    return-void
.end method

.method public startCharAnimation()V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$AnimateCharView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 979
    return-void
.end method
