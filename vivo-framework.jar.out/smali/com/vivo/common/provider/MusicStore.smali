.class public final Lcom/vivo/common/provider/MusicStore;
.super Ljava/lang/Object;
.source "MusicStore.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/provider/MusicStore$Bucket;,
        Lcom/vivo/common/provider/MusicStore$BucketColumns;,
        Lcom/vivo/common/provider/MusicStore$PlayCounts;,
        Lcom/vivo/common/provider/MusicStore$PlayCountColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method
