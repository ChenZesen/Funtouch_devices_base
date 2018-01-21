.class public Lcom/vivo/common/BbkSearchTitleView;
.super Landroid/widget/FrameLayout;
.source "BbkSearchTitleView.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultPadding:I

.field private mDeleteOnClickListener:Landroid/view/View$OnClickListener;

.field private mLeftButton:Landroid/widget/Button;

.field private mRegulateWatcher:Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;

.field private mRightButton:Landroid/widget/Button;

.field private mSearchBaseLayout:Landroid/widget/LinearLayout;

.field private mSearchDeleteButton:Landroid/widget/Button;

.field private mSearchEditLayout:Landroid/widget/LinearLayout;

.field private mSearchEditTextOnClickListener:Landroid/view/View$OnClickListener;

.field private mSearchEditTextView:Landroid/widget/EditText;

.field private mSearchImageView:Landroid/widget/ImageView;

.field private mSearchTextChanageListener:Landroid/view/View$OnClickListener;

.field private mSearchTextWatch:Landroid/text/TextWatcher;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/BbkSearchTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mDefaultPadding:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mRegulateWatcher:Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;

    .line 221
    new-instance v0, Lcom/vivo/common/BbkSearchTitleView$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/BbkSearchTitleView$1;-><init>(Lcom/vivo/common/BbkSearchTitleView;)V

    iput-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mDeleteOnClickListener:Landroid/view/View$OnClickListener;

    .line 230
    new-instance v0, Lcom/vivo/common/BbkSearchTitleView$2;

    invoke-direct {v0, p0}, Lcom/vivo/common/BbkSearchTitleView$2;-><init>(Lcom/vivo/common/BbkSearchTitleView;)V

    iput-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchTextWatch:Landroid/text/TextWatcher;

    .line 58
    iput-object p1, p0, Lcom/vivo/common/BbkSearchTitleView;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/vivo/common/BbkSearchTitleView;->initViewLayout()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/BbkSearchTitleView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/BbkSearchTitleView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/BbkSearchTitleView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/BbkSearchTitleView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/BbkSearchTitleView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/BbkSearchTitleView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchTextChanageListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/BbkSearchTitleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/BbkSearchTitleView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initViewLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 65
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/vivo/internal/R$styleable;->SearchTitleView:[I

    const v4, 0x3010029

    const v5, 0x30f012d

    invoke-virtual {v2, v8, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 67
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/common/BbkSearchTitleView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/vivo/common/BbkSearchTitleView;->setMinimumHeight(I)V

    .line 69
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mDefaultPadding:I

    .line 71
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v2, 0x3030031

    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->rootView:Landroid/view/View;

    .line 74
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->rootView:Landroid/view/View;

    const v3, 0x30d0073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    .line 76
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->rootView:Landroid/view/View;

    const v3, 0x30d0074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    .line 77
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->rootView:Landroid/view/View;

    const v3, 0x30d0075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchImageView:Landroid/widget/ImageView;

    .line 80
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchImageView:Landroid/widget/ImageView;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->rootView:Landroid/view/View;

    const v3, 0x30d0077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;

    .line 83
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/vivo/common/BbkSearchTitleView;->mDeleteOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->rootView:Landroid/view/View;

    const v3, 0x30d0076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditTextView:Landroid/widget/EditText;

    .line 87
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditTextView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchTextWatch:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->rootView:Landroid/view/View;

    const v3, 0x30d0078

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    .line 90
    new-instance v2, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;

    iget-object v3, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getMaxWidth()I

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;-><init>(Lcom/vivo/common/BbkSearchTitleView;Landroid/widget/TextView;I)V

    iput-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mRegulateWatcher:Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;

    .line 91
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/vivo/common/BbkSearchTitleView;->mRegulateWatcher:Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object v2, p0, Lcom/vivo/common/BbkSearchTitleView;->rootView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/vivo/common/BbkSearchTitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
.end method


# virtual methods
.method public getSearchDeleteButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSearchEditTextView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method public getSearchLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSearchRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 253
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 254
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vivo/common/BbkSearchTitleView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/vivo/common/BbkSearchTitleView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 258
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mRegulateWatcher:Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;

    invoke-virtual {v0}, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->adjust()V

    .line 259
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vivo/common/BbkSearchTitleView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/vivo/common/BbkSearchTitleView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 262
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method public setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_0
    return-void
.end method

.method public setLeftButtonEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    :cond_0
    return-void
.end method

.method public setRightButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_0
    return-void
.end method

.method public setRightButtonEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public setSearchDeleteButtonBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public setSearchEditLayoutBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public setSearchHeadViewBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public setSearchImageViewBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public setSearchLeftButtonBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public setSearchRightButtonBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public setSearchTextChanageListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchTextChanageListener:Landroid/view/View$OnClickListener;

    .line 165
    return-void
.end method

.method public showTitleLeftButton(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "leftText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    .local v0, "peditLayout":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 205
    .end local v0    # "peditLayout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 201
    .restart local v0    # "peditLayout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mLeftButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    iget v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mDefaultPadding:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0
.end method

.method public showTitleRightButton(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "rightText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 210
    .local v0, "peditLayout":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 219
    .end local v0    # "peditLayout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 215
    .restart local v0    # "peditLayout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mRightButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 216
    iget v1, p0, Lcom/vivo/common/BbkSearchTitleView;->mDefaultPadding:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0
.end method
