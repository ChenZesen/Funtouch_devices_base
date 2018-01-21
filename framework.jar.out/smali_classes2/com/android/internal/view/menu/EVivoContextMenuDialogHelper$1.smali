.class Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$1;
.super Ljava/lang/Object;
.source "EVivoContextMenuDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->show()V
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
    .line 115
    iput-object p1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$000(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 119
    return-void
.end method
