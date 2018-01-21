.class Lcom/android/server/pm/VivoADBInstallDialog$1;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoADBInstallDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoADBInstallDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$1;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 194
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$1;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    const/16 v1, 0x14

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->setConfirmResultSync(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$000(Lcom/android/server/pm/VivoADBInstallDialog;I)V

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$1;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->dismiss()V
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$100(Lcom/android/server/pm/VivoADBInstallDialog;)V

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
