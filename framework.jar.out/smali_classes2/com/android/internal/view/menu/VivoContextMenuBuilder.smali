.class public Lcom/android/internal/view/menu/VivoContextMenuBuilder;
.super Lcom/android/internal/view/menu/ContextMenuBuilder;
.source "VivoContextMenuBuilder.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 22
    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1, p0}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoContextMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 28
    invoke-static {}, Landroid/os/FtBuild;->getRomVersion()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 29
    new-instance v0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 30
    .local v0, "helper":Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->show()V

    .line 42
    .end local v0    # "helper":Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;
    :goto_0
    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 36
    .local v0, "helper":Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->show()V

    goto :goto_0

    .line 42
    .end local v0    # "helper":Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
