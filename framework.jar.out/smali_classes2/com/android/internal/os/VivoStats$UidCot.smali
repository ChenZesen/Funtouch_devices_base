.class public final Lcom/android/internal/os/VivoStats$UidCot;
.super Ljava/lang/Object;
.source "VivoStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/VivoStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UidCot"
.end annotation


# instance fields
.field public density:I

.field public pkg:[Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/VivoStats$UidCot;->pkg:[Ljava/lang/String;

    return-void
.end method
