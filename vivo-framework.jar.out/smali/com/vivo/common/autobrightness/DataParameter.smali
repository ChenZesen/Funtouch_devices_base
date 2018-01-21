.class public final Lcom/vivo/common/autobrightness/DataParameter;
.super Ljava/lang/Object;
.source "DataParameter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataParameter"


# instance fields
.field public duration:J

.field public endTime:J

.field public eventId:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public startTime:J

.field public useNum:I


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/DataParameter;)V
    .locals 1
    .param p1, "other"    # Lcom/vivo/common/autobrightness/DataParameter;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/DataParameter;->params:Ljava/util/HashMap;

    .line 32
    invoke-virtual {p0, p1}, Lcom/vivo/common/autobrightness/DataParameter;->copyFrom(Lcom/vivo/common/autobrightness/DataParameter;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "duration"    # J
    .param p9, "useNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p10, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/DataParameter;->params:Ljava/util/HashMap;

    .line 23
    iput-object p1, p0, Lcom/vivo/common/autobrightness/DataParameter;->eventId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/vivo/common/autobrightness/DataParameter;->label:Ljava/lang/String;

    .line 25
    iput-wide p3, p0, Lcom/vivo/common/autobrightness/DataParameter;->startTime:J

    .line 26
    iput-wide p5, p0, Lcom/vivo/common/autobrightness/DataParameter;->endTime:J

    .line 27
    iput-wide p7, p0, Lcom/vivo/common/autobrightness/DataParameter;->duration:J

    .line 28
    iput p9, p0, Lcom/vivo/common/autobrightness/DataParameter;->useNum:I

    .line 29
    iput-object p10, p0, Lcom/vivo/common/autobrightness/DataParameter;->params:Ljava/util/HashMap;

    .line 30
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/vivo/common/autobrightness/DataParameter;)V
    .locals 2
    .param p1, "other"    # Lcom/vivo/common/autobrightness/DataParameter;

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    const-string v0, "DataParameter"

    const-string v1, "copyFrom other is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/vivo/common/autobrightness/DataParameter;->eventId:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/common/autobrightness/DataParameter;->eventId:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/vivo/common/autobrightness/DataParameter;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/common/autobrightness/DataParameter;->label:Ljava/lang/String;

    .line 41
    iget-wide v0, p1, Lcom/vivo/common/autobrightness/DataParameter;->startTime:J

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/DataParameter;->startTime:J

    .line 42
    iget-wide v0, p1, Lcom/vivo/common/autobrightness/DataParameter;->endTime:J

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/DataParameter;->endTime:J

    .line 43
    iget-wide v0, p1, Lcom/vivo/common/autobrightness/DataParameter;->duration:J

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/DataParameter;->duration:J

    .line 44
    iget v0, p1, Lcom/vivo/common/autobrightness/DataParameter;->useNum:I

    iput v0, p0, Lcom/vivo/common/autobrightness/DataParameter;->useNum:I

    .line 45
    iget-object v0, p1, Lcom/vivo/common/autobrightness/DataParameter;->params:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/vivo/common/autobrightness/DataParameter;->params:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/DataParameter;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/DataParameter;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/DataParameter;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/DataParameter;->endTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/DataParameter;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " useNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/DataParameter;->useNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/common/autobrightness/DataParameter;->params:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/DataParameter;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
