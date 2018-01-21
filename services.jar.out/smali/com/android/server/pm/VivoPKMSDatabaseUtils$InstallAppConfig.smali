.class Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
.super Ljava/lang/Object;
.source "VivoPKMSDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPKMSDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallAppConfig"
.end annotation


# instance fields
.field _id:I

.field exist:Z

.field isForce:I

.field last_server_status:I

.field notUpdateToDB:Z

.field oldForce:I

.field packageName:Ljava/lang/String;

.field status:I

.field final synthetic this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1648
    iput-object p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1641
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    .line 1642
    iput v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->last_server_status:I

    .line 1643
    iput v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->status:I

    .line 1644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->exist:Z

    .line 1645
    iput-boolean v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->notUpdateToDB:Z

    .line 1646
    iput v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->oldForce:I

    .line 1650
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;ILjava/lang/String;III)V
    .locals 3
    .param p2, "_id"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isForce"    # I
    .param p5, "last_server_status"    # I
    .param p6, "status"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1652
    iput-object p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1641
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    .line 1642
    iput v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->last_server_status:I

    .line 1643
    iput v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->status:I

    .line 1644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->exist:Z

    .line 1645
    iput-boolean v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->notUpdateToDB:Z

    .line 1646
    iput v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->oldForce:I

    .line 1653
    iput p2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->_id:I

    .line 1654
    iput-object p3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    .line 1655
    iput p4, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    .line 1656
    iput p5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->last_server_status:I

    .line 1657
    iput p6, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->status:I

    .line 1658
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PKG_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " _id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isForce:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " last_server_status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->last_server_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->exist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notUpdateToDB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->notUpdateToDB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oldForce:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->oldForce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
