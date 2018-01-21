.class Lcom/android/server/pm/VivoADBInstallDialog$2;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 202
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$2;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 207
    return-void
.end method
