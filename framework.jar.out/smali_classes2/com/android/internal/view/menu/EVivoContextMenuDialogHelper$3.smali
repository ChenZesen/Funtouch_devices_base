.class Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$3;
.super Ljava/lang/Object;
.source "EVivoContextMenuDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->addIconMenuMoreIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$3;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$3;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # invokes: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->switchMode()V
    invoke-static {v0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$400(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V

    .line 228
    return-void
.end method
