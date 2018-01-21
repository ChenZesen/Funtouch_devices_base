.class public Lcom/android/internal/view/menu/VivoListMenuView;
.super Landroid/widget/LinearLayout;
.source "VivoListMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private mMaxItems:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mNumActualItemsShown:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/VivoListMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/android/internal/view/menu/VivoListMenuView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/VivoListMenuView$1;-><init>(Lcom/android/internal/view/menu/VivoListMenuView;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 43
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/view/menu/VivoListMenuView;->mMaxItems:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/VivoListMenuView;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoListMenuView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method createMoreItemView()Lcom/android/internal/view/menu/VivoListMenuItemView;
    .locals 5

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoListMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 72
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x3030018

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/VivoListMenuItemView;

    .line 75
    .local v2, "itemView":Lcom/android/internal/view/menu/VivoListMenuItemView;
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/VivoListMenuView;->initMoreItemView(Lcom/android/internal/view/menu/VivoListMenuItemView;)V

    .line 77
    return-object v2
.end method

.method getMaxItems()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/view/menu/VivoListMenuView;->mMaxItems:I

    return v0
.end method

.method getNumActualItemsShown()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/internal/view/menu/VivoListMenuView;->mNumActualItemsShown:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x10302df

    return v0
.end method

.method initMoreItemView(Lcom/android/internal/view/menu/VivoListMenuItemView;)V
    .locals 3
    .param p1, "view"    # Lcom/android/internal/view/menu/VivoListMenuItemView;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoListMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x1040326

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/view/menu/VivoListMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoListMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 53
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method setNumActualItemsShown(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/internal/view/menu/VivoListMenuView;->mNumActualItemsShown:I

    .line 103
    return-void
.end method
