.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;
.super Ljava/lang/Object;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForegroundAppInfo"
.end annotation


# instance fields
.field private packetCount:J

.field private packetName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

.field private uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 2

    .prologue
    .line 2953
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2954
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->uid:I

    .line 2955
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->packetCount:J

    .line 2956
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->packetName:Ljava/lang/String;

    .line 2957
    return-void
.end method


# virtual methods
.method public getPacketCount()J
    .locals 2

    .prologue
    .line 2970
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->packetCount:J

    return-wide v0
.end method

.method public getPacketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2974
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->packetName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 2966
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->uid:I

    return v0
.end method

.method public updateInfo(IJLjava/lang/String;)V
    .locals 0
    .param p1, "u"    # I
    .param p2, "count"    # J
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 2960
    iput p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->uid:I

    .line 2961
    iput-wide p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->packetCount:J

    .line 2962
    iput-object p4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->packetName:Ljava/lang/String;

    .line 2963
    return-void
.end method
