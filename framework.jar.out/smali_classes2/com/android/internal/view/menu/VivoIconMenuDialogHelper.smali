.class public Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;
.super Ljava/lang/Object;
.source "VivoIconMenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuView:Lcom/android/internal/view/menu/MenuView;

.field private mPresenter:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "VivoIconMenuDialogHelper"

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->DEBUG:Z

    .line 41
    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 42
    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 43
    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    .line 45
    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    .line 46
    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 49
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 50
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 131
    :cond_0
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 140
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->dismiss()V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 146
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 136
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 91
    const/16 v4, 0x52

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    .line 92
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 93
    iget-object v4, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 94
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 98
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 121
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :goto_0
    return v3

    .line 104
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 105
    iget-object v4, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 106
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 108
    .restart local v0    # "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 110
    .restart local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    iget-object v4, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 112
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 121
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 126
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 59
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 61
    .local v1, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    new-instance v2, Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    .line 62
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 63
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 65
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lvivo/util/VivoThemeUtil$ThemeType;->CONTEXT_MENU_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v4}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    .line 67
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 68
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v2, Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 71
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 72
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 73
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 75
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    invoke-interface {v3}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 76
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 77
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 78
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 79
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 80
    const/16 v2, 0x3eb

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 81
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 88
    return-void
.end method
