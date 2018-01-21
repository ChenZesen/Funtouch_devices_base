.class public Landroid/widget/FtTextViewPopupToolbar;
.super Landroid/widget/FtPopupToolbar;
.source "FtTextViewPopupToolbar.java"


# static fields
.field static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_STR:I = 0x1040001

.field static final ID_CUT:I = 0x1020020

.field private static final ID_CUT_STR:I = 0x1040003

.field private static final ID_INPUTMETHOD_IMG:I = 0x30203a9

.field static final ID_PASTE:I = 0x1020022

.field private static final ID_PASTE_STR:I = 0x104000b

.field static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SELECT_ALL_STR:I = 0x104000d

.field static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final ID_START_SELECTING_TEXT_STR:I = 0x30e008e

.field static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field private static final TAG:Ljava/lang/String; = "FtTextViewPopupToolbar"

.field private static final TOLERANCE_TOUCH:I = 0xf


# instance fields
.field private isEditEnable:Z

.field private mAboveCursor:Z

.field private mDensityScale:F

.field private mHandleHeight:I

.field private mScreenX:I

.field private mScreenY:I

.field private mSpecifiedLineHeight:I

.field private mStatusBarHeight:I

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewLocationX:I

.field private mToleranceTouch:I

.field private mToolbarAppTag:Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 7
    .param p1, "hostView"    # Landroid/widget/TextView;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FtPopupToolbar;-><init>(Landroid/view/View;)V

    .line 46
    iput-boolean v6, p0, Landroid/widget/FtTextViewPopupToolbar;->isEditEnable:Z

    .line 47
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mDensityScale:F

    .line 48
    iput-boolean v6, p0, Landroid/widget/FtTextViewPopupToolbar;->mAboveCursor:Z

    .line 62
    iput v4, p0, Landroid/widget/FtTextViewPopupToolbar;->mTextViewLocationX:I

    .line 68
    iput v4, p0, Landroid/widget/FtTextViewPopupToolbar;->mHandleHeight:I

    .line 72
    iput-object p1, p0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    .line 73
    iget-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 74
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mDensityScale:F

    .line 75
    iget-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mWindowManager:Landroid/view/WindowManager;

    .line 77
    iget-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mToolbarAppTag:Ljava/lang/String;

    .line 84
    :goto_0
    const v3, 0x1050017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mStatusBarHeight:I

    .line 86
    invoke-direct {p0}, Landroid/widget/FtTextViewPopupToolbar;->calculateTolerance()V

    .line 87
    invoke-direct {p0}, Landroid/widget/FtTextViewPopupToolbar;->initToolbar()V

    .line 88
    iget-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    iget v4, v4, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    .local v0, "handleLeftDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mHandleHeight:I

    .line 90
    iget-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 91
    return-void

    .line 81
    .end local v0    # "handleLeftDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v3, ""

    iput-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mToolbarAppTag:Ljava/lang/String;

    goto :goto_0
.end method

.method private calculateTolerance()V
    .locals 4

    .prologue
    .line 341
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 342
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 343
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x43200000    # 160.0f

    div-float v1, v2, v3

    .line 344
    .local v1, "ratio":F
    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mToleranceTouch:I

    .line 345
    return-void
.end method

