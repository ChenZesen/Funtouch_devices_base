.class Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;
.super Ljava/lang/Object;
.source "VivoIconMenuViewGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/VivoIconMenuViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuViewOnHierarchyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;


# direct methods
.method private constructor <init>(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;->this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;Lcom/android/internal/view/menu/VivoIconMenuViewGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/view/menu/VivoIconMenuViewGroup;
    .param p2, "x1"    # Lcom/android/internal/view/menu/VivoIconMenuViewGroup$1;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;-><init>(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;)V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 89
    const-string v1, "VivoIconMenuViewGroup"

    const-string v2, "add view in the ViewTree"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    instance-of v1, p2, Lcom/android/internal/view/menu/VivoIconMenuItemView;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 92
    check-cast v0, Lcom/android/internal/view/menu/VivoIconMenuItemView;

    .line 93
    .local v0, "itemView":Lcom/android/internal/view/menu/VivoIconMenuItemView;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->singleChoice()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;->this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;

    # getter for: Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;
    invoke-static {v1}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->access$200(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;)Lcom/android/internal/view/menu/VivoIconMenuItemView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;->this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;

    # getter for: Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;
    invoke-static {v1}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->access$200(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;)Lcom/android/internal/view/menu/VivoIconMenuItemView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setChecked(Z)V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;->this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;

    # setter for: Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;
    invoke-static {v1, v0}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->access$202(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;Lcom/android/internal/view/menu/VivoIconMenuItemView;)Lcom/android/internal/view/menu/VivoIconMenuItemView;

    .line 100
    :cond_1
    new-instance v1, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$CheckedChangeListener;

    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;->this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$CheckedChangeListener;-><init>(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;Lcom/android/internal/view/menu/VivoIconMenuViewGroup$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setOnCheckedChangeListener(Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;)V

    .line 103
    .end local v0    # "itemView":Lcom/android/internal/view/menu/VivoIconMenuItemView;
    :cond_2
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 104
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "child":Landroid/view/View;
    new-instance v1, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;

    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;->this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;

    invoke-direct {v1, v2}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$MenuViewOnHierarchyChangeListener;-><init>(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 105
    :cond_3
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 109
    const-string v0, "VivoIconMenuViewGroup"

    const-string v1, "remove view from the ViewTree"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method
