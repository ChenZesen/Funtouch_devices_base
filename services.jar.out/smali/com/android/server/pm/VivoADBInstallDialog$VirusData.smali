.class Lcom/android/server/pm/VivoADBInstallDialog$VirusData;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoADBInstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VirusData"
.end annotation


# instance fields
.field public cntxt:Landroid/content/Context;

.field public hasWarned:Z

.field public pkgName:Ljava/lang/String;

.field public pkgPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/VivoADBInstallDialog;

.field public virusDes:Ljava/lang/String;

.field public virusType:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;)V
    .locals 0
    .param p2, "_pkgName"    # Ljava/lang/String;
    .param p3, "_pkgPath"    # Ljava/lang/String;
    .param p4, "_virusType"    # I
    .param p5, "_virusDes"    # Ljava/lang/String;
    .param p6, "_hasWarned"    # Z
    .param p7, "_cntxt"    # Landroid/content/Context;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput-object p2, p0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->pkgName:Ljava/lang/String;

    .line 785
    iput-object p3, p0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->pkgPath:Ljava/lang/String;

    .line 786
    iput p4, p0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->virusType:I

    .line 787
    iput-object p5, p0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->virusDes:Ljava/lang/String;

    .line 788
    iput-boolean p6, p0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->hasWarned:Z

    .line 789
    iput-object p7, p0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->cntxt:Landroid/content/Context;

    .line 790
    return-void
.end method


# virtual methods
.method public setHasWarned(Z)Z
    .locals 3
    .param p1, "setWarned"    # Z

    .prologue
    .line 793
    iput-boolean p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->hasWarned:Z

    .line 794
    const-string v0, "VivoADBInstallDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasWarned is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->hasWarned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-boolean v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->hasWarned:Z

    return v0
.end method
