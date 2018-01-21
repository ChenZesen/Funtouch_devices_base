.class Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckInternet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;
    }
.end annotation


# instance fields
.field private baiduInternetResponseCode:I

.field private baiduResponseCode:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;

.field private vivoInternetResponseCode:I

.field private vivoResponseCode:I


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 3
    .param p2, "tk"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1608
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1603
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduResponseCode:I

    .line 1604
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoResponseCode:I

    .line 1605
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduInternetResponseCode:I

    .line 1606
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoInternetResponseCode:I

    .line 1609
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;

    invoke-direct {v0, p0, v2, v1, p2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;ZZI)V

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->start()V

    .line 1610
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;

    invoke-direct {v0, p0, v1, v1, p2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;ZZI)V

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->start()V

    .line 1611
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;

    invoke-direct {v0, p0, v2, v2, p2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;ZZI)V

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->start()V

    .line 1612
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;ZZI)V

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->start()V

    .line 1613
    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    .prologue
    .line 1602
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoInternetResponseCode:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;
    .param p1, "x1"    # I

    .prologue
    .line 1602
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoInternetResponseCode:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    .prologue
    .line 1602
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoResponseCode:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;
    .param p1, "x1"    # I

    .prologue
    .line 1602
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoResponseCode:I

    return p1
.end method

.method static synthetic access$5600(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    .prologue
    .line 1602
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduInternetResponseCode:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;
    .param p1, "x1"    # I

    .prologue
    .line 1602
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduInternetResponseCode:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    .prologue
    .line 1602
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduResponseCode:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;
    .param p1, "x1"    # I

    .prologue
    .line 1602
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduResponseCode:I

    return p1
.end method
