.class public Lcom/vivo/alphaindex/ToastThumb;
.super Lcom/vivo/alphaindex/ThumbSelector;
.source "ToastThumb.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/alphaindex/ToastThumb$1;,
        Lcom/vivo/alphaindex/ToastThumb$ToastText;,
        Lcom/vivo/alphaindex/ToastThumb$OnToastShow;,
        Lcom/vivo/alphaindex/ToastThumb$DelayedToast;
    }
.end annotation


# instance fields
.field private mAlphabetPos:I

.field private mContext:Landroid/content/Context;

.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayedToast:Lcom/vivo/alphaindex/ToastThumb$DelayedToast;

.field private mHeight:I

.field private mIsShowToast:Z

.field private mIsToastDelayed:Z

.field private mShowListener:Lcom/vivo/alphaindex/ToastThumb$OnToastShow;

.field private mToastDelayTime:J

.field private mToastShowX:I

.field private mToastShowY:I

.field private mToastTextView:Lcom/vivo/alphaindex/ToastThumb$ToastText;

.field private mToastView:Landroid/widget/FrameLayout;

.field private mToastWindow:Landroid/widget/PopupWindow;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/alphaindex/ToastThumb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/vivo/alphaindex/ThumbSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object v3, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;

    .line 25
    iput-object v3, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastView:Landroid/widget/FrameLayout;

    .line 27
    iput-object v3, p0, Lcom/vivo/alphaindex/ToastThumb;->mShowListener:Lcom/vivo/alphaindex/ToastThumb$OnToastShow;

    .line 28
    iput v2, p0, Lcom/vivo/alphaindex/ToastThumb;->mAlphabetPos:I

    .line 31
    const/16 v0, 0x1e

    iput v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowX:I

    .line 32
    const/16 v0, 0x28

    iput v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowY:I

    .line 35
    iput v2, p0, Lcom/vivo/alphaindex/ToastThumb;->mWidth:I

    .line 36
    iput v2, p0, Lcom/vivo/alphaindex/ToastThumb;->mHeight:I

    .line 38
    iput-boolean v2, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsShowToast:Z

    .line 39
    iput-object v3, p0, Lcom/vivo/alphaindex/ToastThumb;->mContext:Landroid/content/Context;

    .line 42
    iput-boolean v2, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsToastDelayed:Z

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastDelayTime:J

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/vivo/alphaindex/ToastThumb$DelayedToast;

    invoke-direct {v0, p0, v3}, Lcom/vivo/alphaindex/ToastThumb$DelayedToast;-><init>(Lcom/vivo/alphaindex/ToastThumb;Lcom/vivo/alphaindex/ToastThumb$1;)V

    iput-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayedToast:Lcom/vivo/alphaindex/ToastThumb$DelayedToast;

    .line 47
    iput-object v3, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastTextView:Lcom/vivo/alphaindex/ToastThumb$ToastText;

    .line 55
    iput-object p1, p0, Lcom/vivo/alphaindex/ToastThumb;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowX:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowY:I

    .line 60
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastView:Landroid/widget/FrameLayout;

    .line 61
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastView:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;

    .line 62
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 64
    new-instance v0, Lcom/vivo/alphaindex/ToastThumb$ToastText;

    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/vivo/alphaindex/ToastThumb$ToastText;-><init>(Lcom/vivo/alphaindex/ToastThumb;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastTextView:Lcom/vivo/alphaindex/ToastThumb$ToastText;

    .line 65
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastTextView:Lcom/vivo/alphaindex/ToastThumb$ToastText;

    invoke-virtual {p0, v0}, Lcom/vivo/alphaindex/ToastThumb;->setShowListener(Lcom/vivo/alphaindex/ToastThumb$OnToastShow;)V

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/vivo/alphaindex/ToastThumb;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/alphaindex/ToastThumb;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/alphaindex/ToastThumb;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/alphaindex/ToastThumb;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsToastDelayed:Z

    return v0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsToastDelayed:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 168
    :cond_0
    return-void
.end method

.method private isShow()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method private setToastContent()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsShowToast:Z

    .line 174
    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mShowListener:Lcom/vivo/alphaindex/ToastThumb$OnToastShow;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mShowListener:Lcom/vivo/alphaindex/ToastThumb$OnToastShow;

    iget v2, p0, Lcom/vivo/alphaindex/ToastThumb;->mAlphabetPos:I

    invoke-interface {v1, p0, v2}, Lcom/vivo/alphaindex/ToastThumb$OnToastShow;->getView(Lcom/vivo/alphaindex/ToastThumb;I)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 177
    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsShowToast:Z

    .line 181
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private show()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 124
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 126
    .local v0, "location":[I
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->setToastContent()V

    .line 127
    invoke-direct {p0, v0}, Lcom/vivo/alphaindex/ToastThumb;->transToastLocation([I)V

    .line 129
    iget-boolean v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsShowToast:Z

    if-ne v1, v3, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 133
    :cond_0
    iget-boolean v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsToastDelayed:Z

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayedToast:Lcom/vivo/alphaindex/ToastThumb$DelayedToast;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayedToast:Lcom/vivo/alphaindex/ToastThumb$DelayedToast;

    iget-wide v4, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastDelayTime:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->dismiss()V

    goto :goto_0
.end method

.method private transToastLocation([I)V
    .locals 4
    .param p1, "location"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/alphaindex/ToastThumb;->getLayoutDirection()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 191
    iget v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    aput v0, p1, v2

    .line 198
    :goto_0
    iget v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mHeight:I

    iget v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowY:I

    if-lt v0, v1, :cond_2

    .line 199
    iget v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mHeight:I

    iget v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowY:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    aput v0, p1, v3

    .line 202
    :goto_1
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 195
    iget v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    aput v0, p1, v2

    goto :goto_0

    .line 201
    :cond_2
    iget v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowY:I

    iget v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mHeight:I

    sub-int/2addr v0, v1

    aput v0, p1, v3

    goto :goto_1
.end method

.method private update()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 146
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 148
    .local v6, "location":[I
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->setToastContent()V

    .line 149
    invoke-direct {p0, v6}, Lcom/vivo/alphaindex/ToastThumb;->transToastLocation([I)V

    .line 150
    iget-boolean v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsShowToast:Z

    if-ne v0, v3, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    aget v2, v6, v1

    aget v3, v6, v3

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 154
    iget-boolean v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsToastDelayed:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayedToast:Lcom/vivo/alphaindex/ToastThumb$DelayedToast;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayedToast:Lcom/vivo/alphaindex/ToastThumb$DelayedToast;

    iget-wide v2, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastDelayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public dismissToast()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-boolean v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsToastDelayed:Z

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayedToast:Lcom/vivo/alphaindex/ToastThumb$DelayedToast;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 210
    :cond_1
    return-void
.end method

.method public getToastLocation([I)V
    .locals 2
    .param p1, "pos"    # [I

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowX:I

    aput v1, p1, v0

    .line 233
    const/4 v0, 0x1

    iget v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowY:I

    aput v1, p1, v0

    .line 234
    return-void
.end method

.method public getToastTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastTextView:Lcom/vivo/alphaindex/ToastThumb$ToastText;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsToastDelayed:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/alphaindex/ToastThumb;->mDelayedToast:Lcom/vivo/alphaindex/ToastThumb$DelayedToast;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    :cond_0
    invoke-super {p0}, Lcom/vivo/alphaindex/ThumbSelector;->onDetachedFromWindow()V

    .line 85
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 111
    sub-int v0, p5, p3

    iput v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mHeight:I

    .line 112
    sub-int v0, p4, p2

    iput v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mWidth:I

    .line 114
    invoke-super/range {p0 .. p5}, Lcom/vivo/alphaindex/ThumbSelector;->onLayout(ZIIII)V

    .line 115
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->update()V

    .line 116
    return-void
.end method

.method protected setOnTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "alphabetPos"    # I

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/vivo/alphaindex/ThumbSelector;->setOnTouchEvent(Landroid/view/MotionEvent;I)V

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    if-ltz p2, :cond_0

    .line 95
    iput p2, p0, Lcom/vivo/alphaindex/ToastThumb;->mAlphabetPos:I

    .line 96
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->isShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->show()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->update()V

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->dismiss()V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowListener(Lcom/vivo/alphaindex/ToastThumb$OnToastShow;)V
    .locals 0
    .param p1, "show"    # Lcom/vivo/alphaindex/ToastThumb$OnToastShow;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/vivo/alphaindex/ToastThumb;->mShowListener:Lcom/vivo/alphaindex/ToastThumb$OnToastShow;

    .line 214
    return-void
.end method

.method public setToastDelayedTime(J)V
    .locals 3
    .param p1, "milisec"    # J

    .prologue
    .line 238
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsToastDelayed:Z

    .line 240
    iput-wide p1, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastDelayTime:J

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/alphaindex/ToastThumb;->mIsToastDelayed:Z

    goto :goto_0
.end method

.method public setToastLocation(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowX:I

    .line 223
    iput p2, p0, Lcom/vivo/alphaindex/ToastThumb;->mToastShowY:I

    .line 225
    invoke-direct {p0}, Lcom/vivo/alphaindex/ToastThumb;->update()V

    .line 226
    return-void
.end method
