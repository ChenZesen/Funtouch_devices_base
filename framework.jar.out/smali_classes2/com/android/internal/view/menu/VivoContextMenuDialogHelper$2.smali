.class Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$2;
.super Ljava/lang/Object;
.source "VivoContextMenuDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->show()V
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
    .line 211
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$2;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$2;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$200(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 216
    return-void
.end method
