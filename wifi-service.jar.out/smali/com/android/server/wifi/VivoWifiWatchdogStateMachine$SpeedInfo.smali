.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;
.super Ljava/lang/Object;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedInfo"
.end annotation


# instance fields
.field public rssi:I

.field public speed:D

.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 2

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3400
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    .line 3401
    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    .line 3402
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;DI)V
    .locals 0
    .param p2, "s"    # D
    .param p4, "r"    # I

    .prologue
    .line 3404
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3405
    iput-wide p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    .line 3406
    iput p4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    .line 3407
    return-void
.end method
