.class Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$4;
.super Ljava/lang/Object;
.source "VivoContextMenuDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->addMoreIcon()V
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
    .line 328
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$4;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$4;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # invokes: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->switchMode()V
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$500(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V

    .line 332
    return-void
.end method
