.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;
.super Ljava/lang/Object;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TxRxInfo"
.end annotation


# instance fields
.field public rxBytes:D

.field public rxPacket:D

.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

.field public txBytes:D

.field public txPacket:D


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 3632
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3633
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txPacket:D

    .line 3634
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    .line 3635
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxPacket:D

    .line 3636
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxBytes:D

    .line 3637
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;DDDD)V
    .locals 0
    .param p2, "t"    # D
    .param p4, "r"    # D
    .param p6, "tB"    # D
    .param p8, "rB"    # D

    .prologue
    .line 3639
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3640
    iput-wide p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txPacket:D

    .line 3641
    iput-wide p6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    .line 3642
    iput-wide p4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxPacket:D

    .line 3643
    iput-wide p8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxBytes:D

    .line 3644
    return-void
.end method
