.class Lcom/android/internal/view/menu/VivoIconMenuPresenter$SubMenuPresenterCallback;
.super Ljava/lang/Object;
.source "VivoIconMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/VivoIconMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/VivoIconMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/android/internal/view/menu/VivoIconMenuPresenter;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/view/menu/VivoIconMenuPresenter;Lcom/android/internal/view/menu/VivoIconMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/view/menu/VivoIconMenuPresenter;
    .param p2, "x1"    # Lcom/android/internal/view/menu/VivoIconMenuPresenter$1;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/VivoIconMenuPresenter$SubMenuPresenterCallback;-><init>(Lcom/android/internal/view/menu/VivoIconMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mOpenSubMenuId:I

    .line 266
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    # getter for: Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->access$100(Lcom/android/internal/view/menu/VivoIconMenuPresenter;)Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    # getter for: Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->access$100(Lcom/android/internal/view/menu/VivoIconMenuPresenter;)Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->dismiss()V

    .line 268
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->access$102(Lcom/android/internal/view/menu/VivoIconMenuPresenter;Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;)Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;

    .line 270
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    check-cast p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .end local p1    # "subMenu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mOpenSubMenuId:I

    .line 277
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
