.class public Landroid/media/MediaScanner$BlackWhiteList;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlackWhiteList"
.end annotation


# instance fields
.field private mPathLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PathList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/MediaScanner;

.field private version:I


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;)V
    .locals 1

    .prologue
    .line 2731
    iput-object p1, p0, Landroid/media/MediaScanner$BlackWhiteList;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner$BlackWhiteList;->mPathLists:Ljava/util/ArrayList;

    .line 2732
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaScanner$BlackWhiteList;->version:I

    .line 2733
    return-void
.end method


# virtual methods
.method public addPathList(Landroid/media/MediaScanner$PathList;)V
    .locals 1
    .param p1, "pathList"    # Landroid/media/MediaScanner$PathList;

    .prologue
    .line 2748
    iget-object v0, p0, Landroid/media/MediaScanner$BlackWhiteList;->mPathLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2749
    return-void
.end method

.method public getPathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PathList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2744
    iget-object v0, p0, Landroid/media/MediaScanner$BlackWhiteList;->mPathLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 2736
    iget v0, p0, Landroid/media/MediaScanner$BlackWhiteList;->version:I

    return v0
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 2740
    iput p1, p0, Landroid/media/MediaScanner$BlackWhiteList;->version:I

    .line 2741
    return-void
.end method
