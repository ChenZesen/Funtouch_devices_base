.class public Landroid/media/MediaScanner$PathList;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PathList"
.end annotation


# instance fields
.field private mPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPathListName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;)V
    .locals 1

    .prologue
    .line 2706
    iput-object p1, p0, Landroid/media/MediaScanner$PathList;->this$0:Landroid/media/MediaScanner;

    .line 2707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner$PathList;->mPath:Ljava/util/ArrayList;

    .line 2708
    return-void
.end method


# virtual methods
.method public addPaths(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2719
    iget-object v0, p0, Landroid/media/MediaScanner$PathList;->mPath:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2720
    return-void
.end method

.method public getPathListName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2715
    iget-object v0, p0, Landroid/media/MediaScanner$PathList;->mPathListName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2723
    iget-object v0, p0, Landroid/media/MediaScanner$PathList;->mPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setPathListName(Ljava/lang/String;)V
    .locals 0
    .param p1, "listName"    # Ljava/lang/String;

    .prologue
    .line 2711
    iput-object p1, p0, Landroid/media/MediaScanner$PathList;->mPathListName:Ljava/lang/String;

    .line 2712
    return-void
.end method
