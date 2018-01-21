.class Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
.super Ljava/lang/Object;
.source "VivoSmartMultiWindowAppsModeMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppModesItem"
.end annotation


# instance fields
.field public currMode:I

.field public fullMode:I

.field public mInstanceId:I

.field public mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;


# direct methods
.method public constructor <init>(Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;Ljava/lang/String;III)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "fullmode"    # I
    .param p4, "curmode"    # I
    .param p5, "instanceid"    # I

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->this$0:Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->mPackageName:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->fullMode:I

    .line 41
    iput p4, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->currMode:I

    .line 42
    iput p5, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->mInstanceId:I

    .line 43
    return-void
.end method
