.class Landroid/widget/AbsListView$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 7892
    iput-object p1, p0, Landroid/widget/AbsListView$TextDirectionHeuristicImpl;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 7892
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$TextDirectionHeuristicImpl;-><init>(Landroid/widget/AbsListView;)V

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

    .line 7894
    iget-object v1, p0, Landroid/widget/AbsListView$TextDirectionHeuristicImpl;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLayoutDirection()I

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

    .line 7898
    iget-object v1, p0, Landroid/widget/AbsListView$TextDirectionHeuristicImpl;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
