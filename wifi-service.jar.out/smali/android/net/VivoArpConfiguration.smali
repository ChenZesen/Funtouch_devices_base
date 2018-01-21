.class public Landroid/net/VivoArpConfiguration;
.super Ljava/lang/Object;
.source "VivoArpConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoArpConfiguration"


# instance fields
.field private currentSSID:Ljava/lang/String;

.field private defaultGwMacAddress:[B

.field private ipConfiguration:Landroid/net/IpConfiguration;

.field private vivoDhcpHistoryLeaseTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "unkown"

    iput-object v0, p0, Landroid/net/VivoArpConfiguration;->currentSSID:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Landroid/net/VivoArpConfiguration;->init()V

    .line 45
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/VivoArpConfiguration;->defaultGwMacAddress:[B

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/VivoArpConfiguration;->ipConfiguration:Landroid/net/IpConfiguration;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/VivoArpConfiguration;->vivoDhcpHistoryLeaseTime:J

    .line 40
    const-string v0, "unkown"

    iput-object v0, p0, Landroid/net/VivoArpConfiguration;->currentSSID:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getCurrentSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/VivoArpConfiguration;->currentSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultGwMacAddress()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/net/VivoArpConfiguration;->defaultGwMacAddress:[B

    return-object v0
.end method

.method public getIpConfiguration()Landroid/net/IpConfiguration;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/VivoArpConfiguration;->ipConfiguration:Landroid/net/IpConfiguration;

    return-object v0
.end method

.method public getVivoDhcpHistoryLeaseTime()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Landroid/net/VivoArpConfiguration;->vivoDhcpHistoryLeaseTime:J

    return-wide v0
.end method

.method public setCurrentSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentSSID"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Landroid/net/VivoArpConfiguration;->currentSSID:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDefaultGwMacAddress([B)V
    .locals 0
    .param p1, "defaultGwMacAddress"    # [B

    .prologue
    .line 52
    iput-object p1, p0, Landroid/net/VivoArpConfiguration;->defaultGwMacAddress:[B

    .line 53
    return-void
.end method

.method public setIpConfiguration(Landroid/net/IpConfiguration;)V
    .locals 0
    .param p1, "ipConfiguration"    # Landroid/net/IpConfiguration;

    .prologue
    .line 60
    iput-object p1, p0, Landroid/net/VivoArpConfiguration;->ipConfiguration:Landroid/net/IpConfiguration;

    .line 61
    return-void
.end method

.method public setVivoDhcpHistoryLeaseTime(J)V
    .locals 1
    .param p1, "vivoDhcpHistoryLeaseTime"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Landroid/net/VivoArpConfiguration;->vivoDhcpHistoryLeaseTime:J

    .line 68
    return-void
.end method
