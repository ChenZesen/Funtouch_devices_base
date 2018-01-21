.class public abstract Landroid/widget/BBKTextViewToolbar;
.super Ljava/lang/Object;
.source "BBKTextViewToolbar.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final TOLERANCE_TOUCH:I = 0xf

.field private static TOOLBAR_ITEM_PADDING_BOTTOM:I = 0x0

.field private static final TOOLBAR_ITEM_PADDING_LEFT_AND_RIGHT:I = 0x5


# instance fields
.field private isEditEnable:Z

.field private mArrowAboveDrawableResId:I

.field private mArrowBelowDrawableResId:I

.field private mCenterDrawableResId:I

.field private mContainer:Landroid/widget/PopupWindow;

.field protected mContext:Landroid/content/Context;

.field private mDensityScale:F

.field private mDraghander:I

.field protected mHostView:Landroid/view/View;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLeftDrawableResId:I

.field private mLineHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPositionX:I

.field private mPositionY:I

.field private mRightDrawableResId:I

.field private mScreenX:I

.field private mScreenY:I

.field private mSingleDrawableResId:I

.field private mStatusBarHeight:I

.field protected mTextView:Landroid/widget/TextView;

.field private mTextViewLocationX:I

.field protected mToleranceTouch:I

.field private mToolbarAbove:Z

.field private mToolbarAppTag:Ljava/lang/String;

.field private mToolbarAppTagObject:Ljava/lang/Object;

.field protected mToolbarGroup:Landroid/widget/LinearLayout;

.field protected mToolbarItemPaddingBottom:I

.field protected mToolbarItemPaddingLeftAndRight:I

.field private mToolbarPositionArrowHeight:I

.field protected mToolbarPositionArrowView:Landroid/widget/ImageView;

.field private mToolbarPositionArrowWidth:I

