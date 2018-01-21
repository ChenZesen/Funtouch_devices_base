.class Lcom/android/server/pm/VivoADBInstallDialog$10$2$1;
.super Ljava/lang/Thread;
.source "VivoADBInstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoADBInstallDialog$10$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/pm/VivoADBInstallDialog$10$2;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog$10$2;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$10$2$1;->this$2:Lcom/android/server/pm/VivoADBInstallDialog$10$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 740
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog$10$2$1;->this$2:Lcom/android/server/pm/VivoADBInstallDialog$10$2;

    iget-object v1, v1, Lcom/android/server/pm/VivoADBInstallDialog$10$2;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$10;

    iget-object v1, v1, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-virtual {v1}, Lcom/android/server/pm/VivoADBInstallDialog;->getPathFromPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 741
    .local v0, "file":Ljava/io/File;
    const-string v1, "VivoADBInstallDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get path is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog$10$2$1;->this$2:Lcom/android/server/pm/VivoADBInstallDialog$10$2;

    iget-object v3, v3, Lcom/android/server/pm/VivoADBInstallDialog$10$2;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$10;

    iget-object v3, v3, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-virtual {v3}, Lcom/android/server/pm/VivoADBInstallDialog;->getPathFromPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; file is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exist is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v1, "VivoADBInstallDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file.setExecutable(true,false) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; file.setReadable(true,false) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " file.setWritable(true,false) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v1, "VivoADBInstallDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete result is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog$10$2$1;->this$2:Lcom/android/server/pm/VivoADBInstallDialog$10$2;

    iget-object v1, v1, Lcom/android/server/pm/VivoADBInstallDialog$10$2;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$10;

    iget-object v1, v1, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    const/16 v2, 0x14

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->setConfirmResultSync(I)V
    invoke-static {v1, v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$000(Lcom/android/server/pm/VivoADBInstallDialog;I)V

    .line 753
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog$10$2$1;->this$2:Lcom/android/server/pm/VivoADBInstallDialog$10$2;

    iget-object v1, v1, Lcom/android/server/pm/VivoADBInstallDialog$10$2;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$10;

    iget-object v1, v1, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->dismiss()V
    invoke-static {v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$100(Lcom/android/server/pm/VivoADBInstallDialog;)V

    .line 755
    return-void
.end method
