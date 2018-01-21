.class public Lcom/vivo/common/provider/Weather$CityWeatherEntry;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/provider/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CityWeatherEntry"
.end annotation


# instance fields
.field private entryAreaId:Ljava/lang/String;

.field private entryBackground:I

.field private entryCity:Ljava/lang/String;

.field private entryCondition:Ljava/lang/String;

.field private entryCurrentTemp:Ljava/lang/String;

.field private entryHighTemp:Ljava/lang/String;

.field private entryIcon:I

.field private entryLowTemp:Ljava/lang/String;

.field private entryRealTime:Ljava/lang/String;

.field private entrySunrise:Ljava/lang/String;

.field private entrySunset:Ljava/lang/String;

.field private entryWindDir:Ljava/lang/String;

.field private entryWindPow:Ljava/lang/String;

.field final synthetic this$0:Lcom/vivo/common/provider/Weather;


# direct methods
.method public constructor <init>(Lcom/vivo/common/provider/Weather;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1718
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->this$0:Lcom/vivo/common/provider/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1719
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryCity:Ljava/lang/String;

    .line 1720
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryAreaId:Ljava/lang/String;

    .line 1721
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryCondition:Ljava/lang/String;

    .line 1722
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryCurrentTemp:Ljava/lang/String;

    .line 1723
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryHighTemp:Ljava/lang/String;

    .line 1724
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryLowTemp:Ljava/lang/String;

    .line 1725
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryWindPow:Ljava/lang/String;

    .line 1726
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryWindDir:Ljava/lang/String;

    .line 1727
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entrySunrise:Ljava/lang/String;

    .line 1728
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entrySunset:Ljava/lang/String;

    .line 1729
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryRealTime:Ljava/lang/String;

    .line 1730
    iput v1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryBackground:I

    .line 1731
    iput v1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryIcon:I

    return-void
.end method


# virtual methods
.method public getAreaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryAreaId:Ljava/lang/String;

    return-object v0
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 1807
    iget v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryBackground:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryCurrentTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getHighTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryHighTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 1810
    iget v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryIcon:I

    return v0
.end method

.method public getLowTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryLowTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getRealTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryRealTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSunrise()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entrySunrise:Ljava/lang/String;

    return-object v0
.end method

.method public getSunset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entrySunset:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryWindDir:Ljava/lang/String;

    return-object v0
.end method

.method public getWindPow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryWindPow:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "areaId"    # Ljava/lang/String;

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryAreaId:Ljava/lang/String;

    .line 1738
    return-void
.end method

.method public setBackground(I)V
    .locals 0
    .param p1, "bg"    # I

    .prologue
    .line 1767
    iput p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryBackground:I

    .line 1768
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryCity:Ljava/lang/String;

    .line 1735
    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryCondition:Ljava/lang/String;

    .line 1741
    return-void
.end method

.method public setCurrentTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 1743
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryCurrentTemp:Ljava/lang/String;

    .line 1744
    return-void
.end method

.method public setHighTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "high"    # Ljava/lang/String;

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryHighTemp:Ljava/lang/String;

    .line 1747
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 1770
    iput p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryIcon:I

    .line 1771
    return-void
.end method

.method public setLowTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "low"    # Ljava/lang/String;

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryLowTemp:Ljava/lang/String;

    .line 1750
    return-void
.end method

.method public setRealTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 1764
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryRealTime:Ljava/lang/String;

    .line 1765
    return-void
.end method

.method public setSunrise(Ljava/lang/String;)V
    .locals 0
    .param p1, "sunrise"    # Ljava/lang/String;

    .prologue
    .line 1758
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entrySunrise:Ljava/lang/String;

    .line 1759
    return-void
.end method

.method public setSunset(Ljava/lang/String;)V
    .locals 0
    .param p1, "sunset"    # Ljava/lang/String;

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entrySunset:Ljava/lang/String;

    .line 1762
    return-void
.end method

.method public setWindDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "windDir"    # Ljava/lang/String;

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryWindDir:Ljava/lang/String;

    .line 1756
    return-void
.end method

.method public setWindPow(Ljava/lang/String;)V
    .locals 0
    .param p1, "windPower"    # Ljava/lang/String;

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->entryWindPow:Ljava/lang/String;

    .line 1753
    return-void
.end method
