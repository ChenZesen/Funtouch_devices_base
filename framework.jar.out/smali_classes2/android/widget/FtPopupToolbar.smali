.class public Landroid/widget/FtPopupToolbar;
.super Ljava/lang/Object;
.source "FtPopupToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FtPopupToolbar$1;,
        Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;,
        Landroid/widget/FtPopupToolbar$PopupToolLayout;,
        Landroid/widget/FtPopupToolbar$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupToolbar"

.field private static final viewItemPaddingEnd:I = 0x2

.field private static final viewItemPaddingStart:I = 0x2


# instance fields
.field private ID_ARROW:I

.field private ID_LEFT:I

.field private ID_MIDDLE:I

.field private ID_RIGHT:I

.field private ID_WHOLE:I

.field private ITEM_STYLE:I

.field private isEditable:Z

.field private isShouldShowBelow:Z

.field private mActivityManager:Landroid/app/VivoSmartMultiWindowManager;

.field protected mArrowHeight:I

.field protected mArrowImg:Landroid/widget/ImageView;

.field private mArrowLocX:I

.field protected mArrowWidth:I

.field private mArrowXPos:F

.field protected mContext:Landroid/content/Context;

.field protected mHorizontalLayout:Landroid/widget/LinearLayout;

.field protected mHostView:Landroid/view/View;

.field private mHostViewLocX:I

.field private mHostViewLocY:I

.field private mIsTextView:Z

.field private mItemBackgroundPadding:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field protected final mMinPaddinTop:I

.field private final mMinpaddingStart:I

.field private mOnItemClickListener:Landroid/widget/FtPopupToolbar$OnItemClickListener;

.field protected mPopupToolbarView:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field protected mPopupWindowLocX:I

.field protected mPopupWindowLocY:I

.field private mRegulator:Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;

.field private mRes:Landroid/content/res/Resources;

.field private mScreenWidth:I

