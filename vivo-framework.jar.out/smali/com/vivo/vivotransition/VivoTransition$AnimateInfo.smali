.class Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
.super Ljava/lang/Object;
.source "VivoTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/vivotransition/VivoTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimateInfo"
.end annotation


# instance fields
.field drawingTime:J

.field duration:J

.field isScrolling:Z

.field reverse:Z

.field startTime:J

.field type:I

.field viewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/vivotransition/VivoTransition$ViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->type:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->reverse:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->startTime:J

    .line 88
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->duration:J

    .line 89
    iput p1, p0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->type:I

    .line 90
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 96
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/vivotransition/VivoTransition$ViewInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    invoke-virtual {v1}, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->clean()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    .line 99
    return-void
.end method
