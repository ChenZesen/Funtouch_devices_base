.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;
.super Ljava/lang/Object;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoodLinkTarget"
.end annotation


# instance fields
.field public final REDUCE_TIME_MS:I

.field public final RSSI_ADJ_DBM:I

.field public final SAMPLE_COUNT:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "adj"    # I
    .param p2, "count"    # I
    .param p3, "time"    # I

    .prologue
    .line 1509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1510
    iput p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    .line 1511
    iput p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;->SAMPLE_COUNT:I

    .line 1512
    iput p3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    .line 1513
    return-void
.end method