.method private calculateWindowPosition(Z)Z
    .locals 17
    .param p1, "selected"    # Z

    .prologue
    .line 263
    const/4 v1, 0x1

    .line 265
    .local v1, "aboveCursor":Z
    const/4 v15, 0x2

    new-array v9, v15, [I

    .line 266
    .local v9, "rootLocationOnScreen":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 267
    const/4 v15, 0x2

    new-array v8, v15, [I

    .line 268
    .local v8, "rootLocationInWindow":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 270
    const/4 v15, 0x0

    aget v15, v9, v15

    const/16 v16, 0x0

    aget v16, v8, v16

    sub-int v12, v15, v16

    .line 274
    .local v12, "windowLeft":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mScreenX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mHostView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v6, v15, v16

    .line 275
    .local v6, "px":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    .line 276
    .local v11, "toolbarWidth":I
    div-int/lit8 v4, v11, 0x2

    .line 277
    .local v4, "half":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 278
    .local v3, "displayWidth":I
    add-int v15, v12, v6

    add-int/2addr v15, v4

    if-ge v15, v3, :cond_3

    .line 279
    sub-int v13, v6, v4

    .line 283
    .local v13, "x":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v2, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 284
    .local v2, "density":I
    const/16 v15, 0x140

    if-ne v2, v15, :cond_4

    .line 285
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextViewLocationX:I

    add-int/lit8 v15, v15, -0x1e

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mPopupWindowLocX:I

    .line 295
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mPopupWindowLocX:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mPopupWindowLocX:I

    .line 296
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mPopupWindowLocX:I

    sub-int v16, v3, v11

    sub-int v16, v16, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mPopupWindowLocX:I

    .line 301
    const-string v15, "bbk.com.android.mms"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mToolbarAppTag:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mStatusBarHeight:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x14

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 302
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mStatusBarHeight:I

    add-int/lit8 v15, v15, 0x14

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    .line 305
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mHostView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v7, v15, v16

    .line 306
    .local v7, "py":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v15}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mArrowHeight:I

    move/from16 v16, v0

    add-int v10, v15, v16

    .line 307
    .local v10, "th":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mSpecifiedLineHeight:I

    div-int/lit8 v5, v15, 0x2

    .line 309
    .local v5, "lh":I
    sub-int v15, v7, v10

    sub-int/2addr v15, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mStatusBarHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    .line 310
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/FtTextViewPopupToolbar;->isEditEnable:Z

    if-eqz v15, :cond_8

    .line 311
    add-int v15, v7, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mToleranceTouch:I

    move/from16 v16, v0

    add-int v14, v15, v16

    .line 315
    .local v14, "y":I
    :goto_2
    const-string v15, "bbk.com.android.mms"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mToolbarAppTag:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mStatusBarHeight:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x14

    move/from16 v0, v16

    if-gt v15, v0, :cond_1

    .line 316
    const/4 v1, 0x1

    .line 318
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    if-gtz v15, :cond_9

    .line 319
    const/4 v1, 0x1

    .line 323
    :goto_3
    if-eqz p1, :cond_2

    .line 326
    add-int v15, v7, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mHandleHeight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mArrowHeight:I

    move/from16 v16, v0

    sub-int v14, v15, v16

    .line 336
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mStatusBarHeight:I

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mPopupWindowLocY:I

    .line 337
    return v1

    .line 281
    .end local v2    # "density":I
    .end local v5    # "lh":I
    .end local v7    # "py":I
    .end local v10    # "th":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_3
    sub-int v15, v3, v11

    sub-int v13, v15, v12

    .restart local v13    # "x":I
    goto/16 :goto_0

    .line 286
    .restart local v2    # "density":I
    :cond_4
    const/16 v15, 0x1e0

    if-ne v2, v15, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextViewLocationX:I

    add-int/lit8 v15, v15, -0x32

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mPopupWindowLocX:I

    goto/16 :goto_1

    .line 288
    :cond_5
    const/16 v15, 0x280

    if-ne v2, v15, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextViewLocationX:I

    add-int/lit8 v15, v15, -0x32

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mPopupWindowLocX:I

    goto/16 :goto_1

    .line 290
    :cond_6
    const/16 v15, 0xf0

    if-ne v2, v15, :cond_7

    .line 291
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextViewLocationX:I

    add-int/lit8 v15, v15, -0x1e

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mPopupWindowLocX:I

    goto/16 :goto_1

    .line 293
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextViewLocationX:I

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/FtTextViewPopupToolbar;->mPopupWindowLocX:I

    goto/16 :goto_1

    .line 313
    .restart local v5    # "lh":I
    .restart local v7    # "py":I
    .restart local v10    # "th":I
    :cond_8
    add-int v14, v7, v5

    .restart local v14    # "y":I
    goto/16 :goto_2

    .line 321
    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    .line 329
    .end local v14    # "y":I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/FtTextViewPopupToolbar;->isEditEnable:Z

    if-eqz v15, :cond_b

    .line 330
    sub-int v15, v7, v10

    sub-int/2addr v15, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mToleranceTouch:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/lit8 v14, v15, 0x6

    .line 334
    .restart local v14    # "y":I
    :goto_5
    const/4 v1, 0x1

    goto :goto_4

    .line 332
    .end local v14    # "y":I
    :cond_b
    sub-int v15, v7, v10

    sub-int v14, v15, v5

    .restart local v14    # "y":I
    goto :goto_5
.end method

.method private initToolbar()V
    .locals 2

    .prologue
    .line 97
    const v0, 0x1020028

    const v1, 0x30e008e

    invoke-virtual {p0, v0, v1}, Landroid/widget/FtTextViewPopupToolbar;->initItemTextView(II)V

    .line 98
    const v0, 0x102001f

    const v1, 0x104000d

    invoke-virtual {p0, v0, v1}, Landroid/widget/FtTextViewPopupToolbar;->initItemTextView(II)V

    .line 99
    const v0, 0x1020020

    const v1, 0x1040003

    invoke-virtual {p0, v0, v1}, Landroid/widget/FtTextViewPopupToolbar;->initItemTextView(II)V

    .line 100
    const v0, 0x1020021

    const v1, 0x1040001

    invoke-virtual {p0, v0, v1}, Landroid/widget/FtTextViewPopupToolbar;->initItemTextView(II)V

    .line 101
    const v0, 0x1020022

    const v1, 0x104000b

    invoke-virtual {p0, v0, v1}, Landroid/widget/FtTextViewPopupToolbar;->initItemTextView(II)V

    .line 102
    const v0, 0x1020024

    const v1, 0x30203a9

    invoke-virtual {p0, v0, v1}, Landroid/widget/FtTextViewPopupToolbar;->initItemImageView(II)V

    .line 103
    return-void
.end method


# virtual methods
.method protected calculatePosition()V
    .locals 22

    .prologue
    .line 169
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v9, v0, [I

    .line 170
    .local v9, "location":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    .line 172
    .local v15, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 173
    .local v4, "end":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FtTextViewPopupToolbar;->isInSelectionMode()Z

    move-result v14

    .line 175
    .local v14, "selected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 176
    .local v5, "layout":Landroid/text/Layout;
    if-nez v5, :cond_0

    .line 178
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "assumeLayout"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 179
    .local v10, "m":Ljava/lang/reflect/Method;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v10    # "m":Ljava/lang/reflect/Method;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 187
    :cond_0
    invoke-virtual {v5, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 188
    .local v7, "line":I
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v17

    .line 189
    .local v17, "top":I
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 190
    .local v2, "bottom":I
    const-string v19, "FtTextViewPopupToolbar"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " line = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " top = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bottom = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/16 v19, 0x0

    aget v19, v9, v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FtTextViewPopupToolbar;->mTextViewLocationX:I

    .line 193
    sub-int v19, v2, v17

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FtTextViewPopupToolbar;->mSpecifiedLineHeight:I

    .line 194
    if-gez v15, :cond_1

    .line 195
    const/4 v15, 0x0

    .line 197
    :cond_1
    if-gez v4, :cond_2

    .line 198
    const/4 v4, 0x0

    .line 201
    :cond_2
    if-ne v15, v4, :cond_6

    .line 202
    invoke-virtual {v5, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    const/16 v20, 0x0

    aget v20, v9, v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getScrollX()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FtTextViewPopupToolbar;->mScreenX:I

    .line 218
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FtTextViewPopupToolbar;->getEditEable()Z

    move-result v19

    if-nez v19, :cond_4

    .line 219
    const/16 v16, 0x0

    .line 220
    .local v16, "textWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->length()I

    move-result v19

    if-lez v19, :cond_3

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 223
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v16, v19

    if-lez v19, :cond_8

    .line 224
    const/16 v19, 0x0

    aget v19, v9, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FtTextViewPopupToolbar;->mScreenX:I

    .line 229
    .end local v16    # "textWidth":F
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mSpecifiedLineHeight:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v19, v19, v17

    const/16 v20, 0x1

    aget v20, v9, v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getScrollY()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    .line 231
    const/16 v19, 0x1

    aget v19, v9, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    .line 234
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 236
    .local v18, "visibleRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 237
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mSpecifiedLineHeight:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    .line 244
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 245
    .local v12, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mHostView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 247
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v11, v19, v20

    .line 249
    .local v11, "mY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FtTextViewPopupToolbar;->mScreenY:I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mPopupToolbarView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/View;->measure(II)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredHeight()I

    move-result v19

    if-gtz v19, :cond_5

    .line 255
    const-string v19, "FtTextViewPopupToolbar"

    const-string v20, "Tool bar View group measure height <= 0"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/FtTextViewPopupToolbar;->calculateWindowPosition(Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FtTextViewPopupToolbar;->mAboveCursor:Z

    .line 260
    return-void

    .line 181
    .end local v2    # "bottom":I
    .end local v7    # "line":I
    .end local v11    # "mY":I
    .end local v12    # "r":Landroid/graphics/Rect;
    .end local v17    # "top":I
    .end local v18    # "visibleRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 182
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 205
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "bottom":I
    .restart local v7    # "line":I
    .restart local v17    # "top":I
    :cond_6
    invoke-virtual {v5, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 207
    .local v6, "left":I
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 208
    .local v8, "lineEnd":I
    if-ne v7, v8, :cond_7

    .line 209
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 214
    .local v13, "right":I
    :goto_3
    add-int v19, v6, v13

    div-int/lit8 v19, v19, 0x2

    const/16 v20, 0x0

    aget v20, v9, v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getScrollX()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FtTextViewPopupToolbar;->mScreenX:I

    goto/16 :goto_1

    .line 211
    .end local v13    # "right":I
    :cond_7
    const/4 v6, 0x0

    .line 212
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v13

    .restart local v13    # "right":I
    goto :goto_3

    .line 226
    .end local v6    # "left":I
    .end local v8    # "lineEnd":I
    .end local v13    # "right":I
    .restart local v16    # "textWidth":F
    :cond_8
    const/16 v19, 0x0

    aget v19, v9, v19

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v16, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FtTextViewPopupToolbar;->mScreenX:I

    goto/16 :goto_2
.end method

.method public getEditEable()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/widget/FtTextViewPopupToolbar;->isEditEnable:Z

    return v0
.end method

.method isInSelectionMode()Z
    .locals 3

    .prologue
    .line 348
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 349
    .local v1, "start":I
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 351
    .local v0, "end":I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setEditEable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Landroid/widget/FtTextViewPopupToolbar;->isEditEnable:Z

    .line 110
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "com.chaozh.iReaderFree15"

    iget-object v1, p0, Landroid/widget/FtTextViewPopupToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FtTextViewPopupToolbar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FtTextViewPopupToolbar;->isSupportHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-super {p0}, Landroid/widget/FtPopupToolbar;->show()V

    goto :goto_0
.end method

.method protected updateArrowPosition()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 133
    iget v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mScreenX:I

    iget v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mPopupWindowLocX:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mArrowWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    .line 134
    .local v1, "paddingLeft":I
    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 135
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v2}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mArrowWidth:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 137
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 138
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v2}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    const/high16 v3, 0x41200000    # 10.0f

    iget v4, p0, Landroid/widget/FtTextViewPopupToolbar;->mDensityScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 141
    :cond_0
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v2}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v3}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mToolBarViewGroup:Landroid/widget/FtPopupToolbar$PopupToolLayout;

    invoke-virtual {v3}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 143
    .local v0, "paddingBottom":I
    iget-boolean v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mAboveCursor:Z

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 145
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 147
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Landroid/widget/FtTextViewPopupToolbar;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 162
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mHorizontalLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mArrowHeight:I

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 163
    iget-object v2, p0, Landroid/widget/FtTextViewPopupToolbar;->mArrowImg:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FtTextViewPopupToolbar;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v6, v6, v3, v6}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    goto :goto_0
.end method
