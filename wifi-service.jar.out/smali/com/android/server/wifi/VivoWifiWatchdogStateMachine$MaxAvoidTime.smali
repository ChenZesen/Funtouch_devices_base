.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;
.super Ljava/lang/Object;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaxAvoidTime"
.end annotation


# instance fields
.field public final MIN_RSSI_DBM:I

.field public final TIME_MS:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "time"    # I
    .param p2, "rssi"    # I

    .prologue
    .line 1522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1523
    iput p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    .line 1524
    iput p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    .line 1525
    return-void
.end method
