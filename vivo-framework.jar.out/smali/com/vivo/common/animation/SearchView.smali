.class public Lcom/vivo/common/animation/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/animation/SearchView$ExtendSearchContent;,
        Lcom/vivo/common/animation/SearchView$IScrollLock;,
        Lcom/vivo/common/animation/SearchView$SearchLinstener;,
        Lcom/vivo/common/animation/SearchView$SearchViewListener;
    }
.end annotation


# static fields
.field private static final MAX_TEXT_LEN:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private INTERVAL:I

.field private isSearchMode:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatorHidenListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mButton:Landroid/widget/Button;

.field private mButtonClickLinstener:Landroid/view/View$OnClickListener;

.field private mButtonVisible:Z

.field private mButtonWidth:I

.field private mClearButton:Landroid/widget/ImageView;

.field private mCodeClear:Z

.field private mContext:Landroid/content/Context;

.field private mDirection:Z

.field private mEditText:Landroid/widget/EditText;

.field private mEnableInnerClick:Z

.field private mHeightMeasureSpec:I

.field mIScrollLock:Lcom/vivo/common/animation/SearchView$IScrollLock;

.field private mIgonreCheck:Z

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPadding:I

.field private mProgress:F

.field private mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

.field private mSearchContentMarginLeft:I

.field private mSearchContentMarginRight:I

.field private mSearchContentOriginWidth:I

.field private mSearchControl:Lcom/vivo/common/animation/SearchControl;

.field private mSearchImage:Landroid/widget/ImageView;

.field private mSearchLinstener:Lcom/vivo/common/animation/SearchView$SearchLinstener;

.field private mSearchResoultBackground:Landroid/graphics/drawable/Drawable;

.field private mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowRect:Landroid/graphics/Rect;

