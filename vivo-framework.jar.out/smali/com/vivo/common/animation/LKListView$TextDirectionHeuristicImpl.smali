.class Lcom/vivo/common/animation/LKListView$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "LKListView.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/animation/LKListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/animation/LKListView;


# direct methods
.method private constructor <init>(Lcom/vivo/common/animation/LKListView;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/vivo/common/animation/LKListView$TextDirectionHeuristicImpl;->this$0:Lcom/vivo/common/animation/LKListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/common/animation/LKListView;Lcom/vivo/common/animation/LKListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/common/animation/LKListView;
    .param p2, "x1"    # Lcom/vivo/common/animation/LKListView$1;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/LKListView$TextDirectionHeuristicImpl;-><init>(Lcom/vivo/common/animation/LKListView;)V

    return-void
.end method


# virtual methods
.method public isRtl(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v0, 0x1

    .line 267
    iget-object v1, p0, Lcom/vivo/common/animation/LKListView$TextDirectionHeuristicImpl;->this$0:Lcom/vivo/common/animation/LKListView;

    invoke-virtual {v1}, Lcom/vivo/common/animation/LKListView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRtl([CII)Z
    .locals 2
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v0, 0x1

    .line 271
    iget-object v1, p0, Lcom/vivo/common/animation/LKListView$TextDirectionHeuristicImpl;->this$0:Lcom/vivo/common/animation/LKListView;

    invoke-virtual {v1}, Lcom/vivo/common/animation/LKListView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
