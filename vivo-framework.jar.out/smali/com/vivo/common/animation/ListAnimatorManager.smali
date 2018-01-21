.class public Lcom/vivo/common/animation/ListAnimatorManager;
.super Ljava/lang/Object;
.source "ListAnimatorManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;
    }
.end annotation


# static fields
.field private static final AM_INTERAVAL:I = 0x15e

.field public static final STATE_IN_CHECK:I = 0x1002

.field public static final STATE_IN_HIDEN_CHECK_AM:I = 0x1003

.field public static final STATE_IN_NORMAL:I = 0x1000

.field public static final STATE_IN_SHOW_CHECK_AM:I = 0x1001

.field private static final TAG:Ljava/lang/String; = "ListAnimatorManager"


# instance fields
.field private final AM_INTERAVAL_LEGACY:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mControlSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/common/animation/IListEditControl;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProgess:F

.field private mDrawableID:I

.field private mHidenListener:Landroid/animation/Animator$AnimatorListener;

.field private mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

.field private mLeft:I

.field private mListView:Landroid/widget/ListView;

.field private mLtoR:Z

.field private mRight:I

.field private mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mState:I

.field private mStyle:I

.field private mTop:I

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/animation/ListAnimatorManager;-><init>(Landroid/content/Context;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sytle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mControlSet:Ljava/util/ArrayList;

    .line 29
    const/16 v1, 0x1000

    iput v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mCurrentProgess:F

    .line 36
    iput v4, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mLeft:I

    .line 37
    iput v4, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mRight:I

    .line 38
    iput v5, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mTop:I

    .line 39
    iput-boolean v6, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mLtoR:Z

    .line 40
    iput v5, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mStyle:I

    .line 50
    const/16 v1, 0x12c

    iput v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->AM_INTERAVAL_LEGACY:I

    .line 52
    new-instance v1, Lcom/vivo/common/animation/ListAnimatorManager$1;

    invoke-direct {v1, p0}, Lcom/vivo/common/animation/ListAnimatorManager$1;-><init>(Lcom/vivo/common/animation/ListAnimatorManager;)V

    iput-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 79
    new-instance v1, Lcom/vivo/common/animation/ListAnimatorManager$2;

    invoke-direct {v1, p0}, Lcom/vivo/common/animation/ListAnimatorManager$2;-><init>(Lcom/vivo/common/animation/ListAnimatorManager;)V

    iput-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mHidenListener:Landroid/animation/Animator$AnimatorListener;

    .line 106
    new-instance v1, Lcom/vivo/common/animation/ListAnimatorManager$3;

    invoke-direct {v1, p0}, Lcom/vivo/common/animation/ListAnimatorManager$3;-><init>(Lcom/vivo/common/animation/ListAnimatorManager;)V

    iput-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 123
    iput p2, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mStyle:I

    .line 124
    iput-object p1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mContext:Landroid/content/Context;

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mStyle:I

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/vivo/internal/R$styleable;->VivoTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    const/16 v1, 0x17

    const v2, 0x30f0110

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mStyle:I

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mStyle:I

    sget-object v3, Lcom/vivo/internal/R$styleable;->EditorMode:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mLeft:I

    .line 135
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mRight:I

    .line 136
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mTop:I

    .line 137
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mLtoR:Z

    .line 138
    const v1, 0x3020061

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mDrawableID:I

    .line 139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "ListAnimatorManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/animation/ListAnimatorManager;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/ListAnimatorManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/animation/ListAnimatorManager;)Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/ListAnimatorManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/animation/ListAnimatorManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/animation/ListAnimatorManager;

    .prologue
    .line 23
    iget v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/vivo/common/animation/ListAnimatorManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/animation/ListAnimatorManager;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/vivo/common/animation/ListAnimatorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/animation/ListAnimatorManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vivo/common/animation/ListAnimatorManager;->reset()V

    return-void
.end method

.method static synthetic access$402(Lcom/vivo/common/animation/ListAnimatorManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/animation/ListAnimatorManager;
    .param p1, "x1"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mCurrentProgess:F

    return p1
.end method

.method static synthetic access$500(Lcom/vivo/common/animation/ListAnimatorManager;F)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/animation/ListAnimatorManager;
    .param p1, "x1"    # F

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/ListAnimatorManager;->updateUIProgress(F)V

    return-void
.end method

.method private addListEditControl(Lcom/vivo/common/animation/IListEditControl;)V
    .locals 1
    .param p1, "control"    # Lcom/vivo/common/animation/IListEditControl;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mControlSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method private reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v3, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    .line 155
    iget-object v3, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 156
    iget-object v3, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mControlSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 157
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 159
    iget-object v3, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mControlSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/animation/IListEditControl;

    .line 160
    .local v1, "iControl":Lcom/vivo/common/animation/IListEditControl;
    invoke-interface {v1}, Lcom/vivo/common/animation/IListEditControl;->getEditControl()Lcom/vivo/common/animation/ListEditControl;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/vivo/common/animation/ListEditControl;->setChecked(Z)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "iControl":Lcom/vivo/common/animation/IListEditControl;
    :cond_0
    return-void
.end method

.method private updateListValidItem(Landroid/view/View;)V
    .locals 5
    .param p1, "skipView"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v3, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mControlSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 172
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 174
    iget-object v3, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mControlSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 175
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    add-int/lit8 v0, v0, 0x1

    .line 178
    goto :goto_0

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 182
    add-int/lit8 v1, v1, -0x1

    .line 183
    iget-object v3, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mControlSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 187
    goto :goto_0

    .line 188
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private updateUIProgress(F)V
    .locals 3
    .param p1, "p"    # F

    .prologue
    .line 307
    iget-object v2, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mControlSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 308
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 310
    iget-object v2, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mControlSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/common/animation/IListEditControl;

    invoke-interface {v2}, Lcom/vivo/common/animation/IListEditControl;->getEditControl()Lcom/vivo/common/animation/ListEditControl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vivo/common/animation/ListEditControl;->onAnimateUpdate(F)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method


# virtual methods
.method public endCurrentAnimate()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 303
    :cond_0
    return-void
.end method

.method public getListState()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    return v0
.end method

.method public setCheckAlignLeft(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mLtoR:Z

    .line 359
    return-void
.end method

.method public setCheckDrawable(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mDrawableID:I

    .line 365
    return-void
.end method

.method public setCheckLeftPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 340
    iput p1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mLeft:I

    .line 341
    return-void
.end method

.method public setCheckRightPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 346
    iput p1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mRight:I

    .line 347
    return-void
.end method

.method public setCheckTopPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 352
    iput p1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mTop:I

    .line 353
    return-void
.end method

.method public setListControlHook(Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    .line 335
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mListView:Landroid/widget/ListView;

    .line 194
    return-void
.end method

.method public switchToEditModel()V
    .locals 4

    .prologue
    const v3, 0x3e4ccccd    # 0.2f

    .line 199
    iget v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    .line 203
    invoke-static {}, Landroid/os/FtBuild;->getRomVersion()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 210
    :goto_1
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 214
    const/16 v0, 0x1001

    iput v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 202
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public switchToEditModelDirectly()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 220
    iget v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 223
    :cond_0
    iput v2, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mCurrentProgess:F

    .line 224
    invoke-direct {p0, v2}, Lcom/vivo/common/animation/ListAnimatorManager;->updateUIProgress(F)V

    .line 225
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;->onAmProgress(FZ)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 230
    const/16 v0, 0x1002

    iput v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    goto :goto_0
.end method

.method public switchToNormalDirectly()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iget v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 260
    :cond_0
    iput v2, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mCurrentProgess:F

    .line 261
    invoke-direct {p0, v2}, Lcom/vivo/common/animation/ListAnimatorManager;->updateUIProgress(F)V

    .line 262
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;->onAmProgress(FZ)V

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/animation/ListAnimatorManager;->reset()V

    .line 267
    const/16 v0, 0x1000

    iput v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    goto :goto_0
.end method

.method public swtichToNormal()V
    .locals 4

    .prologue
    const v3, 0x3e4ccccd    # 0.2f

    .line 236
    iget v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    .line 240
    invoke-static {}, Landroid/os/FtBuild;->getRomVersion()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    :goto_1
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mHidenListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 251
    const/16 v0, 0x1003

    iput v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mState:I

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 239
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public updateControlList(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    .line 273
    instance-of v0, p1, Lcom/vivo/common/animation/IListEditControl;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 275
    check-cast v6, Lcom/vivo/common/animation/IListEditControl;

    .line 276
    .local v6, "control":Lcom/vivo/common/animation/IListEditControl;
    invoke-direct {p0, v6}, Lcom/vivo/common/animation/ListAnimatorManager;->addListEditControl(Lcom/vivo/common/animation/IListEditControl;)V

    .line 278
    invoke-interface {v6}, Lcom/vivo/common/animation/IListEditControl;->getEditControl()Lcom/vivo/common/animation/ListEditControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/common/animation/ListEditControl;->clearAnimateChildView()V

    .line 280
    invoke-interface {v6}, Lcom/vivo/common/animation/IListEditControl;->getEditControl()Lcom/vivo/common/animation/ListEditControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/common/animation/ListEditControl;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-interface {v6}, Lcom/vivo/common/animation/IListEditControl;->getEditControl()Lcom/vivo/common/animation/ListEditControl;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mDrawableID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mLeft:I

    iget v3, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mTop:I

    iget v4, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mRight:I

    iget-boolean v5, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mLtoR:Z

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/common/animation/ListEditControl;->init(Landroid/graphics/drawable/Drawable;IIIZ)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    invoke-interface {v6}, Lcom/vivo/common/animation/IListEditControl;->getEditControl()Lcom/vivo/common/animation/ListEditControl;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;->onInitalListEditControl(Lcom/vivo/common/animation/ListEditControl;Landroid/view/View;)V

    .line 286
    :cond_1
    invoke-interface {v6}, Lcom/vivo/common/animation/IListEditControl;->getEditControl()Lcom/vivo/common/animation/ListEditControl;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->isLayoutRtl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/animation/ListEditControl;->setLayoutRtl(Z)V

    .line 287
    invoke-interface {v6}, Lcom/vivo/common/animation/IListEditControl;->getEditControl()Lcom/vivo/common/animation/ListEditControl;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/animation/ListAnimatorManager;->mCurrentProgess:F

    invoke-virtual {v0, v1}, Lcom/vivo/common/animation/ListEditControl;->onAnimateUpdate(F)V

    .line 289
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/ListAnimatorManager;->updateListValidItem(Landroid/view/View;)V

    .line 295
    .end local v6    # "control":Lcom/vivo/common/animation/IListEditControl;
    :goto_0
    return-void

    .line 293
    :cond_2
    const-string v0, "Exception: updateControlList--  the item is not IListEditControl type"

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/ListAnimatorManager;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method
