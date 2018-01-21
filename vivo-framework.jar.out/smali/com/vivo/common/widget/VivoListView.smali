.class public Lcom/vivo/common/widget/VivoListView;
.super Landroid/widget/ListView;
.source "VivoListView.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private hasSearchHead:Z

.field private mDeleteOnClickListener:Landroid/view/View$OnClickListener;

.field private mDensityScale:F

.field private mSearchBaseLayout:Landroid/widget/LinearLayout;

.field private mSearchDeleteButton:Landroid/widget/Button;

.field private mSearchEditLayout:Landroid/widget/LinearLayout;

.field private mSearchEditTextOnClickListener:Landroid/view/View$OnClickListener;

.field private mSearchEditTextView:Landroid/widget/EditText;

.field private mSearchImageView:Landroid/widget/ImageView;

.field private mSearchTextChanageListener:Landroid/view/View$OnClickListener;

.field private mSearchTextWatch:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/widget/VivoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/common/widget/VivoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/VivoListView;->hasSearchHead:Z

    .line 272
    new-instance v0, Lcom/vivo/common/widget/VivoListView$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/VivoListView$1;-><init>(Lcom/vivo/common/widget/VivoListView;)V

    iput-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mDeleteOnClickListener:Landroid/view/View$OnClickListener;

    .line 282
    new-instance v0, Lcom/vivo/common/widget/VivoListView$2;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/VivoListView$2;-><init>(Lcom/vivo/common/widget/VivoListView;)V

    iput-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchTextWatch:Landroid/text/TextWatcher;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/widget/VivoListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/VivoListView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/widget/VivoListView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/VivoListView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/widget/VivoListView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/VivoListView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchTextChanageListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private initViewLayout(II)V
    .locals 11
    .param p1, "editMarginLeft"    # I
    .param p2, "editMarginRight"    # I

    .prologue
    .line 159
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    sget-object v8, Lcom/vivo/internal/R$styleable;->SearchView:[I

    const v9, 0x301001c

    const v10, 0x30f010a

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 163
    .local v5, "typedArray":Landroid/content/res/TypedArray;
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    .line 165
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x30c0000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 167
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    .line 171
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 173
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v4, "peditLayout":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 185
    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 188
    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 189
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v7, 0x140

    if-ne v6, v7, :cond_0

    .line 190
    const/16 v6, 0x40

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 192
    :cond_0
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 196
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    .local v2, "pSearchImage":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x10

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 200
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 208
    .local v0, "densityDpi":I
    const/16 v6, 0x140

    if-ne v0, v6, :cond_3

    .line 209
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 215
    :cond_1
    :goto_0
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchImageView:Landroid/widget/ImageView;

    .line 216
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchImageView:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 222
    .local v3, "pedit":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 223
    new-instance v6, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    .line 224
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 226
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mSearchTextWatch:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->setSingleLine()V

    .line 228
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v7, 0x140

    if-ne v6, v7, :cond_2

    .line 229
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 231
    :cond_2
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 234
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v1, "pButton":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;

    .line 240
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mDeleteOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;

    invoke-virtual {v6, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v6, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/vivo/common/widget/VivoListView;->addHeaderView(Landroid/view/View;)V

    .line 247
    return-void

    .line 210
    .end local v1    # "pButton":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "pedit":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/16 v6, 0x1e0

    if-ne v0, v6, :cond_1

    .line 211
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addSeacherHeaderView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 258
    iget-boolean v0, p0, Lcom/vivo/common/widget/VivoListView;->hasSearchHead:Z

    if-eqz v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 263
    iput-boolean v1, p0, Lcom/vivo/common/widget/VivoListView;->hasSearchHead:Z

    .line 264
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/vivo/common/widget/VivoListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0, v1}, Lcom/vivo/common/widget/VivoListView;->setHasSearchHeadView(Z)V

    goto :goto_0
.end method

.method public getSearchBaseLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSearchDeleteButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSearchEditLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSearchEditTextView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method public getSearchImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public removeSeacherHeaderView()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/common/widget/VivoListView;->hasSearchHead:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/vivo/common/widget/VivoListView;->removeHeaderView(Landroid/view/View;)Z

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/VivoListView;->hasSearchHead:Z

    .line 255
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 26
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/VivoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Lcom/vivo/app/IVivoTitle;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 57
    check-cast v0, Lcom/vivo/app/IVivoTitle;

    .line 58
    .local v0, "activity":Lcom/vivo/app/IVivoTitle;
    invoke-interface {v0, p0}, Lcom/vivo/app/IVivoTitle;->setOnTitleClickListener(Landroid/view/View;)V

    .line 61
    .end local v0    # "activity":Lcom/vivo/app/IVivoTitle;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public setHasSearchHeadView(Z)V
    .locals 2
    .param p1, "has"    # Z

    .prologue
    const/16 v1, 0x8

    .line 64
    iput-boolean p1, p0, Lcom/vivo/common/widget/VivoListView;->hasSearchHead:Z

    .line 65
    iget-boolean v0, p0, Lcom/vivo/common/widget/VivoListView;->hasSearchHead:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vivo/common/widget/VivoListView;->mDensityScale:F

    .line 67
    invoke-direct {p0, v1, v1}, Lcom/vivo/common/widget/VivoListView;->initViewLayout(II)V

    .line 69
    :cond_0
    return-void
.end method

.method public setHasSearchHeadView(ZII)V
    .locals 3
    .param p1, "has"    # Z
    .param p2, "editMarginLeft"    # I
    .param p3, "editMarginRight"    # I

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/vivo/common/widget/VivoListView;->hasSearchHead:Z

    .line 74
    iget-boolean v0, p0, Lcom/vivo/common/widget/VivoListView;->hasSearchHead:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vivo/common/widget/VivoListView;->mDensityScale:F

    .line 76
    int-to-float v0, p2

    iget v1, p0, Lcom/vivo/common/widget/VivoListView;->mDensityScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, p3

    iget v2, p0, Lcom/vivo/common/widget/VivoListView;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/vivo/common/widget/VivoListView;->initViewLayout(II)V

    .line 79
    :cond_0
    return-void
.end method

.method public setSearchDeleteButtonBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public setSearchEditLayoutBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public setSearchEditLayoutLeftAndRightMargin(II)V
    .locals 3
    .param p1, "editMarginLeft"    # I
    .param p2, "editMarginRight"    # I

    .prologue
    .line 141
    iget-object v1, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 151
    .local v0, "peditLayout":Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v1, p1

    iget v2, p0, Lcom/vivo/common/widget/VivoListView;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 152
    int-to-float v1, p2

    iget v2, p0, Lcom/vivo/common/widget/VivoListView;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 155
    .end local v0    # "peditLayout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setSearchEditTextOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 130
    iput-object p1, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextOnClickListener:Landroid/view/View$OnClickListener;

    .line 131
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 134
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 135
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_0
    return-void
.end method

.method public setSearchHeadViewBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchBaseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public setSearchImageViewBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView;->mSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public setSearchTextChanageListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/vivo/common/widget/VivoListView;->mSearchTextChanageListener:Landroid/view/View$OnClickListener;

    .line 127
    return-void
.end method
