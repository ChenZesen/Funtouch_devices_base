.class final Lcom/android/server/am/VivoSmartMultiWindowManagerService$LocalService;
.super Landroid/app/VivoSmartMultiWindowManagerInternal;
.source "VivoSmartMultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VivoSmartMultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VivoSmartMultiWindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/VivoSmartMultiWindowManagerService;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService$LocalService;->this$0:Lcom/android/server/am/VivoSmartMultiWindowManagerService;

    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/VivoSmartMultiWindowManagerService;Lcom/android/server/am/VivoSmartMultiWindowManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/VivoSmartMultiWindowManagerService;
    .param p2, "x1"    # Lcom/android/server/am/VivoSmartMultiWindowManagerService$1;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/am/VivoSmartMultiWindowManagerService$LocalService;-><init>(Lcom/android/server/am/VivoSmartMultiWindowManagerService;)V

    return-void
.end method
