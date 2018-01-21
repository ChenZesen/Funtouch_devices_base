.class Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;
.super Ljava/lang/Object;
.source "VivoPKMSDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPKMSDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppRequestCache"
.end annotation


# instance fields
.field callingPid:I

.field callingUid:I

.field isForce:I

.field packageName:Ljava/lang/String;

.field requestTime:J

.field final synthetic this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;IIILjava/lang/String;J)V
    .locals 0
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "isForce"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "requestTime"    # J

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1675
    iput p2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;->callingPid:I

    .line 1676
    iput p3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;->callingUid:I

    .line 1677
    iput p4, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;->isForce:I

    .line 1678
    iput-object p5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;->packageName:Ljava/lang/String;

    .line 1679
    iput-wide p6, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;->requestTime:J

    .line 1680
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isForce:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;->isForce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callingPid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;->callingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callingUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;->requestTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
