.class Lcom/android/server/pm/VivoADBInstallDialog$9;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoADBInstallDialog;->showVirusDialog()V
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
    .line 607
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$9;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 609
    new-instance v0, Lcom/android/server/pm/VivoADBInstallDialog$9$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/VivoADBInstallDialog$9$1;-><init>(Lcom/android/server/pm/VivoADBInstallDialog$9;)V

    invoke-virtual {v0}, Lcom/android/server/pm/VivoADBInstallDialog$9$1;->start()V

    .line 622
    return-void
.end method
