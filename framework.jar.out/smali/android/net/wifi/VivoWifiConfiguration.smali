.class public Landroid/net/wifi/VivoWifiConfiguration;
.super Ljava/lang/Object;
.source "VivoWifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/VivoWifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VivoWifiConfiguration"


# instance fields
.field private vivoAccessPointContact:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vivoConfigInitTime:I

.field private vivoConnectedCount:I

.field private vivoDhcpHistoryLeaseTime:J

.field private vivoIsInRange:Z

.field private vivoIsLastEnableAP:Z

.field private vivoLastAutoEnabledTime:I

.field private vivoLastConnectedTime:I

.field private vivoLatitude:D

.field private vivoLongitude:D

.field private vivoNeedAutoJoinScan:Z

.field private vivoNoInternetAccessTime:I

.field private vivoNoInternetState:I

.field private vivoPoorRssiState:I

.field private vivoPoorRssiTimeMillis:J

.field private vivoPoorRssiValue:I

.field private vivoValid:Z

.field private vivoWifiBeaconTimeoutRssiValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Landroid/net/wifi/VivoWifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/VivoWifiConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/VivoWifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v2, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConnectedCount:I

    .line 122
    iput v2, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConfigInitTime:I

    .line 123
    iput v2, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastConnectedTime:I

    .line 124
    iput v2, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastAutoEnabledTime:I

    .line 125
    iput v2, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetAccessTime:I

    .line 126
    iput-wide v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLatitude:D

    .line 127
    iput-wide v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLongitude:D

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsInRange:Z

    .line 129
    iput-boolean v2, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsLastEnableAP:Z

    .line 130
    iput v2, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiState:I

    .line 131
    const/16 v0, -0x7f

    iput v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiValue:I

    .line 132
    const-wide v0, -0x3fa0400000000000L    # -127.0

    iput-wide v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoWifiBeaconTimeoutRssiValue:D

    .line 133
    iput-wide v4, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiTimeMillis:J

    .line 134
    iput v2, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetState:I

    .line 135
    iput-boolean v2, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNeedAutoJoinScan:Z

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    .line 137
    iput-wide v4, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoDhcpHistoryLeaseTime:J

    .line 138
    iput-boolean v2, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoValid:Z

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/VivoWifiConfiguration;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/VivoWifiConfiguration;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/VivoWifiConfiguration;-><init>()V

    .line 143
    if-eqz p1, :cond_1

    .line 144
    iget v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoConnectedCount:I

    iput v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConnectedCount:I

    .line 145
    iget v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoConfigInitTime:I

    iput v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConfigInitTime:I

    .line 146
    iget v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastConnectedTime:I

    iput v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastConnectedTime:I

    .line 147
    iget v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastAutoEnabledTime:I

    iput v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastAutoEnabledTime:I

    .line 148
    iget v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetAccessTime:I

    iput v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetAccessTime:I

    .line 149
    iget-wide v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoLatitude:D

    iput-wide v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLatitude:D

    .line 150
    iget-wide v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoLongitude:D

    iput-wide v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLongitude:D

    .line 151
    iget-boolean v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsInRange:Z

    iput-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsInRange:Z

    .line 152
    iget-boolean v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsLastEnableAP:Z

    iput-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsLastEnableAP:Z

    .line 153
    iget v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetState:I

    iput v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetState:I

    .line 154
    iget-boolean v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoNeedAutoJoinScan:Z

    iput-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNeedAutoJoinScan:Z

    .line 155
    iget-object v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    .line 157
    iget-object v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 159
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoDhcpHistoryLeaseTime:J

    .line 160
    iget-boolean v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoValid:Z

    iput-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoValid:Z

    .line 161
    iget v0, p1, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiState:I

    iput v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiState:I

    .line 163
    :cond_1
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/VivoWifiConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConnectedCount:I

    return p1
.end method

