.class public final Lcom/android/internal/os/VivoStats$AppInfo;
.super Ljava/lang/Object;
.source "VivoStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/VivoStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppInfo"
.end annotation


# static fields
.field public static final A:I = 0x1

.field public static final G:I = 0x2

.field public static final M:I = 0x3

.field public static final MAX:I = 0x5

.field public static final RE:I = 0x4

.field public static final U:I


# instance fields
.field public ss:[I

.field final synthetic this$0:Lcom/android/internal/os/VivoStats;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/VivoStats;)V
    .locals 1

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/internal/os/VivoStats$AppInfo;->this$0:Lcom/android/internal/os/VivoStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    return-void
.end method
