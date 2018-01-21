.class Landroid/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public animation:Landroid/animation/Animator;

.field public dependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field

.field public done:Z

.field private mTmpClone:Landroid/animation/AnimatorSet$Node;

.field public nodeDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public nodeDependents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public tmpDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 1041
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 1047
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 1054
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet$Node;->done:Z

    .line 1066
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;

    .line 1076
    iput-object p1, p0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    .line 1077
    return-void
.end method

.method static synthetic access$200(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;
    .locals 1
    .param p0, "x0"    # Landroid/animation/AnimatorSet$Node;

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;

    return-object v0
.end method

.method static synthetic access$202(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;
    .locals 0
    .param p0, "x0"    # Landroid/animation/AnimatorSet$Node;
    .param p1, "x1"    # Landroid/animation/AnimatorSet$Node;

    .prologue
    .line 1021
    iput-object p1, p0, Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;

    return-object p1
.end method


# virtual methods
.method public addDependency(Landroid/animation/AnimatorSet$Dependency;)V
    .locals 3
    .param p1, "dependency"    # Landroid/animation/AnimatorSet$Dependency;

    .prologue
    .line 1085
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1086
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 1087
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 1089
    :cond_0
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1091
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    :cond_1
    iget-object v0, p1, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    .line 1094
    .local v0, "dependencyNode":Landroid/animation/AnimatorSet$Node;
    iget-object v1, v0, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 1095
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 1097
    :cond_2
    iget-object v1, v0, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    return-void
.end method

.method public clone()Landroid/animation/AnimatorSet$Node;
    .locals 3

    .prologue
    .line 1103
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 1104
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    .line 1105
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/animation/AnimatorSet$Node;->done:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    return-object v1

    .line 1107
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-virtual {p0}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method