.class public Lcom/vivo/common/animation/LKListView;
.super Lcom/vivo/common/widget/VivoListView;
.source "LKListView.java"

# interfaces
.implements Lcom/vivo/common/animation/SearchView$IScrollLock;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/animation/LKListView$1;,
        Lcom/vivo/common/animation/LKListView$TextDirectionHeuristicImpl;
    }
.end annotation


# static fields
.field private static final CLICK_BOTTOM_PADDING:F = 0.1f

.field private static final CLICK_INTERVAL:I = 0x1f4

.field private static final CLICK_LEFT_PADDING:F = 0.1f

.field private static final CLICK_RIGHT_PADDING:F = 0.1f

.field private static final CLICK_TOP_PADDING:F = 0.1f


# instance fields
.field private DownY:F

.field private mClickRect:Landroid/graphics/Rect;

.field private mClickWillBack:Z

.field private mContext:Landroid/content/Context;

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field private mLock:Z

.field private mNotifyText:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mSearchControl:Lcom/vivo/common/animation/SearchControl;

.field private mShowNotify:Z

.field private mSoftInputAffectLayout:Z

.field private mTextSize:I

.field private mTouchSlop:I

.field private mTouchValid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/animation/LKListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/widget/VivoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-boolean v1, p0, Lcom/vivo/common/animation/LKListView;->mLock:Z

    .line 30
    iput v2, p0, Lcom/vivo/common/animation/LKListView;->mDownY:F

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/animation/LKListView;->mPaint:Landroid/graphics/Paint;

    .line 35
    const/16 v0, 0x1a

    iput v0, p0, Lcom/vivo/common/animation/LKListView;->mTextSize:I

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/animation/LKListView;->mRect:Landroid/graphics/Rect;

    .line 37
    iput-boolean v1, p0, Lcom/vivo/common/animation/LKListView;->mShowNotify:Z

    .line 38
    iput-boolean v1, p0, Lcom/vivo/common/animation/LKListView;->mSoftInputAffectLayout:Z

    .line 40
    iput-boolean v1, p0, Lcom/vivo/common/animation/LKListView;->mClickWillBack:Z

    .line 42
    iput v2, p0, Lcom/vivo/common/animation/LKListView;->mDownX:F

    iput v2, p0, Lcom/vivo/common/animation/LKListView;->DownY:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mTouchValid:Z

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/animation/LKListView;->mClickRect:Landroid/graphics/Rect;

    .line 63
    iput-object p1, p0, Lcom/vivo/common/animation/LKListView;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/vivo/common/animation/LKListView;->initalData()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/VivoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-boolean v1, p0, Lcom/vivo/common/animation/LKListView;->mLock:Z

    .line 30
    iput v2, p0, Lcom/vivo/common/animation/LKListView;->mDownY:F

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/animation/LKListView;->mPaint:Landroid/graphics/Paint;

    .line 35
    const/16 v0, 0x1a

    iput v0, p0, Lcom/vivo/common/animation/LKListView;->mTextSize:I

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/animation/LKListView;->mRect:Landroid/graphics/Rect;

    .line 37
    iput-boolean v1, p0, Lcom/vivo/common/animation/LKListView;->mShowNotify:Z

    .line 38
    iput-boolean v1, p0, Lcom/vivo/common/animation/LKListView;->mSoftInputAffectLayout:Z

    .line 40
    iput-boolean v1, p0, Lcom/vivo/common/animation/LKListView;->mClickWillBack:Z

    .line 42
    iput v2, p0, Lcom/vivo/common/animation/LKListView;->mDownX:F

    iput v2, p0, Lcom/vivo/common/animation/LKListView;->DownY:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mTouchValid:Z

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/animation/LKListView;->mClickRect:Landroid/graphics/Rect;

    .line 72
    iput-object p1, p0, Lcom/vivo/common/animation/LKListView;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/vivo/common/animation/LKListView;->initalData()V

    .line 75
    return-void
.end method

