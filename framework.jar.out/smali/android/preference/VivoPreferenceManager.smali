.class Landroid/preference/VivoPreferenceManager;
.super Ljava/lang/Object;
.source "VivoPreferenceManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;
    }
.end annotation


# static fields
.field private static final INDEX_BOTH:I = 0x4

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CATEGORY:I = 0x0

.field private static final INDEX_NO:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field private static final KEY:I = 0x4ffffff

.field private static final MARK:Ljava/lang/String; = "process_mark"


# instance fields
.field private mAllRound:Landroid/graphics/drawable/Drawable;

.field private mBottomRound:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mPreferenceGap:I

.field private mPreferenceGroup:Landroid/preference/PreferenceGroup;

.field private mPreferenceGroupAdapter:Landroid/preference/PreferenceGroupAdapter;

.field private mTopRound:Landroid/graphics/drawable/Drawable;

.field private mUnRound:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 6
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/VivoPreferenceManager;->mContext:Landroid/content/Context;

    .line 48
    iput-object p1, p0, Landroid/preference/VivoPreferenceManager;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 49
    iget-object v1, p0, Landroid/preference/VivoPreferenceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/vivo/internal/R$styleable;->PreferenceGroup:[I

    const v4, 0x3010016

    const v5, 0x30f00e2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "as":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/VivoPreferenceManager;->mTopRound:Landroid/graphics/drawable/Drawable;

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/VivoPreferenceManager;->mBottomRound:Landroid/graphics/drawable/Drawable;

    .line 56
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/VivoPreferenceManager;->mAllRound:Landroid/graphics/drawable/Drawable;

    .line 57
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/VivoPreferenceManager;->mUnRound:Landroid/graphics/drawable/Drawable;

    .line 58
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/preference/VivoPreferenceManager;->mPreferenceGap:I

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Landroid/preference/VivoPreferenceManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/preference/VivoPreferenceManager;

    .prologue
    .line 23
    iget-object v0, p0, Landroid/preference/VivoPreferenceManager;->mTopRound:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/VivoPreferenceManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/preference/VivoPreferenceManager;

    .prologue
    .line 23
    iget-object v0, p0, Landroid/preference/VivoPreferenceManager;->mBottomRound:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/preference/VivoPreferenceManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/preference/VivoPreferenceManager;

    .prologue
    .line 23
    iget-object v0, p0, Landroid/preference/VivoPreferenceManager;->mUnRound:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Landroid/preference/VivoPreferenceManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/preference/VivoPreferenceManager;

    .prologue
    .line 23
    iget-object v0, p0, Landroid/preference/VivoPreferenceManager;->mAllRound:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private addMark(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "list"    # Landroid/widget/ListView;

    .prologue
    .line 81
    const v0, 0x4ffffff

    const-string/jumbo v1, "process_mark"

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setTag(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method private isMarked(Landroid/widget/ListView;)Z
    .locals 3
    .param p1, "list"    # Landroid/widget/ListView;

    .prologue
    const/4 v1, 0x0

    .line 85
    const v2, 0x4ffffff

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "process_mark"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindList(Landroid/widget/ListView;)V
    .locals 5
    .param p1, "list"    # Landroid/widget/ListView;

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x1

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 64
    const v1, 0x106000d

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 65
    iget v1, p0, Landroid/preference/VivoPreferenceManager;->mPreferenceGap:I

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/preference/VivoPreferenceManager;->isMarked(Landroid/widget/ListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Landroid/preference/VivoPreferenceManager;->mPreferenceGap:I

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 71
    new-instance v0, Landroid/view/View;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 73
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Landroid/preference/VivoPreferenceManager;->mPreferenceGap:I

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 76
    invoke-direct {p0, p1}, Landroid/preference/VivoPreferenceManager;->addMark(Landroid/widget/ListView;)V

    .line 78
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public getPreferenceGroupAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/preference/VivoPreferenceManager;->mPreferenceGroupAdapter:Landroid/preference/PreferenceGroupAdapter;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;

    iget-object v1, p0, Landroid/preference/VivoPreferenceManager;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-direct {v0, p0, v1}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;-><init>(Landroid/preference/VivoPreferenceManager;Landroid/preference/PreferenceGroup;)V

    iput-object v0, p0, Landroid/preference/VivoPreferenceManager;->mPreferenceGroupAdapter:Landroid/preference/PreferenceGroupAdapter;

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/preference/VivoPreferenceManager;->mPreferenceGroupAdapter:Landroid/preference/PreferenceGroupAdapter;

    return-object v0
.end method