.field private mSwitchWithAm:Z

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mWidthDiff:I

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/animation/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/16 v0, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-boolean v1, p0, Lcom/vivo/common/animation/SearchView;->mButtonVisible:Z

    .line 61
    iput v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentMarginLeft:I

    .line 62
    iput v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentMarginRight:I

    .line 63
    iput v1, p0, Lcom/vivo/common/animation/SearchView;->mWidthDiff:I

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lcom/vivo/common/animation/SearchView;->mButtonWidth:I

    .line 65
    iput v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentOriginWidth:I

    .line 67
    iput-object v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;

    .line 69
    iput-boolean v2, p0, Lcom/vivo/common/animation/SearchView;->mEnableInnerClick:Z

    .line 70
    iput-boolean v1, p0, Lcom/vivo/common/animation/SearchView;->isSearchMode:Z

    .line 71
    const/16 v0, 0x12c

    iput v0, p0, Lcom/vivo/common/animation/SearchView;->INTERVAL:I

    .line 73
    iput-boolean v1, p0, Lcom/vivo/common/animation/SearchView;->mCodeClear:Z

    .line 74
    iput-boolean v2, p0, Lcom/vivo/common/animation/SearchView;->mSwitchWithAm:Z

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mShadowRect:Landroid/graphics/Rect;

    .line 81
    iput v1, p0, Lcom/vivo/common/animation/SearchView;->mWidthMeasureSpec:I

    .line 82
    iput v1, p0, Lcom/vivo/common/animation/SearchView;->mHeightMeasureSpec:I

    .line 83
    iput-object v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchResoultBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    iput v1, p0, Lcom/vivo/common/animation/SearchView;->mPadding:I

    .line 85
    new-instance v0, Lcom/vivo/common/animation/SearchView$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/animation/SearchView$1;-><init>(Lcom/vivo/common/animation/SearchView;)V

    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 102
    iput-boolean v1, p0, Lcom/vivo/common/animation/SearchView;->mDirection:Z

    .line 103
    new-instance v0, Lcom/vivo/common/animation/SearchView$2;

    invoke-direct {v0, p0}, Lcom/vivo/common/animation/SearchView$2;-><init>(Lcom/vivo/common/animation/SearchView;)V

    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mAnimatorShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 125
    new-instance v0, Lcom/vivo/common/animation/SearchView$3;

    invoke-direct {v0, p0}, Lcom/vivo/common/animation/SearchView$3;-><init>(Lcom/vivo/common/animation/SearchView;)V

    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mAnimatorHidenListener:Landroid/animation/Animator$AnimatorListener;

    .line 145
    new-instance v0, Lcom/vivo/common/animation/SearchView$4;

    invoke-direct {v0, p0}, Lcom/vivo/common/animation/SearchView$4;-><init>(Lcom/vivo/common/animation/SearchView;)V

    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 174
    new-instance v0, Lcom/vivo/common/animation/SearchView$5;

    invoke-direct {v0, p0}, Lcom/vivo/common/animation/SearchView$5;-><init>(Lcom/vivo/common/animation/SearchView;)V

    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 201
    iput-boolean v1, p0, Lcom/vivo/common/animation/SearchView;->mIgonreCheck:Z

    .line 211
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/SearchView;->init(Landroid/content/Context;)V

    .line 212
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v0, "SearchView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/animation/SearchView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;
    .param p1, "x1"    # F

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/SearchView;->updateLayoutParam(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchLinstener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchLinstener:Lcom/vivo/common/animation/SearchView$SearchLinstener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vivo/common/animation/SearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vivo/common/animation/SearchView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->mCodeClear:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/vivo/common/animation/SearchView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mShadowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/common/animation/SearchView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/animation/SearchView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->mButtonVisible:Z

    return v0
.end method

.method static synthetic access$300(Lcom/vivo/common/animation/SearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->showInput()V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/common/animation/SearchView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->mEnableInnerClick:Z

    return v0
.end method

.method static synthetic access$500(Lcom/vivo/common/animation/SearchView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/SearchView;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/common/animation/SearchView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/common/animation/SearchView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->isAnimRun()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/vivo/common/animation/SearchView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButtonClickLinstener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vivo/common/animation/SearchView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private clearEditText()V
    .locals 2

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->mCodeClear:Z

    .line 257
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->mCodeClear:Z

    .line 259
    return-void
.end method

.method private getButtonWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/SearchView;->measureButton(Landroid/view/View;)V

    .line 345
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method private hidenInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 245
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 246
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 248
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 250
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 253
    :cond_0
    return-void
.end method

.method private hidenSearchDirectly()V
    .locals 2

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->hidenInput()V

    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchView;->updateLayoutParam(F)V

    .line 525
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchControl;->switchToNormalDirectlyEnd()V

    .line 530
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/16 v9, 0x10

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 262
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView;->mContext:Landroid/content/Context;

    .line 263
    invoke-virtual {p0, v8}, Lcom/vivo/common/animation/SearchView;->setOrientation(I)V

    .line 265
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/vivo/internal/R$styleable;->SearchView:[I

    const v5, 0x301001c

    const v6, 0x30f010a

    invoke-virtual {v3, v10, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 270
    .local v2, "searchtype":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vivo/common/animation/SearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    new-instance v3, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-direct {v3, p0, p1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;-><init>(Lcom/vivo/common/animation/SearchView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    .line 275
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v1, "layout":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/vivo/common/animation/SearchView;->mPadding:I

    .line 280
    iget v3, p0, Lcom/vivo/common/animation/SearchView;->mPadding:I

    iput v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentMarginRight:I

    .line 281
    iget v3, p0, Lcom/vivo/common/animation/SearchView;->mPadding:I

    iput v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentMarginLeft:I

    .line 283
    iget v3, p0, Lcom/vivo/common/animation/SearchView;->mPadding:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 284
    iget v3, p0, Lcom/vivo/common/animation/SearchView;->mPadding:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 285
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 286
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {p0, v3, v1}, Lcom/vivo/common/animation/SearchView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchImage:Landroid/widget/ImageView;

    .line 289
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 294
    .restart local v1    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 295
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    iget-object v4, p0, Lcom/vivo/common/animation/SearchView;->mSearchImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    new-instance v3, Landroid/widget/EditText;

    const v4, 0x301002d

    invoke-direct {v3, p1, v10, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    .line 298
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xc8

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 301
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/vivo/common/animation/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 303
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/vivo/common/animation/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 306
    .restart local v1    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 307
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 308
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    iget-object v4, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vivo/common/animation/SearchView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    .line 311
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vivo/common/animation/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 318
    .restart local v1    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 319
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    iget-object v4, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 322
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x3030032

    invoke-virtual {v0, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    .line 323
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 324
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcom/vivo/common/animation/SearchView;->getButtonWidth(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/vivo/common/animation/SearchView;->mButtonWidth:I

    .line 326
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/vivo/common/animation/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcom/vivo/common/animation/SearchView;->mButtonWidth:I

    invoke-direct {v1, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 330
    .restart local v1    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 331
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-virtual {p0, v3, v1}, Lcom/vivo/common/animation/SearchView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/animation/SearchView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 334
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/animation/SearchView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 335
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    iget-object v4, p0, Lcom/vivo/common/animation/SearchView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/animation/SearchView;->mSearchResoultBackground:Landroid/graphics/drawable/Drawable;

    .line 339
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    return-void
.end method

.method private isAnimRun()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 402
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    goto :goto_0
.end method

.method private measureButton(Landroid/view/View;)V
    .locals 6
    .param p1, "button"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 349
    iget-object v3, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 351
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 352
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 356
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 359
    .local v2, "wspec":I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 360
    .local v0, "hspec":I
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 361
    return-void
.end method

.method private requestSelfLayout()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 464
    iget v0, p0, Lcom/vivo/common/animation/SearchView;->mWidthMeasureSpec:I

    if-eqz v0, :cond_0

    .line 465
    iget v0, p0, Lcom/vivo/common/animation/SearchView;->mWidthMeasureSpec:I

    iget v2, p0, Lcom/vivo/common/animation/SearchView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v2}, Lcom/vivo/common/animation/SearchView;->onMeasure(II)V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->mIgonreCheck:Z

    .line 467
    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/common/animation/SearchView;->onLayout(ZIIII)V

    .line 468
    iput-boolean v1, p0, Lcom/vivo/common/animation/SearchView;->mIgonreCheck:Z

    .line 469
    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchView;->invalidate()V

    .line 471
    :cond_0
    return-void
.end method

.method private resetButtonWidth(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchView;->getButtonWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/animation/SearchView;->mButtonWidth:I

    .line 365
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/animation/SearchView;->mButtonWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 366
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    .line 367
    return-void
.end method

.method private showInput()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 233
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 234
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 236
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 238
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 241
    :cond_0
    return-void
.end method

.method private showSearchDirectly()V
    .locals 2

    .prologue
    .line 562
    iget v0, p0, Lcom/vivo/common/animation/SearchView;->mButtonWidth:I

    iget v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/common/animation/SearchView;->mWidthDiff:I

    .line 563
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentOriginWidth:I

    .line 565
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchView;->updateLayoutParam(F)V

    .line 567
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->showInput()V

    .line 569
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchControl;->switchToSearchModleDirectlyEnd()V

    .line 570
    return-void
.end method

.method private switchToNormal()V
    .locals 4

    .prologue
    .line 383
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 388
    .local v0, "am":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 389
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mAnimatorHidenListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 390
    iget v1, p0, Lcom/vivo/common/animation/SearchView;->INTERVAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 391
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 392
    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 393
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->hidenInput()V

    .line 394
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 395
    return-void

    .line 387
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private switchToSearchModle()V
    .locals 4

    .prologue
    .line 370
    iget v1, p0, Lcom/vivo/common/animation/SearchView;->mButtonWidth:I

    iget v2, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentMarginRight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/vivo/common/animation/SearchView;->mWidthDiff:I

    .line 371
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentOriginWidth:I

    .line 372
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/common/animation/SearchView;->mDirection:Z

    .line 374
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 375
    .local v0, "am":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 376
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mAnimatorShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    iget v1, p0, Lcom/vivo/common/animation/SearchView;->INTERVAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 378
    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 379
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 380
    return-void

    .line 374
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateLayoutParam(F)V
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 219
    iput p1, p0, Lcom/vivo/common/animation/SearchView;->mProgress:F

    .line 221
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 222
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentMarginRight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 223
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v1, v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentOriginWidth:I

    iget v3, p0, Lcom/vivo/common/animation/SearchView;->mWidthDiff:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->requestSelfLayout()V

    .line 229
    return-void
.end method


# virtual methods
.method public getSearchControl()Lcom/vivo/common/animation/SearchControl;
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Lcom/vivo/common/animation/SearchControl;

    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/common/animation/SearchControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    .line 514
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    invoke-virtual {v0, p0}, Lcom/vivo/common/animation/SearchControl;->setSearchView(Lcom/vivo/common/animation/SearchView;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    return-object v0
.end method

.method protected getSearchResoultBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchResoultBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hidenSearch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 533
    iput-boolean v1, p0, Lcom/vivo/common/animation/SearchView;->isSearchMode:Z

    .line 535
    iget-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->mButtonVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->isAnimRun()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    if-eqz v0, :cond_0

    .line 536
    iput-boolean v1, p0, Lcom/vivo/common/animation/SearchView;->mButtonVisible:Z

    .line 537
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->clearEditText()V

    .line 539
    iget-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->mSwitchWithAm:Z

    if-eqz v0, :cond_1

    .line 540
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->switchToNormal()V

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->hidenSearchDirectly()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 428
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 430
    iget-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->mIgonreCheck:Z

    if-eqz v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->isSearchMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vivo/common/animation/SearchView;->mProgress:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/vivo/common/animation/SearchView;->mButtonWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vivo/common/animation/SearchView;->mPadding:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 437
    const-string v0, "SearchView"

    const-string v1, "  isSearchMode ++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/vivo/common/animation/SearchView;->mButtonWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vivo/common/animation/SearchView;->mPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 440
    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/vivo/common/animation/SearchView;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentOriginWidth:I

    .line 442
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->requestSelfLayout()V

    goto :goto_0

    .line 444
    :cond_2
    iget-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->isSearchMode:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vivo/common/animation/SearchView;->mProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/vivo/common/animation/SearchView;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 447
    const-string v0, "SearchView"

    const-string v1, "  isSearchMode ---------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/vivo/common/animation/SearchView;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 450
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentOriginWidth:I

    .line 451
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->requestSelfLayout()V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 458
    iput p1, p0, Lcom/vivo/common/animation/SearchView;->mWidthMeasureSpec:I

    .line 459
    iput p2, p0, Lcom/vivo/common/animation/SearchView;->mHeightMeasureSpec:I

    .line 460
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 461
    return-void
.end method

.method public setAnimatorDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 507
    iput p1, p0, Lcom/vivo/common/animation/SearchView;->INTERVAL:I

    .line 508
    return-void
.end method

.method setAnimatorProgressListener(Lcom/vivo/common/animation/SearchView$SearchViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vivo/common/animation/SearchView$SearchViewListener;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;

    .line 422
    return-void
.end method

.method public setButtonBackground(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 611
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchView;->resetButtonWidth(Landroid/view/View;)V

    .line 612
    return-void
.end method

.method public setButtonBackground(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 617
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchView;->resetButtonWidth(Landroid/view/View;)V

    .line 618
    return-void
.end method

.method public setButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchView;->resetButtonWidth(Landroid/view/View;)V

    .line 624
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchView;->resetButtonWidth(Landroid/view/View;)V

    .line 600
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 629
    return-void
.end method

.method public setButtonTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 634
    return-void
.end method

.method public setButtonTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 604
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 605
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchView;->resetButtonWidth(Landroid/view/View;)V

    .line 606
    return-void
.end method

.method public setClearMarkImage(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 679
    return-void
.end method

.method public setClearMarkImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 684
    return-void
.end method

.method public setDisableShadow(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 699
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 700
    return-void
.end method

.method public setDisableShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 695
    return-void
.end method

.method public setDisableShadowProgess(F)V
    .locals 6
    .param p1, "p"    # F

    .prologue
    .line 688
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 689
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->invalidate()V

    .line 690
    return-void
.end method

.method public setEnableInnerButtonClickProcess(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/vivo/common/animation/SearchView;->mEnableInnerClick:Z

    .line 503
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 656
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 657
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 658
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v0, p1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->setEnabled(Z)V

    .line 659
    return-void
.end method

.method public setFindMarkImage(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 663
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 664
    return-void
.end method

.method public setFindMarkImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 669
    return-void
.end method

.method public setFindMarkImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 674
    return-void
.end method

.method public setOnButtonClickLinster(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView;->mButtonClickLinstener:Landroid/view/View$OnClickListener;

    .line 498
    return-void
.end method

.method public setScrollLockImp(Lcom/vivo/common/animation/SearchView$IScrollLock;)V
    .locals 0
    .param p1, "imp"    # Lcom/vivo/common/animation/SearchView$IScrollLock;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView;->mIScrollLock:Lcom/vivo/common/animation/SearchView$IScrollLock;

    .line 575
    return-void
.end method

.method public setSearchContentBackground(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 650
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v0, p1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->setBackgroundResource(I)V

    .line 651
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 652
    return-void
.end method

.method public setSearchContentBackground(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 638
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/vivo/common/animation/SearchView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 639
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 640
    return-void
.end method

.method public setSearchContentBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v0, p1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 646
    return-void
.end method

.method public setSearchHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 413
    return-void
.end method

.method public setSearchHintTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 418
    return-void
.end method

.method public setSearchLinstener(Lcom/vivo/common/animation/SearchView$SearchLinstener;)V
    .locals 0
    .param p1, "l"    # Lcom/vivo/common/animation/SearchView$SearchLinstener;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView;->mSearchLinstener:Lcom/vivo/common/animation/SearchView$SearchLinstener;

    .line 580
    return-void
.end method

.method public setSearchMarginLeft(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentMarginLeft:I

    .line 488
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 489
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 490
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v1, v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->requestSelfLayout()V

    .line 493
    return-void
.end method

.method public setSearchMarginRight(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContentMarginRight:I

    .line 477
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v1}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 478
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 479
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView;->mSearchContent:Lcom/vivo/common/animation/SearchView$ExtendSearchContent;

    invoke-virtual {v1, v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->requestSelfLayout()V

    .line 482
    return-void
.end method

.method public setSearchResoultBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView;->mSearchResoultBackground:Landroid/graphics/drawable/Drawable;

    .line 713
    return-void
.end method

.method public setSoftInputType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 705
    return-void
.end method

.method setSwitchWithAnimate(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/vivo/common/animation/SearchView;->mSwitchWithAm:Z

    .line 584
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 589
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 594
    return-void
.end method

.method showSearch()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 548
    iput-boolean v1, p0, Lcom/vivo/common/animation/SearchView;->isSearchMode:Z

    .line 550
    iget-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->mButtonVisible:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->isAnimRun()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/SearchView;->mSearchControl:Lcom/vivo/common/animation/SearchControl;

    if-eqz v0, :cond_0

    .line 551
    iput-boolean v1, p0, Lcom/vivo/common/animation/SearchView;->mButtonVisible:Z

    .line 553
    iget-boolean v0, p0, Lcom/vivo/common/animation/SearchView;->mSwitchWithAm:Z

    if-eqz v0, :cond_1

    .line 554
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->switchToSearchModle()V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchView;->showSearchDirectly()V

    goto :goto_0
.end method
