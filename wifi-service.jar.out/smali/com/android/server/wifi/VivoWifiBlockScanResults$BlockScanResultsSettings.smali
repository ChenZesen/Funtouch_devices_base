.class Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;
.super Ljava/lang/Object;
.source "VivoWifiBlockScanResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiBlockScanResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockScanResultsSettings"
.end annotation


# instance fields
.field private blockTime:J

.field private firstScanFreqs:Ljava/lang/String;

.field private lock:Ljava/lang/Object;

.field private packageName:Ljava/lang/String;

.field private scanResultsTimeout:J

.field private secondScanFreq:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiBlockScanResults;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/VivoWifiBlockScanResults;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 248
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->this$0:Lcom/android/server/wifi/VivoWifiBlockScanResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->packageName:Ljava/lang/String;

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->lock:Ljava/lang/Object;

    .line 251
    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->scanResultsTimeout:J

    .line 252
    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->blockTime:J

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->firstScanFreqs:Ljava/lang/String;

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->secondScanFreq:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/VivoWifiBlockScanResults;Lcom/android/server/wifi/VivoWifiBlockScanResults$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/VivoWifiBlockScanResults;
    .param p2, "x1"    # Lcom/android/server/wifi/VivoWifiBlockScanResults$1;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;-><init>(Lcom/android/server/wifi/VivoWifiBlockScanResults;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->firstScanFreqs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->secondScanFreq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->scanResultsTimeout:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->blockTime:J

    return-wide v0
.end method


# virtual methods
.method public BlockScanResultsSettings()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->packageName:Ljava/lang/String;

    .line 258
    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->scanResultsTimeout:J

    .line 259
    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->blockTime:J

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->firstScanFreqs:Ljava/lang/String;

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->secondScanFreq:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public BlockScanResultsSettings(Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;

    .prologue
    .line 265
    iget-object v0, p1, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->packageName:Ljava/lang/String;

    .line 266
    iget-object v0, p1, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->lock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->lock:Ljava/lang/Object;

    .line 267
    iget-wide v0, p1, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->scanResultsTimeout:J

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->scanResultsTimeout:J

    .line 268
    iget-wide v0, p1, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->blockTime:J

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->blockTime:J

    .line 269
    iget-object v0, p1, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->firstScanFreqs:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->firstScanFreqs:Ljava/lang/String;

    .line 270
    iget-object v0, p1, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->secondScanFreq:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->secondScanFreq:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public dumpSettings()V
    .locals 4

    .prologue
    .line 294
    const-string v0, "VivoWifiBlockScanResults"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->lock:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->scanResultsTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->blockTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->firstScanFreqs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->secondScanFreq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public setBlockTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 282
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->blockTime:J

    .line 283
    return-void
.end method

.method public setFirstScanFreqs(Ljava/lang/String;)V
    .locals 0
    .param p1, "freqs"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->firstScanFreqs:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->packageName:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setScanResultsTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 278
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->scanResultsTimeout:J

    .line 279
    return-void
.end method

.method public setSecondScanFreq(Ljava/lang/String;)V
    .locals 0
    .param p1, "freqs"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$BlockScanResultsSettings;->secondScanFreq:Ljava/lang/String;

    .line 291
    return-void
.end method
