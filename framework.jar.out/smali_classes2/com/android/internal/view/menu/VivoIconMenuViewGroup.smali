.class public Lcom/android/internal/view/menu/VivoIconMenuViewGroup;
.super Landroid/widget/LinearLayout;
.source "VivoIconMenuViewGroup.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/VivoIconMenuViewGroup$1;,
        Lcom/android/internal/view/menu/VivoIconMenuViewGroup$CheckedChangeListener;,
        Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defAttrStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const-string v0, "VivoIconMenuViewGroup"

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->DEBUG:Z

    .line 22
    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mContext:Landroid/content/Context;

    .line 24
    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;

    .line 36
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;-><init>(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;Lcom/android/internal/view/menu/VivoIconMenuViewGroup$1;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 39
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;)Lcom/android/internal/view/menu/VivoIconMenuItemView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoIconMenuViewGroup;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;Lcom/android/internal/view/menu/VivoIconMenuItemView;)Lcom/android/internal/view/menu/VivoIconMenuItemView;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoIconMenuViewGroup;
    .param p1, "x1"    # Lcom/android/internal/view/menu/VivoIconMenuItemView;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;

    return-object p1
.end method

.method private findCheckableItemView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 63
    instance-of v4, p1, Lcom/android/internal/view/menu/VivoIconMenuItemView;

    if-eqz v4, :cond_0

    .line 80
    .end local p1    # "rootView":Landroid/view/View;
    :goto_0
    return-object p1

    .line 66
    .restart local p1    # "rootView":Landroid/view/View;
    :cond_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    .line 67
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 69
    check-cast v3, Landroid/view/ViewGroup;

    .line 70
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 72
    .local v1, "childCount":I
    const/4 v0, 0x0

    .line 73
    .local v0, "checkView":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 74
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->findCheckableItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 76
    instance-of v4, v0, Lcom/android/internal/view/menu/VivoIconMenuItemView;

    if-eqz v4, :cond_3

    :cond_2
    move-object p1, v0

    .line 80
    goto :goto_0

    .line 73
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->findCheckableItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, "checkableView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/view/menu/VivoIconMenuItemView;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 46
    check-cast v0, Lcom/android/internal/view/menu/VivoIconMenuItemView;

    .line 48
    .local v0, "button":Lcom/android/internal/view/menu/VivoIconMenuItemView;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->singleChoice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;

    if-eqz v2, :cond_0

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setChecked(Z)V

    .line 52
    :cond_0
    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;

    :cond_1
    move-object v2, p1

    .line 55
    check-cast v2, Lcom/android/internal/view/menu/VivoIconMenuItemView;

    new-instance v3, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$CheckedChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$CheckedChangeListener;-><init>(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;Lcom/android/internal/view/menu/VivoIconMenuViewGroup$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setOnCheckedChangeListener(Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;)V

    .line 58
    .end local v0    # "button":Lcom/android/internal/view/menu/VivoIconMenuItemView;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void
.end method
