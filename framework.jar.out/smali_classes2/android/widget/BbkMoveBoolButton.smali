.class public Landroid/widget/BbkMoveBoolButton;
.super Landroid/view/View;
.source "BbkMoveBoolButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BbkMoveBoolButton$Status;,
        Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CLICK_ANIMATE_MSG:I = 0x0

.field private static final CLICK_ANIMATION_TIME:I = 0x14a

.field private static final CLICK_OFFSET_SCALE:F = 0.27f

.field private static final DRAG_ANIMATE_MSG:I = 0x1

.field private static final END_ANIMATION_MSG:I = 0x4

.field private static final LOADING_PROGRESS:I = 0x3

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private bInAnimate:Z

.field private isFirstDraw:Z

.field private mBgRect:Landroid/graphics/Rect;

.field private mChecked:Z

.field private mCircleRadius:I

.field private mEnd:I

.field private mHandPos:I

.field private mInterpolator:Landroid/animation/ValueAnimator;

.field private mIsLoading:Z

.field private mIsStartLoading:Z

.field private mIsStopLoading:Z

.field private mLeftHandPos:I

.field private mLoadingAngle:F

.field private mLoadingColor:I

.field private mMaxHandWidth:I

.field private mOffBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mOffset:I

.field private mOffset2:I

.field private mOnBBKCheckedChangeListener:Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

.field private mOnBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPaintForLoading:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRightHandPos:I

.field private mRomVersion:F

.field private mScrollRange:I

.field private mStart:I

.field private mStartLoadingAlpha:I

.field mStartTime:J

.field private mStepAngle:F

.field private mStopLoadingAlpha:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTrackHandDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackHandDrawableDisabled:Landroid/graphics/drawable/Drawable;

.field private mTrackLeftHandDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackLeftHandDrawableDisabled:Landroid/graphics/drawable/Drawable;

.field private mTrackRightHandDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackRightHandDrawableDisabled:Landroid/graphics/drawable/Drawable;

.field private mhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BbkMoveBoolButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 150
    const v0, 0x3010018

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/BbkMoveBoolButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/BbkMoveBoolButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/16 v4, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const-string v1, "VivoMoveBoolButton"

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->TAG:Ljava/lang/String;

    .line 59
    iput-boolean v3, p0, Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/BbkMoveBoolButton;->mLoadingAngle:F

    .line 63
    iput v3, p0, Landroid/widget/BbkMoveBoolButton;->mStartLoadingAlpha:I

    .line 65
    iput v3, p0, Landroid/widget/BbkMoveBoolButton;->mStopLoadingAlpha:I

    .line 67
    iput-boolean v3, p0, Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z

    .line 69
    iput-boolean v3, p0, Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z

    .line 73
    const v1, 0x4088a3d7    # 4.27f

    iput v1, p0, Landroid/widget/BbkMoveBoolButton;->mStepAngle:F

    .line 100
    iput-boolean v2, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    .line 130
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mPath:Landroid/graphics/Path;

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mBgRect:Landroid/graphics/Rect;

    .line 140
    iput-boolean v3, p0, Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z

    .line 141
    iput-boolean v2, p0, Landroid/widget/BbkMoveBoolButton;->isFirstDraw:Z

    .line 547
    new-instance v1, Landroid/widget/BbkMoveBoolButton$1;

    invoke-direct {v1, p0}, Landroid/widget/BbkMoveBoolButton$1;-><init>(Landroid/widget/BbkMoveBoolButton;)V

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;

    .line 164
    sget-object v1, Lcom/vivo/internal/R$styleable;->MoveBoolButton:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mOnBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mOffBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mTrackHandDrawable:Landroid/graphics/drawable/Drawable;

    .line 172
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mTrackHandDrawableDisabled:Landroid/graphics/drawable/Drawable;

    .line 174
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mTrackLeftHandDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mTrackRightHandDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mTrackLeftHandDrawableDisabled:Landroid/graphics/drawable/Drawable;

    .line 180
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mTrackRightHandDrawableDisabled:Landroid/graphics/drawable/Drawable;

    .line 182
    const/16 v1, 0x8

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/BbkMoveBoolButton;->mLoadingColor:I

    .line 183
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingTop:I

    .line 184
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingBottom:I

    .line 185
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/BbkMoveBoolButton;->mMaxHandWidth:I

    .line 186
    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    check-cast v1, Landroid/view/animation/PathInterpolator;

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 188
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    invoke-direct {p0, p1}, Landroid/widget/BbkMoveBoolButton;->init(Landroid/content/Context;)V

    .line 191
    return-void
