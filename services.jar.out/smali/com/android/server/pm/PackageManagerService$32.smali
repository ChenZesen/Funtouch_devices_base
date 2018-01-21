.class Lcom/android/server/pm/PackageManagerService$32;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->waitConfirmAutoInstall(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$finalDlg:Lcom/android/server/pm/VivoADBInstallDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/VivoADBInstallDialog;)V
    .locals 0

    .prologue
    .line 19841
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$32;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$32;->val$finalDlg:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 19844
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$32;->val$finalDlg:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-virtual {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->show()V

    .line 19845
    return-void
.end method
