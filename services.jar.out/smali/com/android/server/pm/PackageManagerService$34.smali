.class Lcom/android/server/pm/PackageManagerService$34;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->showGetInstallPackageWarnDialog(Ljava/lang/String;II)Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$dlg:Lcom/android/server/pm/VivoADBInstallWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/VivoADBInstallWarningDialog;)V
    .locals 0

    .prologue
    .line 20258
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$34;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$34;->val$dlg:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 20261
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$34;->val$dlg:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    invoke-virtual {v0}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->showGetInstallPackageWarnDialog()V

    .line 20262
    return-void
.end method