.method private checkLock(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 122
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 125
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/vivo/common/animation/LKListView;->mDownY:F

    .line 127
    :pswitch_2
    iget-boolean v1, p0, Lcom/vivo/common/animation/LKListView;->mLock:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/vivo/common/animation/LKListView;->mDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/vivo/common/animation/LKListView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 129
    const/4 v1, 0x1

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initalData()V
    .locals 5

    .prologue
    .line 79
    iget-object v1, p0, Lcom/vivo/common/animation/LKListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 80
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/vivo/common/animation/LKListView;->mTouchSlop:I

    .line 81
    iget-object v1, p0, Lcom/vivo/common/animation/LKListView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v1, p0, Lcom/vivo/common/animation/LKListView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    iget v3, p0, Lcom/vivo/common/animation/LKListView;->mTextSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vivo/common/animation/LKListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    return-void
.end method

.method private onClick()V
    .locals 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mClickWillBack:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/vivo/common/animation/LKListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mShowNotify:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/LKListView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/LKListView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchControl;->getSearchState()I

    move-result v0

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/vivo/common/animation/LKListView;->rectCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/vivo/common/animation/LKListView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchControl;->switchToNormal()V

    .line 255
    :cond_0
    return-void
.end method

.method private rectCheck()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const v6, 0x3f666666    # 0.9f

    const v5, 0x3dcccccd    # 0.1f

    .line 229
    invoke-virtual {p0}, Lcom/vivo/common/animation/LKListView;->getWidth()I

    move-result v1

    .line 230
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/vivo/common/animation/LKListView;->getHeight()I

    move-result v0

    .line 232
    .local v0, "height":I
    iget v3, p0, Lcom/vivo/common/animation/LKListView;->mDownX:F

    int-to-float v4, v1

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/vivo/common/animation/LKListView;->mDownX:F

    int-to-float v4, v1

    mul-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v2

    .line 237
    :cond_1
    iget v3, p0, Lcom/vivo/common/animation/LKListView;->mDownY:F

    int-to-float v4, v0

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/vivo/common/animation/LKListView;->mDownY:F

    int-to-float v4, v0

    mul-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 241
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    invoke-super/range {p0 .. p1}, Lcom/vivo/common/widget/VivoListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/common/animation/LKListView;->mNotifyText:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/common/animation/LKListView;->mShowNotify:Z

    if-eqz v2, :cond_1

    .line 142
    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/common/animation/LKListView;->mNotifyText:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/animation/LKListView;->mNotifyText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/animation/LKListView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/common/animation/LKListView;->getWidth()I

    move-result v6

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    new-instance v8, Lcom/vivo/common/animation/LKListView$TextDirectionHeuristicImpl;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9}, Lcom/vivo/common/animation/LKListView$TextDirectionHeuristicImpl;-><init>(Lcom/vivo/common/animation/LKListView;Lcom/vivo/common/animation/LKListView$1;)V

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/common/animation/LKListView;->getWidth()I

    move-result v13

    const/4 v14, 0x2

    invoke-direct/range {v1 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 146
    .local v1, "layout":Landroid/text/StaticLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/common/animation/LKListView;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v15, v2, 0x2

    .line 147
    .local v15, "offsetY":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/common/animation/LKListView;->mSoftInputAffectLayout:Z

    if-eqz v2, :cond_0

    .line 148
    div-int/lit8 v15, v15, 0x2

    .line 150
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    const/4 v2, 0x0

    int-to-float v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 155
    .end local v1    # "layout":Landroid/text/StaticLayout;
    .end local v15    # "offsetY":I
    :cond_1
    return-void
.end method

.method public lockScroll()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mLock:Z

    .line 168
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mLock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/vivo/common/widget/VivoListView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/LKListView;->checkLock(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/vivo/common/widget/VivoListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/LKListView;->checkLock(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 115
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/vivo/common/widget/VivoListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 93
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/vivo/common/animation/LKListView;->mDownX:F

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/vivo/common/animation/LKListView;->mDownY:F

    .line 95
    iput-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mTouchValid:Z

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/common/animation/LKListView;->mDownTime:J

    goto :goto_1

    .line 101
    :pswitch_1
    iget-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mTouchValid:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vivo/common/animation/LKListView;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/vivo/common/animation/LKListView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/vivo/common/animation/LKListView;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/vivo/common/animation/LKListView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 104
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mTouchValid:Z

    goto :goto_1

    .line 110
    :pswitch_2
    iget-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mTouchValid:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vivo/common/animation/LKListView;->mDownTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/vivo/common/animation/LKListView;->onClick()V

    goto :goto_1

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setClickWillBack(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/vivo/common/animation/LKListView;->mClickWillBack:Z

    .line 225
    return-void
.end method

.method public setNotifyText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/vivo/common/animation/LKListView;->mNotifyText:Ljava/lang/String;

    .line 190
    iget-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mShowNotify:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/vivo/common/animation/LKListView;->invalidate()V

    .line 194
    :cond_0
    return-void
.end method

.method public setNotifyTextSize(I)V
    .locals 4
    .param p1, "textSize"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/vivo/common/animation/LKListView;->mTextSize:I

    .line 200
    iget-object v0, p0, Lcom/vivo/common/animation/LKListView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    iget v2, p0, Lcom/vivo/common/animation/LKListView;->mTextSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vivo/common/animation/LKListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 201
    iget-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mShowNotify:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/LKListView;->mNotifyText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/vivo/common/animation/LKListView;->invalidate()V

    .line 205
    :cond_0
    return-void
.end method

.method setSearchControl(Lcom/vivo/common/animation/SearchControl;)V
    .locals 0
    .param p1, "searchControl"    # Lcom/vivo/common/animation/SearchControl;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/vivo/common/animation/LKListView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    .line 220
    return-void
.end method

.method public setSoftInputAffectLayout(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/vivo/common/animation/LKListView;->mSoftInputAffectLayout:Z

    .line 211
    iget-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mShowNotify:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/LKListView;->mNotifyText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/vivo/common/animation/LKListView;->invalidate()V

    .line 215
    :cond_0
    return-void
.end method

.method public showNotifyText(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mShowNotify:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/LKListView;->mNotifyText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/vivo/common/animation/LKListView;->invalidate()V

    .line 183
    :cond_0
    iput-boolean p1, p0, Lcom/vivo/common/animation/LKListView;->mShowNotify:Z

    .line 184
    return-void
.end method

.method public unLockScroll()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/animation/LKListView;->mLock:Z

    .line 174
    return-void
.end method