.method static synthetic access$1002(Landroid/net/wifi/VivoWifiConfiguration;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNeedAutoJoinScan:Z

    return p1
.end method

.method static synthetic access$102(Landroid/net/wifi/VivoWifiConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConfigInitTime:I

    return p1
.end method

.method static synthetic access$1102(Landroid/net/wifi/VivoWifiConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiState:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/wifi/VivoWifiConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastConnectedTime:I

    return p1
.end method

.method static synthetic access$302(Landroid/net/wifi/VivoWifiConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastAutoEnabledTime:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/wifi/VivoWifiConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetAccessTime:I

    return p1
.end method

.method static synthetic access$502(Landroid/net/wifi/VivoWifiConfiguration;D)D
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # D

    .prologue
    .line 33
    iput-wide p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLatitude:D

    return-wide p1
.end method

.method static synthetic access$602(Landroid/net/wifi/VivoWifiConfiguration;D)D
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # D

    .prologue
    .line 33
    iput-wide p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLongitude:D

    return-wide p1
.end method

.method static synthetic access$702(Landroid/net/wifi/VivoWifiConfiguration;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsInRange:Z

    return p1
.end method

.method static synthetic access$802(Landroid/net/wifi/VivoWifiConfiguration;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsLastEnableAP:Z

    return p1
.end method

.method static synthetic access$902(Landroid/net/wifi/VivoWifiConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/VivoWifiConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetState:I

    return p1
.end method


# virtual methods
.method public addVivoAccessPointContact(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 428
    iget-object v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public getVivoAccessPointContact(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 446
    iget-object v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getVivoAccessPointContact()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVivoAccessPointContactSize()I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getVivoConfigInitTime()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConfigInitTime:I

    return v0
.end method

.method public getVivoConnectedCount()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConnectedCount:I

    return v0
.end method

.method public getVivoDhcpHistoryLeaseTime()J
    .locals 2

    .prologue
    .line 464
    iget-wide v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoDhcpHistoryLeaseTime:J

    return-wide v0
.end method

.method public getVivoIsInRange()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsInRange:Z

    return v0
.end method

.method public getVivoIsLastEnableAP()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsLastEnableAP:Z

    return v0
.end method

.method public getVivoLastAutoEnabledTime()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastAutoEnabledTime:I

    return v0
.end method

.method public getVivoLastConnectedTime()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastConnectedTime:I

    return v0
.end method

.method public getVivoLatitude()D
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLatitude:D

    return-wide v0
.end method

.method public getVivoLongitude()D
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLongitude:D

    return-wide v0
.end method

.method public getVivoNeedAutoJoinScan()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNeedAutoJoinScan:Z

    return v0
.end method

.method public getVivoNoInternetAccessTime()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetAccessTime:I

    return v0
.end method

.method public getVivoNoInternetState()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetState:I

    return v0
.end method

.method public getVivoPoorRssiState()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiState:I

    return v0
.end method

.method public getVivoPoorRssiTimeMillis()J
    .locals 2

    .prologue
    .line 404
    iget-wide v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiTimeMillis:J

    return-wide v0
.end method

.method public getVivoPoorRssiValue()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiValue:I

    return v0
.end method

.method public getVivoWifiBeaconTimeoutRssiValue()D
    .locals 2

    .prologue
    .line 392
    iget-wide v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoWifiBeaconTimeoutRssiValue:D

    return-wide v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoValid:Z

    return v0
.end method

.method public removeVivoAccessPointContact(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public setVivoAccessPointContact(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    .line 423
    return-void
.end method

.method public setVivoConfigInitTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 253
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConfigInitTime:I

    .line 254
    return-void
.end method

.method public setVivoConnectedCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 241
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConnectedCount:I

    .line 242
    return-void
.end method

.method public setVivoDhcpHistoryLeaseTime(J)V
    .locals 1
    .param p1, "timeMillis"    # J

    .prologue
    .line 458
    iput-wide p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoDhcpHistoryLeaseTime:J

    .line 459
    return-void
.end method

.method public setVivoIsInRange(Z)V
    .locals 0
    .param p1, "inRange"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsInRange:Z

    .line 338
    return-void
.end method

.method public setVivoIsLastEnableAP(Z)V
    .locals 0
    .param p1, "isLastEnableAP"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsLastEnableAP:Z

    .line 350
    return-void
.end method

.method public setVivoLastAutoEnabledTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 277
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastAutoEnabledTime:I

    .line 278
    return-void
.end method

.method public setVivoLastConnectedTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 265
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastConnectedTime:I

    .line 266
    return-void
.end method

.method public setVivoLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 313
    iput-wide p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLatitude:D

    .line 314
    return-void
.end method

.method public setVivoLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 325
    iput-wide p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLongitude:D

    .line 326
    return-void
.end method

.method public setVivoNeedAutoJoinScan(Z)V
    .locals 0
    .param p1, "needAutoJoinScan"    # Z

    .prologue
    .line 410
    iput-boolean p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNeedAutoJoinScan:Z

    .line 411
    return-void
.end method

.method public setVivoNoInternetAccessTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 289
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetAccessTime:I

    .line 290
    return-void
.end method

.method public setVivoNoInternetState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 301
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetState:I

    .line 302
    return-void
.end method

.method public setVivoPoorRssiState(I)V
    .locals 0
    .param p1, "poorRssiState"    # I

    .prologue
    .line 362
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiState:I

    .line 363
    return-void
.end method

.method public setVivoPoorRssiTimeMillis(J)V
    .locals 1
    .param p1, "timeMillis"    # J

    .prologue
    .line 398
    iput-wide p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiTimeMillis:J

    .line 399
    return-void
.end method

.method public setVivoPoorRssiValue(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 374
    iput p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiValue:I

    .line 375
    return-void
.end method

.method public setVivoValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    .line 470
    iput-boolean p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoValid:Z

    .line 471
    return-void
.end method

.method public setVivoWifiBeaconTimeoutRssiValue(D)V
    .locals 1
    .param p1, "count"    # D

    .prologue
    .line 386
    iput-wide p1, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoWifiBeaconTimeoutRssiValue:D

    .line 387
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v3, "sbuf":Ljava/lang/StringBuilder;
    const-string v4, "VivoWifiConfiguration: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v4, " vivoConnectedCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConnectedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vivoConfigInitTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConfigInitTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    const-string v4, " vivoLastConnectedTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastConnectedTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vivoLastAutoEnabledTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastAutoEnabledTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    const-string v4, " vivoNoInternetAccessTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetAccessTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vivoLatitude: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLatitude:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    const-string v4, " vivoLongitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLongitude:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vivoIsInRange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsInRange:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    const-string v4, " vivoIsLastEnableAP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsLastEnableAP:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    const-string v4, " vivoNoInternetState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vivoNeedAutoJoinScan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNeedAutoJoinScan:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    const-string v4, " vivoPoorRssiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    iget-object v4, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 179
    iget-object v4, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoAccessPointContact:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 181
    .local v0, "choice":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 182
    const-string v4, " apContact: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 188
    .end local v0    # "choice":Ljava/lang/Integer;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string v4, " vivoValid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoValid:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConnectedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoConfigInitTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastConnectedTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLastAutoEnabledTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetAccessTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-wide v4, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLatitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 205
    iget-wide v4, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoLongitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 206
    iget-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsInRange:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoIsLastEnableAP:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-boolean v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoNeedAutoJoinScan:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return-void

    :cond_0
    move v0, v2

    .line 206
    goto :goto_0

    :cond_1
    move v0, v2

    .line 207
    goto :goto_1

    :cond_2
    move v1, v2

    .line 209
    goto :goto_2
.end method
