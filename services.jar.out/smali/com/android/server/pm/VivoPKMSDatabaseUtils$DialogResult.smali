.class Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;
.super Ljava/lang/Object;
.source "VivoPKMSDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPKMSDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DialogResult"
.end annotation


# instance fields
.field isUserChoose:Z

.field result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1695
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "isUserChoose"    # Z

    .prologue
    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1698
    iput p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;->result:I

    .line 1699
    iput-boolean p2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;->isUserChoose:Z

    .line 1700
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isUserChoose:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;->isUserChoose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
