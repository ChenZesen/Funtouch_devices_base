.class Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;
.super Ljava/lang/Object;
.source "VivoPKMSDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPKMSDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForbidResult"
.end annotation


# instance fields
.field callingUid:I

.field packageName:Ljava/lang/String;

.field result:I

.field securityLevel:I

.field final synthetic this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)V
    .locals 1

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1617
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 1618
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    .line 1622
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Ljava/lang/String;I)V
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1617
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 1618
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    .line 1625
    iput-object p2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->packageName:Ljava/lang/String;

    .line 1626
    iput p3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->callingUid:I

    .line 1627
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callingUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " securityLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