.end method

.method static synthetic access$000(Landroid/widget/BbkMoveBoolButton;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mInterpolator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/BbkMoveBoolButton;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mStepAngle:F

    return v0
.end method

.method static synthetic access$102(Landroid/widget/BbkMoveBoolButton;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/BbkMoveBoolButton;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    iget-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/BbkMoveBoolButton;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/BbkMoveBoolButton;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/BbkMoveBoolButton;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    iget-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/BbkMoveBoolButton;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/BbkMoveBoolButton;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mStart:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/BbkMoveBoolButton;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Landroid/widget/BbkMoveBoolButton;->mStart:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/BbkMoveBoolButton;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mEnd:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/BbkMoveBoolButton;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Landroid/widget/BbkMoveBoolButton;->mOffset2:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/BbkMoveBoolButton;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    iget-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z

    return v0
.end method

.method static synthetic access$600(Landroid/widget/BbkMoveBoolButton;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/BbkMoveBoolButton;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BbkMoveBoolButton;->endOfAnimation()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/BbkMoveBoolButton;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    iget-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$802(Landroid/widget/BbkMoveBoolButton;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$900(Landroid/widget/BbkMoveBoolButton;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;

    .prologue
    .line 37
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mLoadingAngle:F

    return v0
.end method

.method static synthetic access$902(Landroid/widget/BbkMoveBoolButton;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Landroid/widget/BbkMoveBoolButton;->mLoadingAngle:F

    return p1
.end method

.method static synthetic access$916(Landroid/widget/BbkMoveBoolButton;F)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/BbkMoveBoolButton;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mLoadingAngle:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mLoadingAngle:F

    return v0
.end method

.method private animateToCheckedState(Z)V
    .locals 3
    .param p1, "newCheckedState"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 463
    iput-boolean p1, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    .line 464
    if-eqz p1, :cond_0

    move v0, v1

    .line 465
    .local v0, "targetPos":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/BbkMoveBoolButton;->playSoundEffect(I)V

    .line 466
    iput-boolean v2, p0, Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z

    .line 467
    iget v1, p0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    iput v1, p0, Landroid/widget/BbkMoveBoolButton;->mStart:I

    .line 468
    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mEnd:I

    .line 469
    iget-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 470
    return-void

    .line 464
    .end local v0    # "targetPos":I
    :cond_0
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mScrollRange:I

    goto :goto_0
.end method

.method private clickAnimateToCheckedState(Z)V
    .locals 4
    .param p1, "newCheckedState"    # Z

    .prologue
    const/4 v1, 0x0

    .line 473
    if-eqz p1, :cond_0

    move v0, v1

    .line 474
    .local v0, "targetPos":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/BbkMoveBoolButton;->playSoundEffect(I)V

    .line 475
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z

    .line 476
    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->ensureInterpolator()V

    .line 477
    iget v2, p0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mStart:I

    .line 478
    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mEnd:I

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/BbkMoveBoolButton;->mStartTime:J

    .line 480
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    return-void

    .line 473
    .end local v0    # "targetPos":I
    :cond_0
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mScrollRange:I

    goto :goto_0
.end method

.method private configAnimator()V
    .locals 4

    .prologue
    .line 542
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 543
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 544
    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BbkMoveBoolButton;->mInterpolator:Landroid/animation/ValueAnimator;

    .line 545
    return-void

    .line 542
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawProgressLoading(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "angle"    # F

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 345
    iget-boolean v5, p0, Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z

    if-nez v5, :cond_0

    .line 366
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v5, 0x2

    new-array v0, v5, [F

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v0, v9

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v0, v10

    .line 352
    .local v0, "center":[F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 353
    aget v5, v0, v9

    aget v6, v0, v10

    invoke-virtual {p1, p3, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 354
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 355
    .local v3, "radius":I
    const v4, 0x3f860a92

    .line 357
    .local v4, "stepAngle":F
    new-array v2, v11, [[F

    .line 358
    .local v2, "moons":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v11, :cond_1

    .line 359
    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    int-to-float v6, v1

    mul-float/2addr v6, v4

    invoke-direct {p0, v5, v6, v0}, Landroid/widget/BbkMoveBoolButton;->getConnection(FF[F)[F

    move-result-object v5

    aput-object v5, v2, v1

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 362
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v11, :cond_2

    .line 363
    aget-object v5, v2, v1

    aget v5, v5, v9

    aget-object v6, v2, v1

    aget v6, v6, v10

    const/high16 v7, 0x40400000    # 3.0f

    iget-object v8, p0, Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 365
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private endOfAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    iput-boolean v2, p0, Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z

    .line 636
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mOnBBKCheckedChangeListener:Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mOnBBKCheckedChangeListener:Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/BbkMoveBoolButton;Z)V

    .line 640
    :cond_0
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mOffset2:I

    .line 641
    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mTouchMode:I

    .line 642
    return-void
.end method

.method private getConnection(FF[F)[F
    .locals 5
    .param p1, "radius"    # F
    .param p2, "angle"    # F
    .param p3, "center"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 369
    invoke-direct {p0, p1, p2}, Landroid/widget/BbkMoveBoolButton;->getVector(FF)[F

    move-result-object v0

    .line 370
    .local v0, "vector":[F
    aget v1, v0, v3

    aget v2, p3, v3

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 371
    aget v1, v0, v4

    aget v2, p3, v4

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 372
    return-object v0
.end method

.method private getVector(FF)[F
    .locals 6
    .param p1, "radius"    # F
    .param p2, "angle"    # F

    .prologue
    .line 376
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 194
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 195
    .local v0, "config":Landroid/view/ViewConfiguration;
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mTouchSlop:I

    .line 197
    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 200
    .local v1, "density":F
    invoke-static {}, Landroid/os/FtBuild;->getRomVersion()F

    move-result v2

    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mRomVersion:F

    .line 201
    iget v2, p0, Landroid/widget/BbkMoveBoolButton;->mRomVersion:F

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 202
    iget v2, p0, Landroid/widget/BbkMoveBoolButton;->mMaxHandWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mMaxHandWidth:I

    .line 208
    :goto_0
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mTrackHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mCircleRadius:I

    .line 210
    iget v2, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingLeft:I

    iget v3, p0, Landroid/widget/BbkMoveBoolButton;->mCircleRadius:I

    add-int/2addr v2, v3

    mul-float v3, v4, v1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mLeftHandPos:I

    .line 212
    iget v2, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingLeft:I

    iget-object v3, p0, Landroid/widget/BbkMoveBoolButton;->mOnBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/BbkMoveBoolButton;->mTrackHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    mul-float v3, v4, v1

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mHandPos:I

    .line 215
    iget v2, p0, Landroid/widget/BbkMoveBoolButton;->mHandPos:I

    iget-object v3, p0, Landroid/widget/BbkMoveBoolButton;->mOnBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/BbkMoveBoolButton;->mTrackHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/BbkMoveBoolButton;->mTrackRightHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mRightHandPos:I

    .line 219
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mOnBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/BbkMoveBoolButton;->mTrackHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mScrollRange:I

    .line 221
    return-void

    .line 204
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mMaxHandWidth:I

    goto :goto_0
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 454
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    iget v1, p0, Landroid/widget/BbkMoveBoolButton;->mScrollRange:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/BbkMoveBoolButton;->animateToCheckedState(Z)V

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/BbkMoveBoolButton;->animateToCheckedState(Z)V

    goto :goto_0
.end method


# virtual methods
.method public endLoading()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 518
    iget-boolean v2, p0, Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z

    if-nez v2, :cond_0

    .line 524
    :goto_0
    return v0

    .line 521
    :cond_0
    iput-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z

    .line 522
    iput-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z

    .line 523
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mStartLoadingAlpha:I

    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mStartLoadingAlpha:I

    move v0, v1

    .line 524
    goto :goto_0
.end method

.method protected ensureInterpolator()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mInterpolator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 629
    invoke-direct {p0}, Landroid/widget/BbkMoveBoolButton;->configAnimator()V

    .line 632
    :cond_0
    return-void
.end method

.method public getStatus()Landroid/widget/BbkMoveBoolButton$Status;
    .locals 4

    .prologue
    const/high16 v3, 0x43800000    # 256.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 704
    new-instance v0, Landroid/widget/BbkMoveBoolButton$Status;

    invoke-direct {v0}, Landroid/widget/BbkMoveBoolButton$Status;-><init>()V

    .line 705
    .local v0, "status":Landroid/widget/BbkMoveBoolButton$Status;
    iget v1, p0, Landroid/widget/BbkMoveBoolButton;->mLoadingAngle:F

    iput v1, v0, Landroid/widget/BbkMoveBoolButton$Status;->angle:F

    .line 706
    iget-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z

    if-eqz v1, :cond_0

    .line 707
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/BbkMoveBoolButton$Status;->status:I

    .line 708
    iget v1, p0, Landroid/widget/BbkMoveBoolButton;->mStartLoadingAlpha:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, v0, Landroid/widget/BbkMoveBoolButton$Status;->progress:F

    .line 717
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->shutdownLoading()V

    .line 718
    return-object v0

    .line 709
    :cond_0
    iget-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z

    if-eqz v1, :cond_1

    .line 710
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/BbkMoveBoolButton$Status;->status:I

    .line 711
    iget v1, p0, Landroid/widget/BbkMoveBoolButton;->mStopLoadingAlpha:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    iput v1, v0, Landroid/widget/BbkMoveBoolButton$Status;->progress:F

    goto :goto_0

    .line 712
    :cond_1
    iget-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z

    if-eqz v1, :cond_2

    .line 713
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/BbkMoveBoolButton$Status;->status:I

    goto :goto_0

    .line 715
    :cond_2
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/BbkMoveBoolButton$Status;->status:I

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 530
    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->shutdownLoading()V

    .line 531
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 532
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 237
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 238
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/BbkMoveBoolButton;->isFirstDraw:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 240
    const/high16 v2, 0x43340000    # 180.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/BbkMoveBoolButton;->setRotation(F)V

    .line 241
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/BbkMoveBoolButton;->isFirstDraw:Z

    .line 243
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    mul-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mScrollRange:I

    div-int/2addr v2, v3

    rsub-int v8, v2, 0xff

    .line 244
    .local v8, "alpha":I
    const/16 v2, 0xff

    if-eq v8, v2, :cond_1

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BbkMoveBoolButton;->mOffBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BbkMoveBoolButton;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BbkMoveBoolButton;->mOffBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 251
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BbkMoveBoolButton;->mOnBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BbkMoveBoolButton;->mOnBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BbkMoveBoolButton;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BbkMoveBoolButton;->mOnBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/BbkMoveBoolButton;->mTrackHandDrawable:Landroid/graphics/drawable/Drawable;

    .line 257
    .local v10, "handDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/BbkMoveBoolButton;->mTrackHandDrawableDisabled:Landroid/graphics/drawable/Drawable;

    .line 260
    :cond_2
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 261
    .local v16, "w":I
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 265
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mHandPos:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    sub-int v11, v2, v3

    .line 266
    .local v11, "handLeft":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mHandPos:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mOffset2:I

    sub-int v12, v2, v3

    .line 268
    .local v12, "handLeft2":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mMaxHandWidth:I

    if-nez v2, :cond_7

    .line 269
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mHandPos:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v3

    sub-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BbkMoveBoolButton;->mHandPos:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    sub-int/2addr v4, v5

    add-int v4, v4, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v5

    sub-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    invoke-direct {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 289
    .local v14, "rect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v10, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 290
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mLoadingAngle:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v2}, Landroid/widget/BbkMoveBoolButton;->drawProgressLoading(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 296
    if-eqz v8, :cond_3

    const/16 v2, 0xff

    if-eq v8, v2, :cond_3

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BbkMoveBoolButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BbkMoveBoolButton;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BbkMoveBoolButton;->mCircleRadius:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BbkMoveBoolButton;->mCircleRadius:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BbkMoveBoolButton;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mCircleRadius:I

    add-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/BbkMoveBoolButton;->mCircleRadius:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BbkMoveBoolButton;->mPath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BbkMoveBoolButton;->mCircleRadius:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BbkMoveBoolButton;->mPaddingRight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BbkMoveBoolButton;->mCircleRadius:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BbkMoveBoolButton;->mPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 307
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mRomVersion:F

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/BbkMoveBoolButton;->mTrackLeftHandDrawable:Landroid/graphics/drawable/Drawable;

    .line 310
    .local v13, "leftHandDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/BbkMoveBoolButton;->mTrackLeftHandDrawableDisabled:Landroid/graphics/drawable/Drawable;

    .line 313
    :cond_4
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 314
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 316
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    mul-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mCircleRadius:I

    add-int/lit8 v3, v3, 0x5

    div-int/2addr v2, v3

    rsub-int v8, v2, 0xff

    .line 317
    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 318
    invoke-virtual {v13, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 319
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mLeftHandPos:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v3

    sub-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BbkMoveBoolButton;->mLeftHandPos:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    sub-int/2addr v4, v5

    add-int v4, v4, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v5

    sub-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 322
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/BbkMoveBoolButton;->mTrackRightHandDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    .local v15, "rightHandDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 327
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/BbkMoveBoolButton;->mTrackRightHandDrawableDisabled:Landroid/graphics/drawable/Drawable;

    .line 329
    :cond_5
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 330
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 331
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mScrollRange:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mCircleRadius:I

    add-int/lit8 v3, v3, 0x5

    div-int/2addr v2, v3

    rsub-int v8, v2, 0xff

    .line 332
    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 333
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mRightHandPos:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v3

    sub-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BbkMoveBoolButton;->mRightHandPos:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    sub-int/2addr v4, v5

    add-int v4, v4, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v5

    sub-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 337
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 341
    .end local v13    # "leftHandDrawable":Landroid/graphics/drawable/Drawable;
    .end local v15    # "rightHandDrawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    return-void

    .line 272
    .end local v14    # "rect":Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mTouchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 273
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mMaxHandWidth:I

    if-gt v11, v2, :cond_8

    .line 274
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mHandPos:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mScrollRange:I

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v3

    sub-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v11, 0x2

    add-int v4, v4, v16

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BbkMoveBoolButton;->mHandPos:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/BbkMoveBoolButton;->mScrollRange:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v5

    sub-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    invoke-direct {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v14    # "rect":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 276
    .end local v14    # "rect":Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mMaxHandWidth:I

    add-int/2addr v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BbkMoveBoolButton;->mHandPos:I

    if-lt v2, v3, :cond_9

    .line 277
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    sub-int v2, v11, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v3

    sub-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BbkMoveBoolButton;->mHandPos:I

    add-int v4, v4, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v5

    sub-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    invoke-direct {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v14    # "rect":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 280
    .end local v14    # "rect":Landroid/graphics/Rect;
    :cond_9
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BbkMoveBoolButton;->mMaxHandWidth:I

    sub-int v2, v11, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v3

    sub-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    add-int v4, v11, v16

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BbkMoveBoolButton;->mMaxHandWidth:I

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v5

    sub-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    invoke-direct {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v14    # "rect":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 284
    .end local v14    # "rect":Landroid/graphics/Rect;
    :cond_a
    new-instance v14, Landroid/graphics/Rect;

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v3

    sub-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v4, v4, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BbkMoveBoolButton;->getHeight()I

    move-result v5

    sub-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    invoke-direct {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v14    # "rect":Landroid/graphics/Rect;
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 225
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mOnBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 226
    .local v1, "width":I
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mOnBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 228
    .local v0, "height":I
    iget v2, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingLeft:I

    add-int/2addr v2, v1

    iget v3, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingRight:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingTop:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingBottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/widget/BbkMoveBoolButton;->setMeasuredDimension(II)V

    .line 231
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mBgRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingTop:I

    iget v5, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingLeft:I

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/BbkMoveBoolButton;->mPaddingTop:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 233
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 384
    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z

    if-eqz v4, :cond_2

    :cond_0
    move v5, v6

    .line 450
    :cond_1
    :goto_0
    :pswitch_0
    return v5

    .line 388
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 389
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 391
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 392
    .local v3, "x":F
    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 393
    iput v5, p0, Landroid/widget/BbkMoveBoolButton;->mTouchMode:I

    .line 394
    iput v3, p0, Landroid/widget/BbkMoveBoolButton;->mTouchX:F

    goto :goto_0

    .line 401
    .end local v3    # "x":F
    :pswitch_2
    iget v4, p0, Landroid/widget/BbkMoveBoolButton;->mTouchMode:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 406
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 407
    .restart local v3    # "x":F
    iget v4, p0, Landroid/widget/BbkMoveBoolButton;->mTouchX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Landroid/widget/BbkMoveBoolButton;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    .line 408
    iput v7, p0, Landroid/widget/BbkMoveBoolButton;->mTouchMode:I

    .line 409
    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 410
    iput v3, p0, Landroid/widget/BbkMoveBoolButton;->mTouchX:F

    goto :goto_0

    .line 417
    .end local v3    # "x":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 418
    .restart local v3    # "x":F
    iget v4, p0, Landroid/widget/BbkMoveBoolButton;->mTouchX:F

    sub-float/2addr v4, v3

    float-to-int v1, v4

    .line 419
    .local v1, "dx":I
    iget v4, p0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    add-int/2addr v4, v1

    iget v7, p0, Landroid/widget/BbkMoveBoolButton;->mScrollRange:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 421
    .local v2, "newOffset":I
    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    .line 422
    iput v3, p0, Landroid/widget/BbkMoveBoolButton;->mTouchX:F

    .line 423
    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->invalidate()V

    goto :goto_0

    .line 431
    .end local v1    # "dx":I
    .end local v2    # "newOffset":I
    .end local v3    # "x":F
    :pswitch_5
    iget v4, p0, Landroid/widget/BbkMoveBoolButton;->mTouchMode:I

    if-ne v4, v7, :cond_3

    .line 432
    invoke-direct {p0, p1}, Landroid/widget/BbkMoveBoolButton;->stopDrag(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 435
    :cond_3
    iget-boolean v4, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    if-nez v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    .line 436
    iget-boolean v4, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    invoke-direct {p0, v4}, Landroid/widget/BbkMoveBoolButton;->clickAnimateToCheckedState(Z)V

    .line 438
    iput v6, p0, Landroid/widget/BbkMoveBoolButton;->mTouchMode:I

    goto :goto_0

    :cond_4
    move v4, v6

    .line 435
    goto :goto_1

    .line 442
    :pswitch_6
    iget v4, p0, Landroid/widget/BbkMoveBoolButton;->mTouchMode:I

    if-ne v4, v7, :cond_5

    .line 443
    invoke-direct {p0, p1}, Landroid/widget/BbkMoveBoolButton;->stopDrag(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 446
    :cond_5
    iput v6, p0, Landroid/widget/BbkMoveBoolButton;->mTouchMode:I

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 401
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public removeAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 675
    iput-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z

    .line 676
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 679
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 657
    iget-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z

    if-eqz v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    if-eq v0, p1, :cond_1

    .line 661
    iput-boolean p1, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    .line 663
    :cond_1
    iget-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    if-eqz v0, :cond_2

    .line 664
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mOffset2:I

    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    .line 668
    :goto_1
    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->invalidate()V

    goto :goto_0

    .line 666
    :cond_2
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mScrollRange:I

    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mOffset2:I

    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mOffset:I

    goto :goto_1
.end method

.method public setOnBBKCheckedChangeListener(Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

    .prologue
    .line 683
    iput-object p1, p0, Landroid/widget/BbkMoveBoolButton;->mOnBBKCheckedChangeListener:Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

    .line 684
    return-void
.end method

.method public shutdownLoading()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->TAG:Ljava/lang/String;

    const-string v1, "shutdownLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    return-void
.end method

.method public startLoading(Landroid/widget/BbkMoveBoolButton$Status;)V
    .locals 5
    .param p1, "status"    # Landroid/widget/BbkMoveBoolButton$Status;

    .prologue
    const/high16 v3, 0x43800000    # 256.0f

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 722
    if-eqz p1, :cond_1

    .line 723
    iget v0, p1, Landroid/widget/BbkMoveBoolButton$Status;->status:I

    if-eq v0, v4, :cond_0

    .line 724
    iput-boolean v2, p0, Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z

    .line 726
    :cond_0
    iget v0, p1, Landroid/widget/BbkMoveBoolButton$Status;->status:I

    packed-switch v0, :pswitch_data_0

    .line 739
    :pswitch_0
    iput-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z

    .line 740
    iput-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z

    .line 743
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->postInvalidate()V

    .line 744
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 747
    :cond_1
    return-void

    .line 728
    :pswitch_1
    iput-boolean v2, p0, Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z

    .line 729
    iput-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z

    .line 730
    iget v0, p1, Landroid/widget/BbkMoveBoolButton$Status;->progress:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mStartLoadingAlpha:I

    goto :goto_0

    .line 733
    :pswitch_2
    iput-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z

    .line 734
    iput-boolean v2, p0, Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z

    .line 735
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p1, Landroid/widget/BbkMoveBoolButton$Status;->progress:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mStopLoadingAlpha:I

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public startLoading()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 486
    iget-boolean v2, p0, Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z

    if-eqz v2, :cond_0

    .line 487
    iget-object v1, p0, Landroid/widget/BbkMoveBoolButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",bInAnimate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_0
    return v0

    .line 490
    :cond_0
    iget-boolean v2, p0, Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 491
    goto :goto_0

    .line 493
    :cond_1
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    .line 494
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;

    .line 495
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/BbkMoveBoolButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3080063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 497
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 498
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 499
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 500
    iget-object v2, p0, Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 502
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/BbkMoveBoolButton;->mLoadingAngle:F

    .line 503
    iput-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z

    .line 504
    iput-boolean v1, p0, Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z

    .line 505
    iput-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z

    .line 506
    iget v0, p0, Landroid/widget/BbkMoveBoolButton;->mStopLoadingAlpha:I

    iput v0, p0, Landroid/widget/BbkMoveBoolButton;->mStartLoadingAlpha:I

    .line 507
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object v0, p0, Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 509
    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Landroid/widget/BbkMoveBoolButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/BbkMoveBoolButton;->setChecked(Z)V

    .line 652
    return-void

    .line 651
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
