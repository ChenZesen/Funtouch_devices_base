.class Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$1;
.super Ljava/lang/Object;
.source "VivoContextMenuDialogHelper.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "arg0"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "arg1"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "arg0"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "arg1"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 108
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 143
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$000(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->dismiss()V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$100(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$100(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 149
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;

    .prologue
    .line 113
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 126
    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$000(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 128
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 134
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0
    .param p1, "cleared"    # Z

    .prologue
    .line 139
    return-void
.end method