.field protected mToolbarView:Landroid/view/View;

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x3

    sput v0, Landroid/widget/BBKTextViewToolbar;->TOOLBAR_ITEM_PADDING_BOTTOM:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 10
    .param p1, "hostView"    # Landroid/widget/TextView;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v9, p0, Landroid/widget/BBKTextViewToolbar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mVisibleItems:Ljava/util/ArrayList;

    .line 116
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mDraghander:I

    .line 117
    iput v6, p0, Landroid/widget/BBKTextViewToolbar;->mTextViewLocationX:I

    .line 119
    iput-boolean v7, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarAbove:Z

    .line 120
    iput-boolean v7, p0, Landroid/widget/BBKTextViewToolbar;->isEditEnable:Z

    .line 121
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mDensityScale:F

    .line 125
    iput-object p1, p0, Landroid/widget/BBKTextViewToolbar;->mHostView:Landroid/view/View;

    .line 126
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContext:Landroid/content/Context;

    .line 127
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mDensityScale:F

    .line 128
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mPaint:Landroid/graphics/Paint;

    .line 133
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/vivo/internal/R$styleable;->TextViewToolbar:[I

    const v4, 0x3010024

    const v5, 0x30f0119

    invoke-virtual {v2, v9, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 136
    .local v1, "toolbarType":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mLeftDrawableResId:I

    .line 137
    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mCenterDrawableResId:I

    .line 138
    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mRightDrawableResId:I

    .line 139
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mSingleDrawableResId:I

    .line 140
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mArrowAboveDrawableResId:I

    .line 141
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mArrowBelowDrawableResId:I

    .line 144
    const v2, 0x30b0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Landroid/widget/BBKTextViewToolbar;->TOOLBAR_ITEM_PADDING_BOTTOM:I

    .line 147
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mWindowManager:Landroid/view/WindowManager;

    .line 148
    invoke-direct {p0}, Landroid/widget/BBKTextViewToolbar;->calculateTolerance()V

    .line 149
    const v2, 0x1050017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mStatusBarHeight:I

    .line 152
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 153
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x303003a

    invoke-virtual {v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarView:Landroid/view/View;

    .line 154
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarView:Landroid/view/View;

    const v3, 0x30d007c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    .line 155
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 156
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarView:Landroid/view/View;

    const v3, 0x30d0060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    .line 157
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/BBKTextViewToolbar;->mArrowBelowDrawableResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 161
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowWidth:I

    .line 162
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowHeight:I

    .line 164
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarView:Landroid/view/View;

    const/16 v4, 0x190

    const/16 v5, 0x48

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    .line 165
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 167
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 169
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarAppTagObject:Ljava/lang/Object;

    .line 171
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarAppTagObject:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarAppTag:Ljava/lang/String;

    .line 177
    :goto_0
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 178
    return-void

    .line 174
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarAppTag:Ljava/lang/String;

    goto :goto_0
.end method

.method private calculatePosition(IIIZ)Z
    .locals 12
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "cursorLineHeight"    # I
    .param p4, "selected"    # Z

    .prologue
    .line 312
    const/4 v0, 0x1

    .line 315
    .local v0, "aboveCursor":Z
    iget-object v10, p0, Landroid/widget/BBKTextViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getScrollX()I

    move-result v10

    sub-int v5, p1, v10

    .line 316
    .local v5, "px":I
    iget-object v10, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v3, v10, 0x2

    .line 317
    .local v3, "half":I
    iget-object v10, p0, Landroid/widget/BBKTextViewToolbar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 318
    .local v2, "displayWidth":I
    add-int v10, v5, v3

    if-ge v10, v2, :cond_3

    .line 319
    sub-int v8, v5, v3

    .line 323
    .local v8, "x":I
    :goto_0
    iget-object v10, p0, Landroid/widget/BBKTextViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v1, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 324
    .local v1, "density":I
    const/16 v10, 0x140

    if-ne v1, v10, :cond_4

    .line 325
    iget v10, p0, Landroid/widget/BBKTextViewToolbar;->mTextViewLocationX:I

    add-int/lit8 v10, v10, -0x1e

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/BBKTextViewToolbar;->mPositionX:I

    .line 339
    :goto_1
    const-string v10, "bbk.com.android.mms"

    iget-object v11, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarAppTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/BBKTextViewToolbar;->mScreenY:I

    iget v11, p0, Landroid/widget/BBKTextViewToolbar;->mStatusBarHeight:I

    add-int/lit8 v11, v11, 0x14

    if-ge v10, v11, :cond_0

    .line 340
    iget v10, p0, Landroid/widget/BBKTextViewToolbar;->mStatusBarHeight:I

    add-int/lit8 p2, v10, 0x14

    .line 343
    :cond_0
    iget-object v10, p0, Landroid/widget/BBKTextViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v10

    sub-int v6, p2, v10

    .line 344
    .local v6, "py":I
    iget-object v10, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowHeight:I

    add-int v7, v10, v11

    .line 345
    .local v7, "th":I
    div-int/lit8 v4, p3, 0x2

    .line 347
    .local v4, "lh":I
    sub-int v10, v6, v7

    sub-int/2addr v10, v4

    iget v11, p0, Landroid/widget/BBKTextViewToolbar;->mStatusBarHeight:I

    if-ge v10, v11, :cond_a

    .line 348
    iget-boolean v10, p0, Landroid/widget/BBKTextViewToolbar;->isEditEnable:Z

    if-eqz v10, :cond_8

    .line 349
    add-int v10, v6, v4

    iget v11, p0, Landroid/widget/BBKTextViewToolbar;->mToleranceTouch:I

    add-int v9, v10, v11

    .line 353
    .local v9, "y":I
    :goto_2
    const-string v10, "bbk.com.android.mms"

    iget-object v11, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarAppTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget v10, p0, Landroid/widget/BBKTextViewToolbar;->mScreenY:I

    iget v11, p0, Landroid/widget/BBKTextViewToolbar;->mStatusBarHeight:I

    add-int/lit8 v11, v11, 0x14

    if-gt v10, v11, :cond_1

    .line 354
    const/4 v0, 0x1

    .line 356
    :cond_1
    iget v10, p0, Landroid/widget/BBKTextViewToolbar;->mScreenY:I

    if-gtz v10, :cond_9

    .line 357
    const/4 v0, 0x1

    .line 361
    :goto_3
    if-eqz p4, :cond_2

    .line 362
    add-int/lit8 v9, v9, 0x32

    .line 372
    :cond_2
    :goto_4
    iget v10, p0, Landroid/widget/BBKTextViewToolbar;->mStatusBarHeight:I

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/BBKTextViewToolbar;->mPositionY:I

    .line 373
    return v0

    .line 321
    .end local v1    # "density":I
    .end local v4    # "lh":I
    .end local v6    # "py":I
    .end local v7    # "th":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_3
    iget-object v10, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    sub-int v8, v2, v10

    .restart local v8    # "x":I
    goto/16 :goto_0

    .line 326
    .restart local v1    # "density":I
    :cond_4
    const/16 v10, 0x1e0

    if-ne v1, v10, :cond_5

    .line 327
    iget v10, p0, Landroid/widget/BBKTextViewToolbar;->mTextViewLocationX:I

    add-int/lit8 v10, v10, -0x32

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/BBKTextViewToolbar;->mPositionX:I

    goto :goto_1

    .line 328
    :cond_5
    const/16 v10, 0x280

    if-ne v1, v10, :cond_6

    .line 329
    iget v10, p0, Landroid/widget/BBKTextViewToolbar;->mTextViewLocationX:I

    add-int/lit8 v10, v10, -0x32

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/BBKTextViewToolbar;->mPositionX:I

    goto/16 :goto_1

    .line 330
    :cond_6
    const/16 v10, 0xf0

    if-ne v1, v10, :cond_7

    .line 331
    iget v10, p0, Landroid/widget/BBKTextViewToolbar;->mTextViewLocationX:I

    add-int/lit8 v10, v10, -0x1e

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/BBKTextViewToolbar;->mPositionX:I

    goto/16 :goto_1

    .line 333
    :cond_7
    iget v10, p0, Landroid/widget/BBKTextViewToolbar;->mTextViewLocationX:I

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/BBKTextViewToolbar;->mPositionX:I

    goto/16 :goto_1

    .line 351
    .restart local v4    # "lh":I
    .restart local v6    # "py":I
    .restart local v7    # "th":I
    :cond_8
    add-int v9, v6, v4

    .restart local v9    # "y":I
    goto :goto_2

    .line 359
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 365
    .end local v9    # "y":I
    :cond_a
    iget-boolean v10, p0, Landroid/widget/BBKTextViewToolbar;->isEditEnable:Z

    if-eqz v10, :cond_b

    .line 366
    sub-int v10, v6, v7

    sub-int/2addr v10, v4

    iget v11, p0, Landroid/widget/BBKTextViewToolbar;->mToleranceTouch:I

    sub-int/2addr v10, v11

    add-int/lit8 v9, v10, 0x6

    .line 370
    .restart local v9    # "y":I
    :goto_5
    const/4 v0, 0x1

    goto :goto_4

    .line 368
    .end local v9    # "y":I
    :cond_b
    sub-int v10, v6, v7

    sub-int v9, v10, v4

    .restart local v9    # "y":I
    goto :goto_5
.end method

.method private calculateScreenPosition()V
    .locals 21

    .prologue
    .line 403
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v9, v0, [I

    .line 404
    .local v9, "location":[I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [I

    .line 405
    .local v10, "locationIn":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    .line 407
    .local v15, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 408
    .local v4, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 409
    .local v5, "layout":Landroid/text/Layout;
    if-nez v5, :cond_0

    .line 414
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-string v19, "assumeLayout"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 415
    .local v11, "m":Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v11    # "m":Ljava/lang/reflect/Method;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 426
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 428
    invoke-virtual {v5, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 429
    .local v7, "line":I
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v17

    .line 430
    .local v17, "top":I
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 432
    .local v2, "bottom":I
    const/16 v18, 0x0

    aget v18, v9, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BBKTextViewToolbar;->mTextViewLocationX:I

    .line 433
    sub-int v18, v2, v17

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BBKTextViewToolbar;->mLineHeight:I

    .line 434
    if-gez v15, :cond_1

    .line 435
    const/4 v15, 0x0

    .line 437
    :cond_1
    if-gez v4, :cond_2

    .line 438
    const/4 v4, 0x0

    .line 440
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BBKTextViewToolbar;->mLineHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v17

    const/16 v19, 0x1

    aget v19, v9, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getScrollY()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BBKTextViewToolbar;->mScreenY:I

    .line 442
    if-ne v15, v4, :cond_5

    .line 443
    invoke-virtual {v5, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    const/16 v19, 0x0

    aget v19, v9, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getScrollX()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BBKTextViewToolbar;->mScreenX:I

    .line 456
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BBKTextViewToolbar;->getEditEable()Z

    move-result v18

    if-nez v18, :cond_4

    .line 457
    const/16 v16, 0x0

    .line 458
    .local v16, "textWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 461
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v16, v18

    if-lez v18, :cond_7

    .line 462
    const/16 v18, 0x0

    aget v18, v9, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BBKTextViewToolbar;->mScreenX:I

    .line 467
    .end local v16    # "textWidth":F
    :cond_4
    :goto_2
    const/16 v18, 0x1

    aget v18, v9, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BBKTextViewToolbar;->mScreenY:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BBKTextViewToolbar;->mScreenY:I

    .line 471
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 472
    .local v13, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mHostView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 473
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 474
    .local v12, "mY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BBKTextViewToolbar;->mScreenY:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BBKTextViewToolbar;->mScreenY:I

    .line 476
    return-void

    .line 417
    .end local v2    # "bottom":I
    .end local v7    # "line":I
    .end local v12    # "mY":I
    .end local v13    # "r":Landroid/graphics/Rect;
    .end local v17    # "top":I
    :catch_0
    move-exception v3

    .line 418
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 445
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "bottom":I
    .restart local v7    # "line":I
    .restart local v17    # "top":I
    :cond_5
    invoke-virtual {v5, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 447
    .local v6, "left":I
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 448
    .local v8, "lineEnd":I
    if-ne v7, v8, :cond_6

    .line 449
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 454
    .local v14, "right":I
    :goto_3
    add-int v18, v6, v14

    div-int/lit8 v18, v18, 0x2

    const/16 v19, 0x0

    aget v19, v9, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getScrollX()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BBKTextViewToolbar;->mScreenX:I

    goto/16 :goto_1

    .line 451
    .end local v14    # "right":I
    :cond_6
    const/4 v6, 0x0

    .line 452
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v14

    .restart local v14    # "right":I
    goto :goto_3

    .line 464
    .end local v6    # "left":I
    .end local v8    # "lineEnd":I
    .end local v14    # "right":I
    .restart local v16    # "textWidth":F
    :cond_7
    const/16 v18, 0x0

    aget v18, v9, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v16, v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BBKTextViewToolbar;->mScreenX:I

    goto/16 :goto_2
.end method

.method private calculateTolerance()V
    .locals 4

    .prologue
    .line 378
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 379
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 380
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x43200000    # 160.0f

    div-float v1, v2, v3

    .line 381
    .local v1, "ratio":F
    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mToleranceTouch:I

    .line 382
    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    .line 383
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-ne v2, v3, :cond_0

    .line 384
    const/16 v2, 0xb

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingBottom:I

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    sget v2, Landroid/widget/BBKTextViewToolbar;->TOOLBAR_ITEM_PADDING_BOTTOM:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingBottom:I

    goto :goto_0
.end method

.method private isSupportHandle()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 479
    const/4 v2, 0x0

    .line 481
    .local v2, "windowSupportsHandles":Z
    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 482
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_1

    move-object v1, v0

    .line 483
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 484
    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_0

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v5, v6, :cond_2

    :cond_0
    move v2, v4

    .line 488
    .end local v1    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-eqz v5, :cond_3

    :goto_1
    return v4

    .restart local v1    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move v2, v3

    .line 484
    goto :goto_0

    .end local v1    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    move v4, v3

    .line 488
    goto :goto_1
.end method


# virtual methods
.method public getEditEable()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Landroid/widget/BBKTextViewToolbar;->isEditEnable:Z

    return v0
.end method

.method protected abstract getOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 188
    return-void
.end method

.method protected initToolbarItemImage(II)Landroid/widget/ImageView;
    .locals 7
    .param p1, "id"    # I
    .param p2, "imgResId"    # I

    .prologue
    const/16 v6, 0x78

    const/16 v5, 0x50

    const/16 v3, 0x33

    const/4 v4, 0x0

    .line 566
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 569
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v2

    .line 570
    .local v1, "mDensity":F
    const/high16 v2, 0x43200000    # 160.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 572
    const/16 v2, 0x35

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 573
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 603
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 604
    iget v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v3, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 605
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 606
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 607
    invoke-virtual {p0}, Landroid/widget/BBKTextViewToolbar;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    return-object v0

    .line 575
    :cond_0
    const/high16 v2, 0x43700000    # 240.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 577
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 578
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    goto :goto_0

    .line 580
    :cond_1
    const/high16 v2, 0x43a00000    # 320.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    .line 582
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 583
    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    goto :goto_0

    .line 585
    :cond_2
    const/high16 v2, 0x43f00000    # 480.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    .line 587
    const/16 v2, 0xb4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 588
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    goto :goto_0

    .line 590
    :cond_3
    const/high16 v2, 0x44200000    # 640.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_4

    .line 592
    const/16 v2, 0xf0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 593
    const/16 v2, 0xa0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    goto :goto_0

    .line 597
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 598
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    goto :goto_0
.end method

.method protected initToolbarItemTextView(II)Landroid/widget/TextView;
    .locals 9
    .param p1, "id"    # I
    .param p2, "textResId"    # I

    .prologue
    const/16 v8, 0xa0

    const/16 v7, 0x78

    const/16 v6, 0x50

    const/16 v5, 0x33

    const/4 v4, 0x0

    .line 525
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 526
    .local v1, "textView":Landroid/widget/TextView;
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 527
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x308008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 532
    .local v0, "mDensity":I
    if-ne v0, v8, :cond_0

    .line 534
    const/16 v2, 0x35

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 535
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 557
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setId(I)V

    .line 559
    iget v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v3, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 560
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 561
    invoke-virtual {p0}, Landroid/widget/BBKTextViewToolbar;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    return-object v1

    .line 536
    :cond_0
    const/16 v2, 0xf0

    if-ne v0, v2, :cond_1

    .line 538
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 539
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHeight(I)V

    goto :goto_0

    .line 540
    :cond_1
    const/16 v2, 0x140

    if-ne v0, v2, :cond_2

    .line 542
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 543
    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    goto :goto_0

    .line 544
    :cond_2
    const/16 v2, 0x1e0

    if-ne v0, v2, :cond_3

    .line 546
    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 547
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMinimumHeight(I)V

    goto :goto_0

    .line 548
    :cond_3
    const/16 v2, 0x280

    if-ne v0, v2, :cond_4

    .line 550
    const/16 v2, 0xf0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 551
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMinimumHeight(I)V

    goto :goto_0

    .line 553
    :cond_4
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 554
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHeight(I)V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public move()V
    .locals 7

    .prologue
    .line 513
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/widget/BBKTextViewToolbar;->isSupportHandle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    invoke-direct {p0}, Landroid/widget/BBKTextViewToolbar;->calculateScreenPosition()V

    .line 515
    invoke-virtual {p0}, Landroid/widget/BBKTextViewToolbar;->update()V

    .line 516
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 517
    .local v1, "start":I
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 518
    .local v0, "end":I
    iget v3, p0, Landroid/widget/BBKTextViewToolbar;->mScreenX:I

    iget v4, p0, Landroid/widget/BBKTextViewToolbar;->mScreenY:I

    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mLineHeight:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/widget/BBKTextViewToolbar;->prepare(IIIZ)V

    .line 519
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/widget/BBKTextViewToolbar;->mPositionX:I

    iget v4, p0, Landroid/widget/BBKTextViewToolbar;->mPositionY:I

    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 522
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_0
    return-void

    .line 518
    .restart local v0    # "end":I
    .restart local v1    # "start":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected prepare(IIIZ)V
    .locals 9
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "cursorLineHeight"    # I
    .param p4, "selected"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 216
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    .line 219
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/BBKTextViewToolbar;->calculatePosition(IIIZ)Z

    move-result v0

    .line 221
    .local v0, "aboveCursor":Z
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    if-gtz v4, :cond_0

    .line 222
    const-string v4, "perseus"

    const-string v5, "ensure measure"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget v4, p0, Landroid/widget/BBKTextViewToolbar;->mPositionX:I

    sub-int v4, p1, v4

    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x1

    .line 231
    .local v3, "paddingLeft":I
    const/16 v4, 0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 232
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 233
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 235
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    const/high16 v5, 0x41200000    # 10.0f

    iget v6, p0, Landroid/widget/BBKTextViewToolbar;->mDensityScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v3, v4, v5

    .line 237
    :cond_1
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    sub-int v2, v4, v5

    .line 238
    .local v2, "paddingBottom":I
    if-eqz v0, :cond_6

    .line 239
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mArrowBelowDrawableResId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 241
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 242
    .local v1, "density":I
    const/16 v4, 0x140

    if-ne v1, v4, :cond_2

    .line 243
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    const/16 v5, 0x49

    invoke-virtual {v4, v3, v5, v7, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 264
    .end local v1    # "density":I
    :goto_0
    return-void

    .line 244
    .restart local v1    # "density":I
    :cond_2
    const/16 v4, 0x1e0

    if-ne v1, v4, :cond_3

    .line 245
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v2, v7, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 246
    :cond_3
    const/16 v4, 0x280

    if-ne v1, v4, :cond_4

    .line 247
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v2, v7, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 248
    :cond_4
    const/16 v4, 0xf0

    if-ne v1, v4, :cond_5

    .line 249
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    const/16 v5, 0x34

    invoke-virtual {v4, v3, v5, v7, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 251
    :cond_5
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    const/16 v5, 0x33

    invoke-virtual {v4, v3, v5, v7, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 255
    .end local v1    # "density":I
    :cond_6
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mArrowAboveDrawableResId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowHeight:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v8, v5, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 257
    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v7, v7, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    goto :goto_0
.end method

.method protected rePrepare(IIIZ)V
    .locals 6
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "cursorLineHeight"    # I
    .param p4, "selected"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 193
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/BBKTextViewToolbar;->calculatePosition(IIIZ)Z

    move-result v0

    .line 199
    .local v0, "aboveCursor":Z
    iget v2, p0, Landroid/widget/BBKTextViewToolbar;->mPositionX:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 200
    .local v1, "paddingLeft":I
    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 201
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowWidth:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 202
    if-eqz v0, :cond_0

    .line 203
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/BBKTextViewToolbar;->mArrowBelowDrawableResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 205
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/BBKTextViewToolbar;->mArrowAboveDrawableResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    iget v3, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowHeight:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 209
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setEditEable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Landroid/widget/BBKTextViewToolbar;->isEditEnable:Z

    .line 394
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 495
    const-string v2, "com.chaozh.iReaderFree15"

    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/widget/BBKTextViewToolbar;->isSupportHandle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 500
    invoke-direct {p0}, Landroid/widget/BBKTextViewToolbar;->calculateScreenPosition()V

    .line 501
    invoke-virtual {p0}, Landroid/widget/BBKTextViewToolbar;->update()V

    .line 502
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 503
    .local v1, "start":I
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 504
    .local v0, "end":I
    iget v4, p0, Landroid/widget/BBKTextViewToolbar;->mScreenX:I

    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mScreenY:I

    iget v6, p0, Landroid/widget/BBKTextViewToolbar;->mLineHeight:I

    if-eq v1, v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v4, v5, v6, v2}, Landroid/widget/BBKTextViewToolbar;->prepare(IIIZ)V

    .line 505
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 506
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 507
    iget-object v2, p0, Landroid/widget/BBKTextViewToolbar;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/BBKTextViewToolbar;->mTextView:Landroid/widget/TextView;

    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mPositionX:I

    iget v6, p0, Landroid/widget/BBKTextViewToolbar;->mPositionY:I

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 504
    goto :goto_1
.end method

.method protected update()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 267
    invoke-virtual {p0}, Landroid/widget/BBKTextViewToolbar;->updateToolbarItems()V

    .line 270
    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 271
    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 272
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 273
    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 275
    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 281
    .local v4, "visibleItemsCount":I
    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    .line 282
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_5

    .line 283
    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 284
    .local v3, "view":Landroid/view/View;
    if-nez v2, :cond_2

    .line 285
    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mLeftDrawableResId:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v7, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingBottom:I

    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 282
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 289
    :cond_2
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_3

    .line 290
    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mRightDrawableResId:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 291
    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v6, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingBottom:I

    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 295
    :cond_3
    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mCenterDrawableResId:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 296
    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v6, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v7, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingBottom:I

    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 301
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 302
    iget-object v5, p0, Landroid/widget/BBKTextViewToolbar;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 303
    .restart local v3    # "view":Landroid/view/View;
    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mSingleDrawableResId:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 304
    iget v5, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Landroid/widget/BBKTextViewToolbar;->mToolbarItemPaddingBottom:I

    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 308
    .end local v3    # "view":Landroid/view/View;
    :cond_5
    return-void
.end method

.method protected abstract updateToolbarItems()V
.end method