.field protected mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v3, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    .line 62
    iput v3, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocY:I

    .line 63
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    .line 68
    iput v3, p0, Landroid/widget/FtPopupToolbar;->mArrowHeight:I

    .line 73
    iput v3, p0, Landroid/widget/FtPopupToolbar;->mArrowWidth:I

    .line 74
    const/16 v2, 0x438

    iput v2, p0, Landroid/widget/FtPopupToolbar;->mScreenWidth:I

    .line 75
    iput v3, p0, Landroid/widget/FtPopupToolbar;->mItemBackgroundPadding:I

    .line 78
    iput-boolean v3, p0, Landroid/widget/FtPopupToolbar;->isShouldShowBelow:Z

    .line 83
    const/16 v2, 0x1e

    iput v2, p0, Landroid/widget/FtPopupToolbar;->mMinpaddingStart:I

    .line 86
    iput-object v4, p0, Landroid/widget/FtPopupToolbar;->mActivityManager:Landroid/app/VivoSmartMultiWindowManager;

    .line 90
    const v2, 0x30203ab

    iput v2, p0, Landroid/widget/FtPopupToolbar;->ID_LEFT:I

    .line 91
    const v2, 0x30203b5

    iput v2, p0, Landroid/widget/FtPopupToolbar;->ID_RIGHT:I

    .line 92
    const v2, 0x30203bb

    iput v2, p0, Landroid/widget/FtPopupToolbar;->ID_WHOLE:I

    .line 93
    const v2, 0x30203a3

    iput v2, p0, Landroid/widget/FtPopupToolbar;->ID_MIDDLE:I

    .line 94
    const v2, 0x30203b3

    iput v2, p0, Landroid/widget/FtPopupToolbar;->ID_ARROW:I

    .line 97
    iput-object v4, p0, Landroid/widget/FtPopupToolbar;->mRegulator:Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;

    .line 100
    iput-boolean v3, p0, Landroid/widget/FtPopupToolbar;->mIsTextView:Z

    .line 101
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/FtPopupToolbar;->mArrowXPos:F

    .line 120
    iput-object p1, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    .line 121
    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 122
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/FtPopupToolbar;->mIsTextView:Z

    .line 124
    :cond_0
    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    .line 125
    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FtPopupToolbar;->mRes:Landroid/content/res/Resources;

    .line 126
    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mRes:Landroid/content/res/Resources;

    const v3, 0x30c005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/FtPopupToolbar;->mMinPaddinTop:I

    .line 127
    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 128
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 129
    .local v0, "size":Landroid/graphics/Point;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 130
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Landroid/widget/FtPopupToolbar;->mScreenWidth:I

    .line 133
    sget-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    const-string v3, "vivosmartmultiwindowservice"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/VivoSmartMultiWindowManager;

    iput-object v2, p0, Landroid/widget/FtPopupToolbar;->mActivityManager:Landroid/app/VivoSmartMultiWindowManager;

    .line 139
    :cond_1
    new-instance v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;

    iget-object v3, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;-><init>(Landroid/widget/FtPopupToolbar;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/FtPopupToolbar;->mRegulator:Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;

    .line 140
    invoke-direct {p0}, Landroid/widget/FtPopupToolbar;->init()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Landroid/widget/FtPopupToolbar;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/FtPopupToolbar;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/FtPopupToolbar;->isRtl()Z

    move-result v0

    return v0
.end method

.method private getAvailableDimen([I)V
    .locals 6
    .param p1, "dimen"    # [I

    .prologue
    .line 711
    iget-object v3, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30c0090

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 712
    .local v0, "leftSpaceLen":I
    iget-object v3, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30c0091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 714
    .local v2, "rightSpaceLen":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 715
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v3}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 717
    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    aput v4, p1, v3

    .line 718
    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    aput v4, p1, v3

    .line 719
    return-void
.end method

.method private getTextViewLayout(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 458
    if-nez p1, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-object v1

    .line 461
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 462
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_0

    .line 464
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "assumeLayout"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 465
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 466
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PopupToolbar"

    const-string v4, "getTextViewLayout"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 162
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FtPopupToolbar;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 163
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x3030023

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FtPopupToolbar;->mPopupToolbarView:Landroid/view/View;

    .line 165
    new-instance v1, Landroid/widget/FtPopupToolbar$PopupToolLayout;

    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Landroid/widget/FtPopupToolbar$PopupToolLayout;-><init>(Landroid/widget/FtPopupToolbar;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    .line 166
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mPopupToolbarView:Landroid/view/View;

    const v2, 0x30d0060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/widget/FtPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    .line 167
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mPopupToolbarView:Landroid/view/View;

    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 169
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 172
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 173
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 175
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 177
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mPopupToolbarView:Landroid/view/View;

    const v2, 0x30d005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/widget/FtPopupToolbar;->mHorizontalLayout:Landroid/widget/LinearLayout;

    .line 179
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mHorizontalLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/vivo/internal/R$styleable;->TextViewToolbar:[I

    const v3, 0x3010024

    const v4, 0x30f0119

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/widget/FtPopupToolbar;->ID_LEFT:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FtPopupToolbar;->ID_LEFT:I

    .line 184
    iget v1, p0, Landroid/widget/FtPopupToolbar;->ID_MIDDLE:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FtPopupToolbar;->ID_MIDDLE:I

    .line 185
    iget v1, p0, Landroid/widget/FtPopupToolbar;->ID_RIGHT:I

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FtPopupToolbar;->ID_RIGHT:I

    .line 186
    const/4 v1, 0x3

    iget v2, p0, Landroid/widget/FtPopupToolbar;->ID_WHOLE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FtPopupToolbar;->ID_WHOLE:I

    .line 187
    const/4 v1, 0x5

    iget v2, p0, Landroid/widget/FtPopupToolbar;->ID_ARROW:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FtPopupToolbar;->ID_ARROW:I

    .line 188
    const/4 v1, 0x6

    iget v2, p0, Landroid/widget/FtPopupToolbar;->ITEM_STYLE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FtPopupToolbar;->ITEM_STYLE:I

    .line 189
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/FtPopupToolbar;->ID_ARROW:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 193
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/FtPopupToolbar;->mArrowHeight:I

    .line 194
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/FtPopupToolbar;->mArrowWidth:I

    .line 195
    return-void
.end method

.method private initView(ILandroid/view/View;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 510
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 511
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->addView(Landroid/view/View;)V

    .line 513
    return-void
.end method

.method private isRtl()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 541
    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 542
    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 544
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 542
    goto :goto_0

    :cond_1
    move v0, v1

    .line 544
    goto :goto_0
.end method

.method private isShouldShowBelowHost(I)V
    .locals 3
    .param p1, "ScreenY"    # I

    .prologue
    .line 481
    const-string v0, "PopupToolbar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMinPaddinTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/FtPopupToolbar;->mMinPaddinTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screenY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget v0, p0, Landroid/widget/FtPopupToolbar;->mMinPaddinTop:I

    if-le v0, p1, :cond_0

    .line 483
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FtPopupToolbar;->isShouldShowBelow:Z

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FtPopupToolbar;->isShouldShowBelow:Z

    goto :goto_0
.end method

.method private setLayoutDirectionFromHostView()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mPopupToolbarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mPopupToolbarView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 147
    :cond_0
    return-void
.end method

.method private updateToolbarItemsBg()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 210
    iget-object v6, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v6}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildCount()I

    move-result v0

    .line 212
    .local v0, "childNum":I
    if-ge v0, v8, :cond_0

    .line 213
    new-instance v6, Ljava/lang/Throwable;

    const-string v9, "no item find in popupToolbar"

    invoke-direct {v6, v9}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 215
    :cond_0
    const/16 v6, 0xa

    new-array v4, v6, [I

    .line 216
    .local v4, "visibilityItems":[I
    const/4 v5, 0x0

    .line 218
    .local v5, "visibilityItemsNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 219
    iget-object v6, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v6, v1}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 220
    aput v1, v4, v5

    .line 221
    add-int/lit8 v5, v5, 0x1

    .line 218
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_2
    if-nez v5, :cond_3

    .line 226
    const-string v6, "PopupToolbar"

    const-string v8, "There is no visible item need to show"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 255
    :goto_1
    return v6

    .line 230
    :cond_3
    if-ne v8, v5, :cond_6

    .line 231
    iget-object v6, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    aget v9, v4, v7

    invoke-virtual {v6, v9}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v9, p0, Landroid/widget/FtPopupToolbar;->ID_WHOLE:I

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    :cond_4
    iget v6, p0, Landroid/widget/FtPopupToolbar;->mItemBackgroundPadding:I

    if-nez v6, :cond_5

    .line 251
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 252
    .local v3, "padding":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    aget v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 253
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iput v6, p0, Landroid/widget/FtPopupToolbar;->mItemBackgroundPadding:I

    .end local v3    # "padding":Landroid/graphics/Rect;
    :cond_5
    move v6, v8

    .line 255
    goto :goto_1

    .line 235
    :cond_6
    invoke-direct {p0}, Landroid/widget/FtPopupToolbar;->isRtl()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 236
    .local v2, "isRtl":Ljava/lang/Boolean;
    iget-object v6, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    aget v9, v4, v7

    invoke-virtual {v6, v9}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/widget/FtPopupToolbar;->ID_RIGHT:I

    :goto_2
    invoke-virtual {v9, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 239
    iget-object v6, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    add-int/lit8 v9, v5, -0x1

    aget v9, v4, v9

    invoke-virtual {v6, v9}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Landroid/widget/FtPopupToolbar;->ID_LEFT:I

    :goto_3
    invoke-virtual {v9, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 241
    const/4 v6, 0x2

    if-le v5, v6, :cond_4

    .line 243
    const/4 v1, 0x1

    :goto_4
    add-int/lit8 v6, v5, -0x1

    if-ge v1, v6, :cond_4

    .line 244
    iget-object v6, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    aget v9, v4, v1

    invoke-virtual {v6, v9}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v9, p0, Landroid/widget/FtPopupToolbar;->ID_MIDDLE:I

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 236
    :cond_7
    iget v6, p0, Landroid/widget/FtPopupToolbar;->ID_LEFT:I

    goto :goto_2

    .line 239
    :cond_8
    iget v6, p0, Landroid/widget/FtPopupToolbar;->ID_RIGHT:I

    goto :goto_3
.end method

.method private updateViewSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 259
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 261
    .local v0, "dimen":[I
    invoke-direct {p0, v0}, Landroid/widget/FtPopupToolbar;->getAvailableDimen([I)V

    .line 262
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mRegulator:Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;

    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->adjust(Landroid/view/ViewGroup;[I)Z

    .line 264
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->measure(II)V

    .line 266
    return-void
.end method


# virtual methods
.method protected calculatePosition()V
    .locals 10

    .prologue
    const/16 v9, 0x1e

    const/4 v7, 0x0

    .line 413
    iget v6, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocY:I

    invoke-direct {p0, v6}, Landroid/widget/FtPopupToolbar;->isShouldShowBelowHost(I)V

    .line 415
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Landroid/widget/FtPopupToolbar;->mArrowXPos:F

    .line 416
    iget-boolean v6, p0, Landroid/widget/FtPopupToolbar;->mIsTextView:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    check-cast v6, Landroid/widget/TextView;

    invoke-direct {p0, v6}, Landroid/widget/FtPopupToolbar;->getTextViewLayout(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 417
    iget-object v5, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    .line 418
    .local v5, "textView":Landroid/widget/TextView;
    iget-object v6, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    check-cast v6, Landroid/widget/TextView;

    invoke-direct {p0, v6}, Landroid/widget/FtPopupToolbar;->getTextViewLayout(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v2

    .line 420
    .local v2, "layout":Landroid/text/Layout;
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 421
    .local v4, "start":F
    const/4 v0, 0x1

    .line 422
    .local v0, "end":F
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 424
    .local v3, "lineCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 425
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 426
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    :cond_0
    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 430
    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 432
    iget v6, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocX:I

    int-to-float v6, v6

    add-float v7, v4, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Landroid/widget/FtPopupToolbar;->mArrowXPos:F

    .line 433
    iget v6, p0, Landroid/widget/FtPopupToolbar;->mArrowXPos:F

    iget-object v7, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v7}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    .line 440
    .end local v0    # "end":F
    .end local v1    # "i":I
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "lineCount":I
    .end local v4    # "start":F
    .end local v5    # "textView":Landroid/widget/TextView;
    :goto_1
    iget v6, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    iget-object v7, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v7}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1e

    iget v7, p0, Landroid/widget/FtPopupToolbar;->mScreenWidth:I

    if-le v6, v7, :cond_3

    .line 442
    iget v6, p0, Landroid/widget/FtPopupToolbar;->mScreenWidth:I

    add-int/lit8 v6, v6, -0x1e

    iget-object v7, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v7}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    .line 448
    :cond_1
    :goto_2
    iget-boolean v6, p0, Landroid/widget/FtPopupToolbar;->isShouldShowBelow:Z

    if-nez v6, :cond_4

    .line 449
    iget v6, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocY:I

    iget-object v7, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v7}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/FtPopupToolbar;->mArrowHeight:I

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocY:I

    .line 450
    const-string v6, "PopupToolbar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v8}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_3
    return-void

    .line 436
    :cond_2
    iget v6, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocX:I

    iget-object v7, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v7}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    goto :goto_1

    .line 444
    :cond_3
    iget v6, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    if-ge v6, v9, :cond_1

    .line 445
    iput v9, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    goto :goto_2

    .line 452
    :cond_4
    iget v6, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocY:I

    iget-object v7, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocY:I

    .line 453
    const-string v6, "PopupToolbar"

    const-string v7, "2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 205
    return-void
.end method

.method public hideAllItems()V
    .locals 3

    .prologue
    .line 524
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v1}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 525
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_0
    return-void
.end method

.method public initItemImageView(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "imgResId"    # I

    .prologue
    .line 502
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/FtPopupToolbar;->ITEM_STYLE:I

    const v4, 0x30f014a

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 504
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 505
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 506
    invoke-direct {p0, p1, v0}, Landroid/widget/FtPopupToolbar;->initView(ILandroid/view/View;)V

    .line 507
    return-void
.end method

.method public initItemTextView(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "textResId"    # I

    .prologue
    .line 491
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/FtPopupToolbar;->ITEM_STYLE:I

    const v4, 0x30f014a

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 494
    .local v0, "textView":Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 495
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 496
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 497
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 498
    invoke-direct {p0, p1, v0}, Landroid/widget/FtPopupToolbar;->initView(ILandroid/view/View;)V

    .line 499
    return-void
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isOutsideTouchable()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected isSupportHandlers()Z
    .locals 5

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "windowSupportsHandles":Z
    iget-object v3, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 152
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 153
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 154
    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_0

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-le v3, v4, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 158
    .end local v1    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    return v2

    .line 154
    .restart local v1    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 531
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mOnItemClickListener:Landroid/widget/FtPopupToolbar$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mOnItemClickListener:Landroid/widget/FtPopupToolbar$OnItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/FtPopupToolbar$OnItemClickListener;->onItemClick(Landroid/view/View;)V

    .line 534
    :cond_0
    return-void
.end method

.method public setArrowPosition(I)V
    .locals 0
    .param p1, "poisitionX"    # I

    .prologue
    .line 404
    iput p1, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    .line 405
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 365
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 366
    return-void
.end method

.method public setItemVisibilityById(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 516
    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 517
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 518
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/FtPopupToolbar$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/FtPopupToolbar$OnItemClickListener;

    .prologue
    .line 537
    iput-object p1, p0, Landroid/widget/FtPopupToolbar;->mOnItemClickListener:Landroid/widget/FtPopupToolbar$OnItemClickListener;

    .line 538
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 1
    .param p1, "touchable"    # Z

    .prologue
    .line 396
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 397
    return-void
.end method

.method public setPopupToolbarPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 410
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 269
    invoke-virtual {p0}, Landroid/widget/FtPopupToolbar;->isSupportHandlers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const-string v3, "PopupToolbar"

    const-string v4, "the hostView window type is not support PopupToolbar"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 275
    .local v1, "location":[I
    iget-object v3, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 276
    aget v3, v1, v7

    iput v3, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocX:I

    .line 277
    aget v3, v1, v5

    iput v3, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocY:I

    .line 279
    invoke-virtual {p0}, Landroid/widget/FtPopupToolbar;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 282
    :cond_2
    invoke-direct {p0}, Landroid/widget/FtPopupToolbar;->setLayoutDirectionFromHostView()V

    .line 284
    invoke-direct {p0}, Landroid/widget/FtPopupToolbar;->updateToolbarItemsBg()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    sget-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    if-eqz v3, :cond_4

    .line 290
    iget-object v3, p0, Landroid/widget/FtPopupToolbar;->mActivityManager:Landroid/app/VivoSmartMultiWindowManager;

    if-eqz v3, :cond_4

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/FtPopupToolbar;->mActivityManager:Landroid/app/VivoSmartMultiWindowManager;

    invoke-virtual {v3}, Landroid/app/VivoSmartMultiWindowManager;->getStackDisplayMode()I

    move-result v2

    .line 293
    .local v2, "mode":I
    if-ne v2, v5, :cond_3

    .line 294
    iget-object v3, p0, Landroid/widget/FtPopupToolbar;->mActivityManager:Landroid/app/VivoSmartMultiWindowManager;

    invoke-virtual {v3, v5}, Landroid/app/VivoSmartMultiWindowManager;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 296
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 297
    iget v3, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocX:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocX:I

    .line 298
    iget v3, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocY:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocY:I

    .line 304
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "mode":I
    :cond_4
    invoke-direct {p0}, Landroid/widget/FtPopupToolbar;->updateViewSize()V

    .line 305
    invoke-virtual {p0}, Landroid/widget/FtPopupToolbar;->calculatePosition()V

    .line 306
    invoke-virtual {p0}, Landroid/widget/FtPopupToolbar;->updateArrowPosition()V

    .line 307
    const-string v3, "PopupToolbar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v3, p0, Landroid/widget/FtPopupToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    iget v5, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    iget v6, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocY:I

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method protected updateArrowPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    iget v0, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    if-gez v0, :cond_0

    .line 316
    invoke-direct {p0}, Landroid/widget/FtPopupToolbar;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    iget-boolean v0, p0, Landroid/widget/FtPopupToolbar;->mIsTextView:Z

    if-eqz v0, :cond_3

    .line 318
    iget v0, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v1}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/FtPopupToolbar;->mArrowXPos:F

    iget v2, p0, Landroid/widget/FtPopupToolbar;->mArrowWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    .line 332
    :cond_0
    :goto_0
    iget v0, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    iget v1, p0, Landroid/widget/FtPopupToolbar;->mItemBackgroundPadding:I

    if-ge v0, v1, :cond_6

    .line 333
    iget v0, p0, Landroid/widget/FtPopupToolbar;->mItemBackgroundPadding:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    .line 340
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroid/widget/FtPopupToolbar;->isShouldShowBelow:Z

    if-nez v0, :cond_7

    .line 341
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    iget v1, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v2}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 348
    :goto_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    .line 350
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    :cond_2
    return-void

    .line 321
    :cond_3
    iget v0, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v1}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocX:I

    iget-object v2, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/FtPopupToolbar;->mArrowWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    goto :goto_0

    .line 324
    :cond_4
    iget-boolean v0, p0, Landroid/widget/FtPopupToolbar;->mIsTextView:Z

    if-eqz v0, :cond_5

    .line 325
    iget v0, p0, Landroid/widget/FtPopupToolbar;->mArrowXPos:F

    iget v1, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/FtPopupToolbar;->mArrowWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    goto :goto_0

    .line 327
    :cond_5
    iget v0, p0, Landroid/widget/FtPopupToolbar;->mHostViewLocX:I

    iget v1, p0, Landroid/widget/FtPopupToolbar;->mPopupWindowLocX:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Landroid/widget/FtPopupToolbar;->mArrowWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    goto :goto_0

    .line 334
    :cond_6
    iget v0, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v1}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/FtPopupToolbar;->mItemBackgroundPadding:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/FtPopupToolbar;->mArrowWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_1

    .line 336
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/FtPopupToolbar;->mItemBackgroundPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/FtPopupToolbar;->mArrowWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    goto/16 :goto_1

    .line 344
    :cond_7
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    iget v1, p0, Landroid/widget/FtPopupToolbar;->mArrowLocX:I

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 345
    iget-object v0, p0, Landroid/widget/FtPopupToolbar;->mHorizontalLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/FtPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_2
.end method
