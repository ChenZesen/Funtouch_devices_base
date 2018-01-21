.class public final Lcom/vivo/common/provider/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/provider/Weather$CityWeatherEntry;,
        Lcom/vivo/common/provider/Weather$City;,
        Lcom/vivo/common/provider/Weather$Condition;,
        Lcom/vivo/common/provider/Weather$AutoUpdate;,
        Lcom/vivo/common/provider/Weather$UsualCity;,
        Lcom/vivo/common/provider/Weather$Localweather;,
        Lcom/vivo/common/provider/Weather$WeatherIndex;,
        Lcom/vivo/common/provider/Weather$WeatherAlert;,
        Lcom/vivo/common/provider/Weather$CityAQI;,
        Lcom/vivo/common/provider/Weather$HourData;,
        Lcom/vivo/common/provider/Weather$CurrentCity;,
        Lcom/vivo/common/provider/Weather$CityOrderNew;,
        Lcom/vivo/common/provider/Weather$CityOrder;,
        Lcom/vivo/common/provider/Weather$WeatherMessageNew;,
        Lcom/vivo/common/provider/Weather$WeatherMessage;,
        Lcom/vivo/common/provider/Weather$WeathersColumns;,
        Lcom/vivo/common/provider/Weather$Location;,
        Lcom/vivo/common/provider/Weather$Launcherweather;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_CHANGE:Ljava/lang/String; = "com.vivo.weather.data.change"

.field public static final ACTION_UPDATE_ALARM:Ljava/lang/String; = "com.vivo.weather.update.ALARM_ALERT"

.field public static final AUTHORITY:Ljava/lang/String; = "com.vivo.weather.provider"

.field public static final AUTHORITY_CITY:Ljava/lang/String; = "com.vivo.weather.provider.city"

.field public static final CITYAQI_INDEX_AQI:I = 0x2

.field public static final CITYAQI_INDEX_CITY:I = 0x1

.field public static final CITYAQI_INDEX_CO:I = 0x7

.field public static final CITYAQI_INDEX_ID:I = 0x0

.field public static final CITYAQI_INDEX_LEVEL:I = 0x9

.field public static final CITYAQI_INDEX_NO2:I = 0x4

.field public static final CITYAQI_INDEX_O3:I = 0x6

.field public static final CITYAQI_INDEX_PM10:I = 0x8

.field public static final CITYAQI_INDEX_PM25:I = 0x3

.field public static final CITYAQI_INDEX_PUBLISHER:I = 0xb

.field public static final CITYAQI_INDEX_PUBLISHTIME:I = 0xa

.field public static final CITYAQI_INDEX_SO2:I = 0x5

.field public static CITYAQI_PROJECTION:[Ljava/lang/String; = null

.field public static final CITYORDER_INDEX_ADD:I = 0x6

.field public static final CITYORDER_INDEX_CITY:I = 0x1

.field public static final CITYORDER_INDEX_CONDITION_REAL:I = 0x7

.field public static final CITYORDER_INDEX_CURRENTDATE:I = 0xc

.field public static final CITYORDER_INDEX_HIGH:I = 0x9

.field public static final CITYORDER_INDEX_ID:I = 0x0

.field public static final CITYORDER_INDEX_INTERVAL:I = 0xb

.field public static final CITYORDER_INDEX_LOCAL:I = 0x5

.field public static final CITYORDER_INDEX_LOW:I = 0x8

.field public static final CITYORDER_INDEX_ORDERID:I = 0x4

.field public static final CITYORDER_INDEX_RELEASETIME:I = 0x3

.field public static final CITYORDER_INDEX_TEMP:I = 0xa

.field public static final CITYORDER_INDEX_UPDATETIME:I = 0x2

.field public static CITYORDER_NEW_PROJECTION:[Ljava/lang/String; = null

.field public static CITYORDER_PROJECTION:[Ljava/lang/String; = null

.field public static final CITY_INDEX_CITY:I = 0x6

.field public static final CITY_INDEX_CITYID:I = 0x4

.field public static final CITY_INDEX_CITYNAME:I = 0x5

.field public static final CITY_INDEX_ID:I = 0x0

.field public static final CITY_INDEX_PROVINCE:I = 0x3

.field public static final CITY_INDEX_PROVINCEID:I = 0x1

.field public static final CITY_INDEX_PROVINCENAME:I = 0x2

.field public static CITY_PROJECTION:[Ljava/lang/String; = null

.field public static final CLOUDY_STATE_LIVE:I = 0x3

.field public static final CONDITION_INDEX_CLOUDY:I = 0x15

.field public static final CONDITION_INDEX_FOG:I = 0x17

.field public static final CONDITION_INDEX_FREEZING:I = 0x1

.field public static final CONDITION_INDEX_ICE:I = 0x2

.field public static final CONDITION_INDEX_ID:I = 0x0

.field public static final CONDITION_INDEX_RAIN:I = 0x4

.field public static final CONDITION_INDEX_RAINBIG:I = 0x9

.field public static final CONDITION_INDEX_RAINMEDIUM:I = 0xa

.field public static final CONDITION_INDEX_RAINSMALL:I = 0xc

.field public static final CONDITION_INDEX_RAINSNOW:I = 0x3

.field public static final CONDITION_INDEX_RAINSTORMBIG:I = 0x6

.field public static final CONDITION_INDEX_RAINSTORMMEDIUM:I = 0x7

.field public static final CONDITION_INDEX_RAINSTORMSMALL:I = 0x8

.field public static final CONDITION_INDEX_RAINTHUNDER:I = 0xb

.field public static final CONDITION_INDEX_SANDMEDIUM:I = 0x12

.field public static final CONDITION_INDEX_SANDSMALL:I = 0x13

.field public static final CONDITION_INDEX_SANDSTORM:I = 0x11

.field public static final CONDITION_INDEX_SNOW:I = 0x5

.field public static final CONDITION_INDEX_SNOWBIG:I = 0xe

.field public static final CONDITION_INDEX_SNOWMEDIUM:I = 0xf

.field public static final CONDITION_INDEX_SNOWSMALL:I = 0x10

.field public static final CONDITION_INDEX_SNOWSTORE:I = 0xd

.field public static final CONDITION_INDEX_SUN:I = 0x16

.field public static final CONDITION_INDEX_YIN:I = 0x14

.field public static CONDITION_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_CITY:Landroid/net/Uri;

.field public static final CURRENTCITY_INDEX_ID:I = 0x0

.field public static final CURRENTCITY_INDEX_POSITION:I = 0x1

.field public static final CURRENTCITY_INDEX_POSITION2:I = 0x2

.field public static CURRENTCITY_PROJECTION:[Ljava/lang/String; = null

.field public static final DEFAULT_UPDATEFREQUENCY:I = 0x3

.field public static final FOG_STATE_LIVE:I = 0x5

.field public static final HOURDATA_COUNT:I = 0x18

.field public static final HOURDATA_INDEX_CITY:I = 0x1

.field public static final HOURDATA_INDEX_COUNT:I = 0x5

.field public static final HOURDATA_INDEX_ID:I = 0x0

.field public static final HOURDATA_INDEX_PIC:I = 0x4

.field public static final HOURDATA_INDEX_TEMP:I = 0x3

.field public static final HOURDATA_INDEX_TIME:I = 0x2

.field public static HOURDATA_PROJECTION:[Ljava/lang/String; = null

.field public static final KEY_AUTOUPDATE:Ljava/lang/String; = "weather_update"

.field public static final KEY_AUTOUPDATETIME:Ljava/lang/String; = "weather_auto_update_time"

.field public static final KEY_FIRSTBOOT:Ljava/lang/String; = "weather_firstboot"

.field public static final KEY_LOCATEFAIL_COUNT:Ljava/lang/String; = "weather_local_fail_count"

.field public static final KEY_UPDATEFREQUENCY:Ljava/lang/String; = "weather_updatefrequency"

.field public static final LAUNCHERWEATHER_INDEX_ID:I = 0x0

.field public static final LAUNCHERWEATHER_INDEX_STATE:I = 0x1

.field public static LAUNCHERWEATHER_PROJECTION:[Ljava/lang/String; = null

.field public static final LOCALWEATHER_INDEX_ID:I = 0x0

.field public static final LOCALWEATHER_INDEX_STATE:I = 0x1

.field public static LOCALWEATHER_PROJECTION:[Ljava/lang/String; = null

.field public static final LOCATION_INDEX_CITY:I = 0x2

.field public static final LOCATION_INDEX_ID:I = 0x0

.field public static final LOCATION_INDEX_LAC:I = 0x1

.field public static LOCATION_PROJECTION:[Ljava/lang/String; = null

.field public static final RAINTHUNDER_STATE_LIVE:I = 0x0

.field public static final RAIN_STATE_LIVE:I = 0x1

.field public static final SNOW_STATE_LIVE:I = 0x2

.field public static final SUN_STATE_LIVE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BBKWeather-frm"

.field public static TIMEGAP_DEFAULT:J = 0x0L

.field private static final TIMEGAP_FORMAL:J = 0x1c20L

.field private static final TIMEGAP_TEST:J = 0x258L

.field private static UPDATE_STATE_DEFAULT:I = 0x0

.field public static final UPDATE_STATE_FORMAL:I = 0x3

.field public static final UPDATE_STATE_TEST:I = 0x2

.field public static URL_STATE_DEFAULT:I = 0x0

.field public static final URL_STATE_FORMAL:I = 0x1

.field public static final URL_STATE_TEST:I = 0x0

.field public static final URL_WEATHER_DEFAULT:Ljava/lang/String; = "http://weather.bbk.com:15000/getvivoweather/"

.field private static final URL_WEATHER_FORMAL:Ljava/lang/String; = "http://weather.bbk.com:15000/getvivoweather/"

.field public static final WEATHERINDEX_INDEX_CARWASH:I = 0x3

.field public static final WEATHERINDEX_INDEX_CITY:I = 0x1

.field public static final WEATHERINDEX_INDEX_DATE:I = 0x2

.field public static final WEATHERINDEX_INDEX_DRESS:I = 0x4

.field public static final WEATHERINDEX_INDEX_ID:I = 0x0

.field public static final WEATHERINDEX_INDEX_RAYS:I = 0x7

.field public static final WEATHERINDEX_INDEX_SICK:I = 0x5

.field public static final WEATHERINDEX_INDEX_SPORTS:I = 0x6

.field public static WEATHERINDEX_PROJECTION:[Ljava/lang/String; = null

.field public static final WEATHERVERSION_ROM_1_0:I = 0x1

.field public static final WEATHERVERSION_ROM_1_5:I = 0x2

.field public static final WEATHERVERSION_ROM_2_0:I = 0x3e8

.field public static final WEATHERVERSION_ROM_2_5_1:I = 0x7d0

.field public static final WEATHERVERSION_ROM_3_0:I = 0xbb8

.field public static final WEATHERVERSION_ROM_3_5:I = 0xfa0

.field public static final WEATHERVERSION_ROM_4_0:I = 0x1388

.field public static final WEATHERVERSION_ROM_4_5:I = 0x1770

.field public static final WEATHERVERSION_ROM_5_0:I = 0x1b58

.field public static final WEATHER_INDEX_BODYTEMP:I = 0x9

.field public static final WEATHER_INDEX_CITY:I = 0x1

.field public static final WEATHER_INDEX_CONDITION:I = 0x4

.field public static final WEATHER_INDEX_DATE:I = 0x2

.field public static final WEATHER_INDEX_DIRECTION:I = 0x5

.field public static final WEATHER_INDEX_FEELSLIKE:I = 0xc

.field public static final WEATHER_INDEX_FORECAST:I = 0xa

.field public static final WEATHER_INDEX_HIGH:I = 0x8

.field public static final WEATHER_INDEX_HUMIDITY:I = 0xb

.field public static final WEATHER_INDEX_ID:I = 0x0

.field public static final WEATHER_INDEX_LOW:I = 0x7

.field public static final WEATHER_INDEX_WEEK:I = 0x3

.field public static final WEATHER_INDEX_WIND:I = 0x6

.field public static WEATHER_NEW_PROJECTION:[Ljava/lang/String;

.field public static WEATHER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRom1_5:Z

.field private mIsRom2_0:Z

.field private mIsRom3_0:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mWeatherVersionCode:I

.field private str_CLOUDY:Ljava/lang/String;

.field private str_FOG:Ljava/lang/String;

.field private str_FREEZING:Ljava/lang/String;

.field private str_ICE:Ljava/lang/String;

.field private str_RAIN:Ljava/lang/String;

.field private str_RAINBIG:Ljava/lang/String;

.field private str_RAINMEDIUM:Ljava/lang/String;

.field private str_RAINSMALL:Ljava/lang/String;

.field private str_RAINSNOW:Ljava/lang/String;

.field private str_RAINSTORMBIG:Ljava/lang/String;

.field private str_RAINSTORMMEDIUM:Ljava/lang/String;

.field private str_RAINSTORMSMALL:Ljava/lang/String;

.field private str_RAINTHUNDER:Ljava/lang/String;

.field private str_SANDMEDIUM:Ljava/lang/String;

.field private str_SANDSMALL:Ljava/lang/String;

.field private str_SANDSTORM:Ljava/lang/String;

.field private str_SNOW:Ljava/lang/String;

.field private str_SNOWBIG:Ljava/lang/String;

.field private str_SNOWMEDIUM:Ljava/lang/String;

.field private str_SNOWSMALL:Ljava/lang/String;

.field private str_SNOWSTORE:Ljava/lang/String;

.field private str_SUN:Ljava/lang/String;

.field private str_YIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    const-string v0, "content://com.vivo.weather.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Weather;->CONTENT_URI:Landroid/net/Uri;

    .line 43
    const-string v0, "content://com.vivo.weather.provider.city"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Weather;->CONTENT_URI_CITY:Landroid/net/Uri;

    .line 49
    sput v3, Lcom/vivo/common/provider/Weather;->URL_STATE_DEFAULT:I

    .line 52
    const-wide/16 v0, 0x1c20

    sput-wide v0, Lcom/vivo/common/provider/Weather;->TIMEGAP_DEFAULT:J

    .line 55
    sput v6, Lcom/vivo/common/provider/Weather;->UPDATE_STATE_DEFAULT:I

    .line 109
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "lac"

    aput-object v1, v0, v3

    const-string v1, "city"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vivo/common/provider/Weather;->LOCATION_PROJECTION:[Ljava/lang/String;

    .line 111
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/common/provider/Weather;->LAUNCHERWEATHER_PROJECTION:[Ljava/lang/String;

    .line 554
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "city"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "week"

    aput-object v1, v0, v6

    const-string v1, "condition"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "direction"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wind"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "low"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "high"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bodytemp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/provider/Weather;->WEATHER_PROJECTION:[Ljava/lang/String;

    .line 560
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "city"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "week"

    aput-object v1, v0, v6

    const-string v1, "condition"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "direction"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wind"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "low"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "high"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bodytemp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "forecast"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "humidity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "feelslike"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/provider/Weather;->WEATHER_NEW_PROJECTION:[Ljava/lang/String;

    .line 569
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "city"

    aput-object v1, v0, v3

    const-string v1, "updatetime"

    aput-object v1, v0, v5

    const-string v1, "releasetime"

    aput-object v1, v0, v6

    const-string v1, "orderid"

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/common/provider/Weather;->CITYORDER_PROJECTION:[Ljava/lang/String;

    .line 573
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "city"

    aput-object v1, v0, v3

    const-string v1, "updatetime"

    aput-object v1, v0, v5

    const-string v1, "releasetime"

    aput-object v1, v0, v6

    const-string v1, "orderid"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "local"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "condition_real"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "low"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "high"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "temp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "interval"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "currentdate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/provider/Weather;->CITYORDER_NEW_PROJECTION:[Ljava/lang/String;

    .line 580
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "position"

    aput-object v1, v0, v3

    const-string v1, "position2"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vivo/common/provider/Weather;->CURRENTCITY_PROJECTION:[Ljava/lang/String;

    .line 584
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "city"

    aput-object v1, v0, v3

    const-string v1, "time"

    aput-object v1, v0, v5

    const-string v1, "temp"

    aput-object v1, v0, v6

    const-string v1, "pic"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/provider/Weather;->HOURDATA_PROJECTION:[Ljava/lang/String;

    .line 588
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "city"

    aput-object v1, v0, v3

    const-string v1, "aqi"

    aput-object v1, v0, v5

    const-string v1, "pm25"

    aput-object v1, v0, v6

    const-string v1, "no2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "so2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "o3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "co"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pm10"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "level"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "publish_time"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "publisher"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/provider/Weather;->CITYAQI_PROJECTION:[Ljava/lang/String;

    .line 595
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "city"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "carwash"

    aput-object v1, v0, v6

    const-string v1, "dress"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sick"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sports"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rays"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/provider/Weather;->WEATHERINDEX_PROJECTION:[Ljava/lang/String;

    .line 601
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "lbsstate"

    aput-object v1, v0, v3

    const-string v1, "doubleclock"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vivo/common/provider/Weather;->LOCALWEATHER_PROJECTION:[Ljava/lang/String;

    .line 605
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "freezing"

    aput-object v1, v0, v3

    const-string v1, "ice"

    aput-object v1, v0, v5

    const-string v1, "rainsnow"

    aput-object v1, v0, v6

    const-string v1, "rain"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "snow"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rainstormbig"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rainstormmedium"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rainstormsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rainbig"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rainmedium"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rainthunder"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "rainsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "snowstore"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "snowbig"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "snowmedium"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "snowsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sandstorm"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sandmedium"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sandsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "yin"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "cloudy"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sun"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "fog"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/provider/Weather;->CONDITION_PROJECTION:[Ljava/lang/String;

    .line 615
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "provinceid"

    aput-object v1, v0, v3

    const-string v1, "provincename"

    aput-object v1, v0, v5

    const-string v1, "province"

    aput-object v1, v0, v6

    const-string v1, "cityid"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cityname"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "city"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/provider/Weather;->CITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/common/provider/Weather;->mWeatherVersionCode:I

    .line 36
    iput-boolean v1, p0, Lcom/vivo/common/provider/Weather;->mIsRom1_5:Z

    .line 37
    iput-boolean v1, p0, Lcom/vivo/common/provider/Weather;->mIsRom2_0:Z

    .line 38
    iput-boolean v1, p0, Lcom/vivo/common/provider/Weather;->mIsRom3_0:Z

    .line 717
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_FREEZING:Ljava/lang/String;

    .line 718
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_ICE:Ljava/lang/String;

    .line 719
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINSNOW:Ljava/lang/String;

    .line 720
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAIN:Ljava/lang/String;

    .line 721
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SNOW:Ljava/lang/String;

    .line 722
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINSTORMBIG:Ljava/lang/String;

    .line 723
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINSTORMMEDIUM:Ljava/lang/String;

    .line 724
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINSTORMSMALL:Ljava/lang/String;

    .line 725
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINBIG:Ljava/lang/String;

    .line 726
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINMEDIUM:Ljava/lang/String;

    .line 727
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINTHUNDER:Ljava/lang/String;

    .line 728
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINSMALL:Ljava/lang/String;

    .line 729
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SNOWSTORE:Ljava/lang/String;

    .line 730
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SNOWBIG:Ljava/lang/String;

    .line 731
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SNOWMEDIUM:Ljava/lang/String;

    .line 732
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SNOWSMALL:Ljava/lang/String;

    .line 733
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SANDSTORM:Ljava/lang/String;

    .line 734
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SANDMEDIUM:Ljava/lang/String;

    .line 735
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SANDSMALL:Ljava/lang/String;

    .line 736
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_YIN:Ljava/lang/String;

    .line 737
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_CLOUDY:Ljava/lang/String;

    .line 738
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SUN:Ljava/lang/String;

    .line 739
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_FOG:Ljava/lang/String;

    .line 743
    iput-object p1, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    .line 744
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    .line 745
    invoke-direct {p0}, Lcom/vivo/common/provider/Weather;->init()V

    .line 746
    return-void
.end method

.method private getRealTime(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 22
    .param p1, "localTime"    # Ljava/lang/String;
    .param p2, "internetTime"    # Ljava/lang/String;
    .param p3, "invalid"    # I

    .prologue
    .line 1411
    const-wide/16 v16, 0x0

    .line 1412
    .local v16, "realTimeMilles":J
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1413
    .local v4, "format":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMdd"

    invoke-direct {v2, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1414
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v11, ""

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_1

    .line 1415
    :cond_0
    const-string v11, "BBKWeather-frm"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getRealTime err localTime = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",internetTime = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",invalid = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v18, v16

    .line 1431
    .end local v16    # "realTimeMilles":J
    .local v18, "realTimeMilles":J
    :goto_0
    return-wide v18

    .line 1420
    .end local v18    # "realTimeMilles":J
    .restart local v16    # "realTimeMilles":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1422
    .local v14, "now":J
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 1423
    .local v10, "localTimeDate":Ljava/util/Date;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1424
    .local v5, "internetTimeDate":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 1425
    .local v12, "localTimeMilles":J
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 1426
    .local v6, "internetTimeMilles":J
    sub-long v8, v14, v12

    .line 1427
    .local v8, "localDiff":J
    add-long v16, v6, v8

    .end local v5    # "internetTimeDate":Ljava/util/Date;
    .end local v6    # "internetTimeMilles":J
    .end local v8    # "localDiff":J
    .end local v10    # "localTimeDate":Ljava/util/Date;
    .end local v12    # "localTimeMilles":J
    :goto_1
    move-wide/from16 v18, v16

    .line 1431
    .end local v16    # "realTimeMilles":J
    .restart local v18    # "realTimeMilles":J
    goto :goto_0

    .line 1428
    .end local v18    # "realTimeMilles":J
    .restart local v16    # "realTimeMilles":J
    :catch_0
    move-exception v3

    .line 1429
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getWidgetCityInfo(ZZ)[Ljava/lang/String;
    .locals 15
    .param p1, "local"    # Z
    .param p2, "isDoubleClock"    # Z

    .prologue
    .line 1275
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    .line 1276
    .local v11, "cityInfo":[Ljava/lang/String;
    const-string v9, ""

    .line 1277
    .local v9, "city":Ljava/lang/String;
    const-string v6, ""

    .line 1278
    .local v6, "areaId":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1280
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 1281
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$CityOrderNew;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "local = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v14, "local"

    aput-object v14, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1282
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    const-string v0, "city"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1284
    .local v10, "cityIndex":I
    const-string v0, "area_id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1285
    .local v7, "areaIdIndex":I
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1286
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 1340
    .end local v7    # "areaIdIndex":I
    .end local v10    # "cityIndex":I
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 1341
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1342
    const/4 v12, 0x0

    .line 1345
    :cond_1
    :goto_1
    const/4 v0, 0x0

    aput-object v9, v11, v0

    .line 1346
    const/4 v0, 0x1

    aput-object v6, v11, v0

    .line 1347
    return-object v11

    .line 1289
    :cond_2
    if-eqz p2, :cond_7

    .line 1290
    :try_start_1
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$CityOrderNew;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "added = ? AND recommend = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v14, "1"

    aput-object v14, v4, v5

    const/4 v5, 0x1

    const-string v14, "recommend_manual"

    aput-object v14, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1293
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1294
    const-string v0, "city"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1295
    .restart local v10    # "cityIndex":I
    const-string v0, "area_id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1296
    .restart local v7    # "areaIdIndex":I
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1297
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1298
    const-string v0, "BBKWeather-frm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWidgetCityInfo recommend_manual city = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",areaId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1337
    .end local v7    # "areaIdIndex":I
    .end local v10    # "cityIndex":I
    :catch_0
    move-exception v13

    .line 1338
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1340
    if-eqz v12, :cond_1

    .line 1341
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1342
    const/4 v12, 0x0

    goto :goto_1

    .line 1300
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v8, 0x0

    .line 1302
    .local v8, "autoCursor":Landroid/database/Cursor;
    :try_start_3
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$CityOrderNew;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "added = ? AND recommend = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v14, "1"

    aput-object v14, v4, v5

    const/4 v5, 0x1

    const-string v14, "recommend_auto"

    aput-object v14, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1306
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1307
    const-string v0, "city"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1309
    .restart local v10    # "cityIndex":I
    const-string v0, "area_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1311
    .restart local v7    # "areaIdIndex":I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1312
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1313
    const-string v0, "BBKWeather-frm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWidgetCityInfo recommend_auto city = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",areaId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1320
    .end local v7    # "areaIdIndex":I
    .end local v10    # "cityIndex":I
    :cond_4
    if-eqz v8, :cond_0

    .line 1321
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1322
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1317
    :catch_1
    move-exception v13

    .line 1318
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1320
    if-eqz v8, :cond_0

    .line 1321
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1322
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1320
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 1321
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1322
    const/4 v8, 0x0

    :cond_5
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1340
    .end local v8    # "autoCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    if-eqz v12, :cond_6

    .line 1341
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1342
    const/4 v12, 0x0

    :cond_6
    throw v0

    .line 1327
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$CityOrderNew;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "added = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v14, "1"

    aput-object v14, v4, v5

    const-string v5, "orderid"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1329
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    const-string v0, "city"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1331
    .restart local v10    # "cityIndex":I
    const-string v0, "area_id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1332
    .restart local v7    # "areaIdIndex":I
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1333
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v6

    goto/16 :goto_0
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v2, 0x2

    .line 750
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 751
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    .line 753
    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v0, "com.vivo.weather"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 754
    if-eqz v9, :cond_0

    .line 755
    iget v0, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/vivo/common/provider/Weather;->mWeatherVersionCode:I

    .line 756
    iget v0, p0, Lcom/vivo/common/provider/Weather;->mWeatherVersionCode:I

    if-ne v0, v2, :cond_2

    .line 757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/provider/Weather;->mIsRom1_5:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->str_FREEZING:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 809
    :cond_1
    :goto_1
    return-void

    .line 758
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/vivo/common/provider/Weather;->mWeatherVersionCode:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/vivo/common/provider/Weather;->mWeatherVersionCode:I

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_3

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/provider/Weather;->mIsRom2_0:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v7

    .line 766
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "BBKWeather-frm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.vivo.weather.provider not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 761
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/vivo/common/provider/Weather;->mWeatherVersionCode:I

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_0

    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/provider/Weather;->mIsRom3_0:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 771
    :cond_4
    const/4 v6, 0x0

    .line 773
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_3
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$Condition;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/vivo/common/provider/Weather;->CONDITION_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 775
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 776
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_FREEZING:Ljava/lang/String;

    .line 777
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_ICE:Ljava/lang/String;

    .line 778
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINSNOW:Ljava/lang/String;

    .line 779
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAIN:Ljava/lang/String;

    .line 780
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SNOW:Ljava/lang/String;

    .line 781
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINSTORMBIG:Ljava/lang/String;

    .line 782
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINSTORMMEDIUM:Ljava/lang/String;

    .line 783
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINSTORMSMALL:Ljava/lang/String;

    .line 784
    const/16 v0, 0x9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINBIG:Ljava/lang/String;

    .line 785
    const/16 v0, 0xa

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINMEDIUM:Ljava/lang/String;

    .line 786
    const/16 v0, 0xb

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINTHUNDER:Ljava/lang/String;

    .line 787
    const/16 v0, 0xc

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_RAINSMALL:Ljava/lang/String;

    .line 788
    const/16 v0, 0xd

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SNOWSTORE:Ljava/lang/String;

    .line 789
    const/16 v0, 0xe

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SNOWBIG:Ljava/lang/String;

    .line 790
    const/16 v0, 0xf

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SNOWMEDIUM:Ljava/lang/String;

    .line 791
    const/16 v0, 0x10

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SNOWSMALL:Ljava/lang/String;

    .line 792
    const/16 v0, 0x11

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SANDSTORM:Ljava/lang/String;

    .line 793
    const/16 v0, 0x12

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SANDMEDIUM:Ljava/lang/String;

    .line 794
    const/16 v0, 0x13

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SANDSMALL:Ljava/lang/String;

    .line 795
    const/16 v0, 0x14

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_YIN:Ljava/lang/String;

    .line 796
    const/16 v0, 0x15

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_CLOUDY:Ljava/lang/String;

    .line 797
    const/16 v0, 0x16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_SUN:Ljava/lang/String;

    .line 798
    const/16 v0, 0x17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/provider/Weather;->str_FOG:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 804
    :cond_5
    if-eqz v6, :cond_1

    .line 805
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 806
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 800
    :catch_1
    move-exception v7

    .line 802
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 804
    if-eqz v6, :cond_1

    .line 805
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 806
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 804
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 805
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 806
    const/4 v6, 0x0

    :cond_6
    throw v0
.end method

.method private queryCurrentWeatherNew(ZII)Landroid/database/Cursor;
    .locals 17
    .param p1, "lbsState"    # Z
    .param p2, "position"    # I
    .param p3, "needfivedays"    # I

    .prologue
    .line 1106
    const/4 v10, 0x0

    .line 1107
    .local v10, "cursor":Landroid/database/Cursor;
    if-lez p3, :cond_0

    const/4 v2, 0x6

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    .line 1108
    :cond_0
    const-string v2, "BBKWeather-frm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCurrentWeatherNew failed days "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 1138
    .end local v10    # "cursor":Landroid/database/Cursor;
    .local v11, "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v11

    .line 1111
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/vivo/common/provider/Weather;->getCityNum(Z)I

    move-result v8

    .line 1112
    .local v8, "count":I
    if-ltz p2, :cond_2

    if-nez v8, :cond_3

    :cond_2
    move-object v11, v10

    .line 1113
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 1115
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/common/provider/Weather;->getCurrentCity()Ljava/lang/String;

    move-result-object v9

    .line 1116
    .local v9, "currentCityName":Ljava/lang/String;
    if-nez v9, :cond_4

    move-object v11, v10

    .line 1117
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 1119
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_4
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v15, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v15, "format":Ljava/text/SimpleDateFormat;
    const-string v2, "Asia/Shanghai"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1121
    new-instance v16, Landroid/text/format/Time;

    const-string v2, "Asia/Shanghai"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v16, "time":Landroid/text/format/Time;
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 1123
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v2, 0x6

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v3, v2

    move-object/from16 v0, v16

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 1124
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1125
    .local v12, "dataBegin":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v2, 0x6

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    add-int/lit8 v2, p3, -0x2

    :goto_2
    add-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 1127
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1129
    .local v13, "dataEnd":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/vivo/common/provider/Weather$WeatherMessageNew;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/vivo/common/provider/Weather;->WEATHER_NEW_PROJECTION:[Ljava/lang/String;

    const-string v5, "city=? AND date>=? AND date<=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aput-object v12, v6, v7

    const/4 v7, 0x2

    aput-object v13, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_3
    move-object v11, v10

    .line 1138
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1123
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "dataBegin":Ljava/lang/String;
    .end local v13    # "dataEnd":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 1125
    .restart local v12    # "dataBegin":Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, p3, -0x1

    goto :goto_2

    .line 1132
    .restart local v13    # "dataEnd":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1134
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "BBKWeather-frm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCurrentWeatherNew exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private queryCurrentWeatherNewSdk(ZII)Landroid/database/Cursor;
    .locals 12
    .param p1, "lbsState"    # Z
    .param p2, "position"    # I
    .param p3, "needfivedays"    # I

    .prologue
    .line 1144
    const/4 v9, 0x0

    .line 1145
    .local v9, "cursor":Landroid/database/Cursor;
    if-gtz p3, :cond_0

    .line 1146
    const-string v0, "BBKWeather-frm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCurrentWeatherNew failed days "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    .line 1178
    .end local v9    # "cursor":Landroid/database/Cursor;
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v10

    .line 1149
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vivo/common/provider/Weather;->getCityNum(Z)I

    move-result v7

    .line 1150
    .local v7, "count":I
    if-ltz p2, :cond_1

    if-nez v7, :cond_2

    :cond_1
    move-object v10, v9

    .line 1151
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 1153
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/common/provider/Weather;->getCurrentCity()Ljava/lang/String;

    move-result-object v8

    .line 1154
    .local v8, "currentCityName":Ljava/lang/String;
    if-nez v8, :cond_3

    move-object v10, v9

    .line 1155
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 1157
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v6, 0x0

    .line 1159
    .local v6, "cityOrderCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$CityOrderNew;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "city=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1161
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1162
    invoke-virtual {p0, v6}, Lcom/vivo/common/provider/Weather;->getDayBegin(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 1163
    .local v11, "dayBegin":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1164
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$WeatherMessageNew;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/vivo/common/provider/Weather;->WEATHER_NEW_PROJECTION:[Ljava/lang/String;

    const-string v3, "city=? AND date>=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1172
    .end local v11    # "dayBegin":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    .line 1173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1174
    const/4 v6, 0x0

    :cond_5
    :goto_1
    move-object v10, v9

    .line 1178
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 1169
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 1172
    if-eqz v6, :cond_5

    .line 1173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1174
    const/4 v6, 0x0

    goto :goto_1

    .line 1172
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 1173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1174
    const/4 v6, 0x0

    :cond_6
    throw v0
.end method

.method private queryCurrentWeatherOld(ZII)Landroid/database/Cursor;
    .locals 18
    .param p1, "lbsState"    # Z
    .param p2, "position"    # I
    .param p3, "needfivedays"    # I

    .prologue
    .line 1058
    const/4 v10, 0x0

    .line 1059
    .local v10, "cursor":Landroid/database/Cursor;
    if-lez p3, :cond_0

    const/4 v2, 0x5

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    .line 1060
    :cond_0
    const-string v2, "BBKWeather-frm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCurrentWeatherOld failed days "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 1100
    .end local v10    # "cursor":Landroid/database/Cursor;
    .local v11, "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v11

    .line 1063
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/vivo/common/provider/Weather;->getCityNum(Z)I

    move-result v8

    .line 1064
    .local v8, "count":I
    if-ltz p2, :cond_2

    if-nez v8, :cond_3

    :cond_2
    move-object v11, v10

    .line 1065
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 1067
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/common/provider/Weather;->getCurrentCity()Ljava/lang/String;

    move-result-object v9

    .line 1068
    .local v9, "currentCityName":Ljava/lang/String;
    if-nez v9, :cond_4

    move-object v11, v10

    .line 1069
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 1071
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_4
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v15, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v15, "format":Ljava/text/SimpleDateFormat;
    const-string v2, "Asia/Shanghai"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1073
    new-instance v16, Landroid/text/format/Time;

    const-string v2, "Asia/Shanghai"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v16, "time":Landroid/text/format/Time;
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 1075
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1076
    .local v12, "dataBegin":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    add-int v2, v2, p3

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 1077
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1079
    .local v13, "dataEnd":Ljava/lang/String;
    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 1080
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/vivo/common/provider/Weather$WeatherMessage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/vivo/common/provider/Weather;->WEATHER_PROJECTION:[Ljava/lang/String;

    const-string v5, "local!=? AND city=? AND date>=? AND date<=?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v17, "null"

    aput-object v17, v6, v7

    const/4 v7, 0x1

    aput-object v9, v6, v7

    const/4 v7, 0x2

    aput-object v12, v6, v7

    const/4 v7, 0x3

    aput-object v13, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :goto_1
    move-object v11, v10

    .line 1100
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 1086
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/vivo/common/provider/Weather$WeatherMessage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/vivo/common/provider/Weather;->WEATHER_PROJECTION:[Ljava/lang/String;

    const-string v5, "local=? AND city=? AND date>=? AND date<=?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v17, "null"

    aput-object v17, v6, v7

    const/4 v7, 0x1

    aput-object v9, v6, v7

    const/4 v7, 0x2

    aput-object v12, v6, v7

    const/4 v7, 0x3

    aput-object v13, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    goto :goto_1

    .line 1092
    :catch_0
    move-exception v14

    .line 1094
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BBKWeather-frm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCurrentWeatherOld exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    const/4 v10, 0x0

    goto :goto_1

    .line 1096
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method private sendBroadcast(ZI)V
    .locals 6
    .param p1, "lbsState"    # Z
    .param p2, "position"    # I

    .prologue
    .line 1007
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1008
    .local v1, "values":Landroid/content/ContentValues;
    iget-boolean v2, p0, Lcom/vivo/common/provider/Weather;->mIsRom1_5:Z

    if-eqz v2, :cond_1

    .line 1009
    if-eqz p1, :cond_0

    .line 1010
    const-string v2, "position"

    add-int/lit8 v3, p2, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1011
    const-string v2, "position2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1019
    :goto_0
    iget-object v2, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/vivo/common/provider/Weather$CurrentCity;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=1"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vivo.weather.data.change"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "widgetupdatestate"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1025
    iget-object v2, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1026
    return-void

    .line 1013
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_1
    const-string v2, "position"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1014
    const-string v2, "position2"

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1020
    .end local v1    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1017
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string v2, "position"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;)I
    .locals 25
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 1590
    const/16 v17, -0x1

    .line 1591
    .local v17, "ret":I
    const/4 v5, 0x0

    .line 1592
    .local v5, "add":Z
    const/4 v10, 0x0

    .line 1594
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/common/provider/Weather;->isLBS()Z

    move-result v20

    const-string v21, "orderid"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/vivo/common/provider/Weather;->queryOrderCity(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1595
    const/4 v9, 0x0

    .line 1596
    .local v9, "count":I
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1597
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1598
    const/16 v20, 0x9

    move/from16 v0, v20

    if-lt v9, v0, :cond_1

    .line 1599
    const/4 v5, 0x1

    .line 1600
    const/16 v17, -0x1

    .line 1623
    :cond_0
    :goto_0
    if-nez v5, :cond_6

    .line 1625
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1626
    .local v8, "cityOrderValues":Landroid/content/ContentValues;
    const-string v20, "city"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const-string v20, "added"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1628
    const-string v20, "orderid"

    add-int/lit8 v21, v9, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/vivo/common/provider/Weather$CityOrderNew;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1632
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ge v13, v0, :cond_4

    .line 1633
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1634
    .local v19, "weatherMsgValues":Landroid/content/ContentValues;
    const-string v20, "city"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/vivo/common/provider/Weather$WeatherMessageNew;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1632
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1603
    .end local v8    # "cityOrderValues":Landroid/content/ContentValues;
    .end local v13    # "i":I
    .end local v19    # "weatherMsgValues":Landroid/content/ContentValues;
    :cond_1
    const-string v20, "city"

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1604
    .local v14, "index":I
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1605
    .local v7, "cityName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1606
    const-string v20, "local"

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1607
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1608
    .local v16, "local":Ljava/lang/String;
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1609
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1610
    .local v18, "values":Landroid/content/ContentValues;
    const-string v20, "added"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/vivo/common/provider/Weather$CityOrderNew;->CONTENT_URI:Landroid/net/Uri;

    const-string v22, "city=?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1616
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v5, 0x1

    .line 1617
    const/16 v17, 0x0

    .line 1618
    goto/16 :goto_0

    .line 1620
    .end local v16    # "local":Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-nez v20, :cond_1

    goto/16 :goto_0

    .line 1640
    .end local v7    # "cityName":Ljava/lang/String;
    .end local v14    # "index":I
    .restart local v8    # "cityOrderValues":Landroid/content/ContentValues;
    .restart local v13    # "i":I
    :cond_4
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1641
    .local v15, "indexValues":Landroid/content/ContentValues;
    const-string v20, "city"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/vivo/common/provider/Weather$WeatherIndex;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1645
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1646
    .local v6, "aqiValues":Landroid/content/ContentValues;
    const-string v20, "city"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/vivo/common/provider/Weather$CityAQI;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1650
    const/4 v13, 0x0

    :goto_2
    const/16 v20, 0x18

    move/from16 v0, v20

    if-ge v13, v0, :cond_5

    .line 1651
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1652
    .local v12, "hourdataValues":Landroid/content/ContentValues;
    const-string v20, "city"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/vivo/common/provider/Weather$HourData;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1650
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1656
    .end local v12    # "hourdataValues":Landroid/content/ContentValues;
    :cond_5
    const/16 v17, 0x0

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.vivo.weather.ACTION_ADDCITY"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1664
    .end local v6    # "aqiValues":Landroid/content/ContentValues;
    .end local v8    # "cityOrderValues":Landroid/content/ContentValues;
    .end local v13    # "i":I
    .end local v15    # "indexValues":Landroid/content/ContentValues;
    :cond_6
    if-eqz v10, :cond_7

    .line 1665
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1666
    const/4 v10, 0x0

    .line 1670
    .end local v9    # "count":I
    :cond_7
    :goto_3
    return v17

    .line 1660
    :catch_0
    move-exception v11

    .line 1662
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1664
    if-eqz v10, :cond_7

    .line 1665
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1666
    const/4 v10, 0x0

    goto :goto_3

    .line 1664
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    if-eqz v10, :cond_8

    .line 1665
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1666
    const/4 v10, 0x0

    :cond_8
    throw v20
.end method

.method public backup()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1563
    .local v1, "cityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1565
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    const-string v6, "orderid"

    invoke-virtual {p0, v5, v6}, Lcom/vivo/common/provider/Weather;->queryOrderCity(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1566
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1568
    :cond_0
    const-string v5, "city"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1569
    .local v4, "index":I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1570
    .local v0, "city":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1571
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 1579
    .end local v0    # "city":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_2
    if-eqz v2, :cond_3

    .line 1580
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1581
    const/4 v2, 0x0

    .line 1585
    :cond_3
    :goto_0
    return-object v1

    .line 1575
    :catch_0
    move-exception v3

    .line 1577
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    if-eqz v2, :cond_3

    .line 1580
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1581
    const/4 v2, 0x0

    goto :goto_0

    .line 1579
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_4

    .line 1580
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1581
    const/4 v2, 0x0

    :cond_4
    throw v5
.end method

.method public del(Ljava/lang/String;)I
    .locals 8
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 1675
    const/4 v2, -0x1

    .line 1678
    .local v2, "ret":I
    :try_start_0
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/vivo/common/provider/Weather$CityOrderNew;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "city=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1681
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1683
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/vivo/common/provider/Weather$WeatherMessageNew;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "city=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1687
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/vivo/common/provider/Weather$HourData;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "city=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1690
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/vivo/common/provider/Weather$CityAQI;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "city=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1693
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/vivo/common/provider/Weather$WeatherIndex;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "city=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1697
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.vivo.weather.provider/alert"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "city=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1701
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1702
    .local v0, "curPosValues":Landroid/content/ContentValues;
    const-string v3, "position"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1703
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/vivo/common/provider/Weather$CurrentCity;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=1"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1706
    const/4 v2, 0x0

    .line 1707
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.vivo.weather.ACTION_DELCITY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    .end local v0    # "curPosValues":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v2

    .line 1709
    :catch_0
    move-exception v1

    .line 1711
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCityNum()I
    .locals 1

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/vivo/common/provider/Weather;->isLBS()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/common/provider/Weather;->getCityNum(Z)I

    move-result v0

    return v0
.end method

.method public getCityNum(Z)I
    .locals 6
    .param p1, "lbsState"    # Z

    .prologue
    .line 852
    const/4 v2, 0x0

    .line 853
    .local v2, "num":I
    const/4 v0, 0x0

    .line 855
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/vivo/common/provider/Weather;->queryOrderCity(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 856
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 857
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 865
    :goto_0
    if-eqz v0, :cond_0

    .line 866
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 867
    const/4 v0, 0x0

    .line 871
    :cond_0
    :goto_1
    return v2

    .line 859
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 861
    :catch_0
    move-exception v1

    .line 863
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "BBKWeather-frm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCityNum exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    if-eqz v0, :cond_0

    .line 866
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 867
    const/4 v0, 0x0

    goto :goto_1

    .line 865
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 866
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 867
    const/4 v0, 0x0

    :cond_2
    throw v3
.end method

.method public getCurrentCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/vivo/common/provider/Weather;->isLBS()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/common/provider/Weather;->getCurrentCity(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCity(Z)Ljava/lang/String;
    .locals 10
    .param p1, "lbsState"    # Z

    .prologue
    .line 945
    const-string v0, ""

    .line 946
    .local v0, "city":Ljava/lang/String;
    const/4 v3, 0x0

    .line 948
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v7, "orderid"

    invoke-virtual {p0, p1, v7}, Lcom/vivo/common/provider/Weather;->queryOrderCity(ZLjava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 949
    if-nez v3, :cond_1

    .line 967
    if-eqz v3, :cond_0

    .line 968
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 969
    const/4 v3, 0x0

    :cond_0
    move-object v1, v0

    .line 973
    .end local v0    # "city":Ljava/lang/String;
    .local v1, "city":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 952
    .end local v1    # "city":Ljava/lang/String;
    .restart local v0    # "city":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 953
    .local v2, "citynum":I
    invoke-virtual {p0, p1}, Lcom/vivo/common/provider/Weather;->getCurrentCityPosition(Z)I

    move-result v6

    .line 954
    .local v6, "position":I
    if-gez v6, :cond_2

    .line 955
    const/4 v6, 0x0

    .line 956
    :cond_2
    if-lt v6, v2, :cond_3

    .line 957
    const/4 v6, 0x0

    .line 959
    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 960
    const-string v7, "city"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 961
    .local v5, "index":I
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 967
    .end local v5    # "index":I
    :cond_4
    if-eqz v3, :cond_5

    .line 968
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 969
    const/4 v3, 0x0

    .end local v2    # "citynum":I
    .end local v6    # "position":I
    :cond_5
    :goto_1
    move-object v1, v0

    .line 973
    .end local v0    # "city":Ljava/lang/String;
    .restart local v1    # "city":Ljava/lang/String;
    goto :goto_0

    .line 963
    .end local v1    # "city":Ljava/lang/String;
    .restart local v0    # "city":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 965
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "BBKWeather-frm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrentCity exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 967
    if-eqz v3, :cond_5

    .line 968
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 969
    const/4 v3, 0x0

    goto :goto_1

    .line 967
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_6

    .line 968
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 969
    const/4 v3, 0x0

    :cond_6
    throw v7
.end method

.method public getCurrentCityPosition()I
    .locals 1

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/vivo/common/provider/Weather;->isLBS()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/common/provider/Weather;->getCurrentCityPosition(Z)I

    move-result v0

    return v0
.end method

.method public getCurrentCityPosition(Z)I
    .locals 9
    .param p1, "lbsState"    # Z

    .prologue
    .line 909
    const/4 v8, 0x0

    .line 910
    .local v8, "pos":I
    const/4 v6, 0x0

    .line 912
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$CurrentCity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/vivo/common/provider/Weather;->CURRENTCITY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 914
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    iget-boolean v0, p0, Lcom/vivo/common/provider/Weather;->mIsRom1_5:Z

    if-eqz v0, :cond_3

    .line 916
    if-eqz p1, :cond_2

    .line 917
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 930
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 931
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 932
    const/4 v6, 0x0

    .line 935
    :cond_1
    :goto_1
    return v8

    .line 919
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_0

    .line 922
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    goto :goto_0

    .line 925
    :catch_0
    move-exception v7

    .line 927
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "BBKWeather-frm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentCityPosition exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 928
    const/4 v8, 0x0

    .line 930
    if-eqz v6, :cond_1

    .line 931
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 932
    const/4 v6, 0x0

    goto :goto_1

    .line 930
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 931
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 932
    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method public getCurrentState()I
    .locals 9

    .prologue
    .line 1515
    const/4 v7, 0x3

    .line 1516
    .local v7, "state":I
    invoke-virtual {p0}, Lcom/vivo/common/provider/Weather;->isLBS()Z

    move-result v4

    .line 1517
    .local v4, "lbsstate":Z
    invoke-virtual {p0, v4}, Lcom/vivo/common/provider/Weather;->getCurrentCityPosition(Z)I

    move-result v6

    .line 1518
    .local v6, "orderId":I
    const/4 v1, 0x0

    .line 1520
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v4, v6}, Lcom/vivo/common/provider/Weather;->queryCurrentWeather(ZI)Landroid/database/Cursor;

    move-result-object v1

    .line 1521
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1522
    const-string v8, "condition_real"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1523
    .local v3, "index":I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1524
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/vivo/common/provider/Weather;->getWeatherState(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 1525
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v8, "live"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1531
    .end local v0    # "condition":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    if-eqz v1, :cond_1

    .line 1532
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1533
    const/4 v1, 0x0

    .line 1537
    :cond_1
    :goto_0
    return v7

    .line 1527
    :catch_0
    move-exception v2

    .line 1529
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1531
    if-eqz v1, :cond_1

    .line 1532
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1533
    const/4 v1, 0x0

    goto :goto_0

    .line 1531
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_2

    .line 1532
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1533
    const/4 v1, 0x0

    :cond_2
    throw v8
.end method

.method public getDayBegin(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 44
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1352
    const-string v14, ""

    .line 1353
    .local v14, "dayBegin":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1354
    .local v15, "dayMargin":I
    const-string v30, ""

    .line 1355
    .local v30, "updateTimeStr":Ljava/lang/String;
    const-string v12, ""

    .line 1356
    .local v12, "currentDateStr":Ljava/lang/String;
    new-instance v31, Ljava/util/Date;

    invoke-direct/range {v31 .. v31}, Ljava/util/Date;-><init>()V

    .line 1357
    .local v31, "validDate":Ljava/util/Date;
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v33, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1358
    .local v17, "format":Ljava/text/SimpleDateFormat;
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v33, "yyyyMMdd"

    move-object/from16 v0, v33

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1360
    .local v13, "dateFormat":Ljava/text/SimpleDateFormat;
    if-eqz p1, :cond_1

    .line 1361
    :try_start_0
    const-string v33, "invalid"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1362
    .local v21, "invalidIndex":I
    const-string v33, "updatetime"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 1364
    .local v27, "updateTimeIndex":I
    const-string v33, "currentdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1366
    .local v9, "currentDateIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1367
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1368
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1369
    .local v20, "invalid":I
    const-string v33, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_0

    const-string v33, ""

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_0

    const/16 v33, 0x1

    move/from16 v0, v20

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 1371
    :cond_0
    const/4 v15, 0x0

    .line 1372
    const-string v12, ""

    .line 1407
    .end local v9    # "currentDateIndex":I
    .end local v20    # "invalid":I
    .end local v21    # "invalidIndex":I
    .end local v27    # "updateTimeIndex":I
    :cond_1
    :goto_0
    return-object v14

    .line 1374
    .restart local v9    # "currentDateIndex":I
    .restart local v20    # "invalid":I
    .restart local v21    # "invalidIndex":I
    .restart local v27    # "updateTimeIndex":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1375
    .local v24, "now":J
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    .line 1376
    .local v26, "updateTimeDate":Ljava/util/Date;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 1378
    .local v7, "currentDate":Ljava/util/Date;
    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    .line 1379
    .local v28, "updateTimeMillis":J
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 1380
    .local v10, "currentDateMillis":J
    sub-long v22, v24, v28

    .line 1381
    .local v22, "localDiff":J
    add-long v36, v10, v22

    .line 1382
    .local v36, "validDateMillis":J
    move-object/from16 v0, v31

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1383
    const-wide/16 v38, 0x0

    cmp-long v33, v22, v38

    if-gtz v33, :cond_3

    .line 1384
    const/4 v15, 0x0

    .line 1398
    :goto_1
    new-instance v33, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v38

    const-wide/32 v40, 0x5265c00

    int-to-long v0, v15

    move-wide/from16 v42, v0

    mul-long v40, v40, v42

    add-long v38, v38, v40

    move-object/from16 v0, v33

    move-wide/from16 v1, v38

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 1386
    :cond_3
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v33, "yyyy-MM-dd HH"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v18, "hourFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 1390
    .local v8, "currentDateHour":Ljava/util/Date;
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v32

    .line 1392
    .local v32, "validDateHour":Ljava/util/Date;
    invoke-virtual/range {v32 .. v32}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    .line 1393
    .local v34, "validDateHourMillis":J
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1394
    .local v4, "curDateMillis":J
    invoke-virtual {v8}, Ljava/util/Date;->getHours()I

    move-result v6

    .line 1395
    .local v6, "curHour":I
    sub-long v38, v34, v4

    const-wide/32 v40, 0x36ee80

    div-long v38, v38, v40

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v19, v0

    .line 1396
    .local v19, "hourMargin":I
    add-int v33, v6, v19

    div-int/lit8 v15, v33, 0x18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1402
    .end local v4    # "curDateMillis":J
    .end local v6    # "curHour":I
    .end local v7    # "currentDate":Ljava/util/Date;
    .end local v8    # "currentDateHour":Ljava/util/Date;
    .end local v9    # "currentDateIndex":I
    .end local v10    # "currentDateMillis":J
    .end local v18    # "hourFormat":Ljava/text/SimpleDateFormat;
    .end local v19    # "hourMargin":I
    .end local v20    # "invalid":I
    .end local v21    # "invalidIndex":I
    .end local v22    # "localDiff":J
    .end local v24    # "now":J
    .end local v26    # "updateTimeDate":Ljava/util/Date;
    .end local v27    # "updateTimeIndex":I
    .end local v28    # "updateTimeMillis":J
    .end local v32    # "validDateHour":Ljava/util/Date;
    .end local v34    # "validDateHourMillis":J
    .end local v36    # "validDateMillis":J
    :catch_0
    move-exception v16

    .line 1404
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    const-string v0, "http://weather.bbk.com:15000/getvivoweather/"

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 1552
    sget v0, Lcom/vivo/common/provider/Weather;->UPDATE_STATE_DEFAULT:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1553
    const-wide/16 v0, 0x258

    sput-wide v0, Lcom/vivo/common/provider/Weather;->TIMEGAP_DEFAULT:J

    .line 1557
    :goto_0
    sget-wide v0, Lcom/vivo/common/provider/Weather;->TIMEGAP_DEFAULT:J

    return-wide v0

    .line 1555
    :cond_0
    const-wide/16 v0, 0x1c20

    sput-wide v0, Lcom/vivo/common/provider/Weather;->TIMEGAP_DEFAULT:J

    goto :goto_0
.end method

.method public getWeatherState(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p1, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1437
    if-nez p1, :cond_0

    .line 1438
    const/4 v1, 0x0

    .line 1510
    :goto_0
    return-object v1

    .line 1443
    :cond_0
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_RAINSNOW:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_RAIN:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_SNOW:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1446
    :cond_1
    const/4 v2, 0x1

    .line 1447
    .local v2, "staticState":I
    const/4 v0, 0x1

    .line 1506
    .local v0, "liveState":I
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1507
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v3, "static"

    add-int/lit8 v4, v2, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    const-string v3, "live"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1448
    .end local v0    # "liveState":I
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "staticState":I
    :cond_2
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_FREEZING:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_ICE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1450
    :cond_3
    const/4 v2, 0x3

    .line 1451
    .restart local v2    # "staticState":I
    const/4 v0, 0x1

    .restart local v0    # "liveState":I
    goto :goto_1

    .line 1452
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_4
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_RAINSTORMBIG:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1453
    const/4 v2, 0x6

    .line 1454
    .restart local v2    # "staticState":I
    const/4 v0, 0x1

    .restart local v0    # "liveState":I
    goto :goto_1

    .line 1455
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_5
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_RAINSTORMMEDIUM:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1456
    const/4 v2, 0x7

    .line 1457
    .restart local v2    # "staticState":I
    const/4 v0, 0x1

    .restart local v0    # "liveState":I
    goto :goto_1

    .line 1458
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_6
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_RAINSTORMSMALL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1459
    const/16 v2, 0x8

    .line 1460
    .restart local v2    # "staticState":I
    const/4 v0, 0x1

    .restart local v0    # "liveState":I
    goto :goto_1

    .line 1461
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_7
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_RAINBIG:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1462
    const/16 v2, 0x9

    .line 1463
    .restart local v2    # "staticState":I
    const/4 v0, 0x1

    .restart local v0    # "liveState":I
    goto :goto_1

    .line 1464
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_8
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_RAINMEDIUM:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1465
    const/16 v2, 0xa

    .line 1466
    .restart local v2    # "staticState":I
    const/4 v0, 0x1

    .restart local v0    # "liveState":I
    goto :goto_1

    .line 1467
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_9
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_RAINTHUNDER:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1468
    const/16 v2, 0xb

    .line 1469
    .restart local v2    # "staticState":I
    const/4 v0, 0x0

    .restart local v0    # "liveState":I
    goto :goto_1

    .line 1470
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_a
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_RAINSMALL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_RAIN:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1472
    :cond_b
    const/16 v2, 0xc

    .line 1473
    .restart local v2    # "staticState":I
    const/4 v0, 0x1

    .restart local v0    # "liveState":I
    goto/16 :goto_1

    .line 1474
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_c
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_SNOWBIG:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_SNOWSTORE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1476
    :cond_d
    const/16 v2, 0xe

    .line 1477
    .restart local v2    # "staticState":I
    const/4 v0, 0x2

    .restart local v0    # "liveState":I
    goto/16 :goto_1

    .line 1478
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_e
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_SNOWMEDIUM:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1479
    const/16 v2, 0xf

    .line 1480
    .restart local v2    # "staticState":I
    const/4 v0, 0x2

    .restart local v0    # "liveState":I
    goto/16 :goto_1

    .line 1481
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_f
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_SNOWSMALL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_SNOW:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1483
    :cond_10
    const/16 v2, 0x10

    .line 1484
    .restart local v2    # "staticState":I
    const/4 v0, 0x2

    .restart local v0    # "liveState":I
    goto/16 :goto_1

    .line 1485
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_11
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_SANDSTORM:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1486
    const/16 v2, 0x11

    .line 1487
    .restart local v2    # "staticState":I
    const/4 v0, 0x3

    .restart local v0    # "liveState":I
    goto/16 :goto_1

    .line 1488
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_12
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_SANDSMALL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_SANDMEDIUM:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1490
    :cond_13
    const/16 v2, 0x13

    .line 1491
    .restart local v2    # "staticState":I
    const/4 v0, 0x3

    .restart local v0    # "liveState":I
    goto/16 :goto_1

    .line 1492
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_14
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_FOG:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1493
    const/16 v2, 0x17

    .line 1494
    .restart local v2    # "staticState":I
    const/4 v0, 0x3

    .restart local v0    # "liveState":I
    goto/16 :goto_1

    .line 1495
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_15
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_YIN:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_CLOUDY:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1497
    :cond_16
    const/16 v2, 0x15

    .line 1498
    .restart local v2    # "staticState":I
    const/4 v0, 0x3

    .restart local v0    # "liveState":I
    goto/16 :goto_1

    .line 1499
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_17
    iget-object v3, p0, Lcom/vivo/common/provider/Weather;->str_SUN:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1500
    const/16 v2, 0x16

    .line 1501
    .restart local v2    # "staticState":I
    const/4 v0, 0x4

    .restart local v0    # "liveState":I
    goto/16 :goto_1

    .line 1503
    .end local v0    # "liveState":I
    .end local v2    # "staticState":I
    :cond_18
    const/16 v2, 0x15

    .line 1504
    .restart local v2    # "staticState":I
    const/4 v0, 0x3

    .restart local v0    # "liveState":I
    goto/16 :goto_1
.end method

.method public getWeatherVersion()I
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Lcom/vivo/common/provider/Weather;->mWeatherVersionCode:I

    return v0
.end method

.method public getWidgetWeatherInfo(ZZ)Lcom/vivo/common/provider/Weather$CityWeatherEntry;
    .locals 49
    .param p1, "local"    # Z
    .param p2, "isDoubleClock"    # Z

    .prologue
    .line 1182
    new-instance v43, Lcom/vivo/common/provider/Weather$CityWeatherEntry;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;-><init>(Lcom/vivo/common/provider/Weather;)V

    .line 1183
    .local v43, "weatherEntry":Lcom/vivo/common/provider/Weather$CityWeatherEntry;
    const/4 v15, 0x0

    .line 1184
    .local v15, "cityOrderCursor":Landroid/database/Cursor;
    const/16 v44, 0x0

    .line 1185
    .local v44, "weatherMessageCursor":Landroid/database/Cursor;
    const-wide/16 v32, 0x0

    .line 1186
    .local v32, "reaTimeMilles":J
    const/4 v4, 0x2

    new-array v14, v4, [Ljava/lang/String;

    .line 1187
    .local v14, "cityInfo":[Ljava/lang/String;
    const-string v13, ""

    .line 1188
    .local v13, "city":Ljava/lang/String;
    const-string v10, ""

    .line 1189
    .local v10, "areaId":Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lcom/vivo/common/provider/Weather;->getWidgetCityInfo(ZZ)[Ljava/lang/String;

    move-result-object v14

    .line 1190
    if-eqz v14, :cond_0

    array-length v4, v14

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1191
    const/4 v4, 0x0

    aget-object v13, v14, v4

    .line 1192
    const/4 v4, 0x1

    aget-object v10, v14, v4

    .line 1195
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/vivo/common/provider/Weather$CityOrderNew;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "city = ? AND area_id = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v13, v8, v9

    const/4 v9, 0x1

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1198
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1199
    const-string v4, "condition_real"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1200
    .local v17, "conditionIndex":I
    const-string v4, "temp"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1201
    .local v21, "currentTempIndex":I
    const-string v4, "high"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1202
    .local v24, "highTempIndex":I
    const-string v4, "low"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1203
    .local v30, "lowTempIndex":I
    const-string v4, "background"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1204
    .local v12, "backgroundIndex":I
    const-string v4, "icon"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 1205
    .local v26, "iconIndex":I
    const-string v4, "updatetime"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 1206
    .local v42, "updateTimeIndex":I
    const-string v4, "currentdate"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1207
    .local v19, "currentDateIndex":I
    const-string v4, "invalid"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1208
    .local v28, "invalidIndex":I
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1209
    .local v16, "condition":Ljava/lang/String;
    move/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1210
    .local v20, "currentTemp":Ljava/lang/String;
    move/from16 v0, v24

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1211
    .local v23, "highTemp":Ljava/lang/String;
    move/from16 v0, v30

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1212
    .local v29, "lowTemp":Ljava/lang/String;
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1213
    .local v11, "background":I
    move/from16 v0, v26

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1214
    .local v25, "icon":I
    move/from16 v0, v42

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1215
    .local v41, "updateTime":Ljava/lang/String;
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1216
    .local v18, "currentDate":Ljava/lang/String;
    move/from16 v0, v28

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1217
    .local v27, "invalid":I
    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setCity(Ljava/lang/String;)V

    .line 1218
    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setAreaId(Ljava/lang/String;)V

    .line 1219
    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setCondition(Ljava/lang/String;)V

    .line 1220
    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setCurrentTemp(Ljava/lang/String;)V

    .line 1221
    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setHighTemp(Ljava/lang/String;)V

    .line 1222
    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setLowTemp(Ljava/lang/String;)V

    .line 1223
    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setBackground(I)V

    .line 1224
    move-object/from16 v0, v43

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setIcon(I)V

    .line 1225
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v18

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/common/provider/Weather;->getRealTime(Ljava/lang/String;Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v32

    .line 1230
    .end local v11    # "background":I
    .end local v12    # "backgroundIndex":I
    .end local v16    # "condition":Ljava/lang/String;
    .end local v17    # "conditionIndex":I
    .end local v18    # "currentDate":Ljava/lang/String;
    .end local v19    # "currentDateIndex":I
    .end local v20    # "currentTemp":Ljava/lang/String;
    .end local v21    # "currentTempIndex":I
    .end local v23    # "highTemp":Ljava/lang/String;
    .end local v24    # "highTempIndex":I
    .end local v25    # "icon":I
    .end local v26    # "iconIndex":I
    .end local v27    # "invalid":I
    .end local v28    # "invalidIndex":I
    .end local v29    # "lowTemp":Ljava/lang/String;
    .end local v30    # "lowTempIndex":I
    .end local v41    # "updateTime":Ljava/lang/String;
    .end local v42    # "updateTimeIndex":I
    :cond_1
    if-eqz v15, :cond_2

    .line 1231
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1232
    const/4 v15, 0x0

    .line 1237
    :cond_2
    :goto_0
    :try_start_1
    new-instance v40, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1238
    .local v40, "timeFormat":Ljava/text/SimpleDateFormat;
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    .line 1239
    .local v35, "realTimeStr":Ljava/lang/String;
    const-string v4, "BBKWeather-frm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWidgetWeatherInfo realTimeStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const-string v4, " "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 1241
    .local v34, "realTime":[Ljava/lang/String;
    if-eqz v34, :cond_3

    move-object/from16 v0, v34

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1242
    const/4 v4, 0x0

    aget-object v4, v34, v4

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 1243
    .local v31, "realDateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/vivo/common/provider/Weather$WeatherMessageNew;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "city = ? AND area_id = ? AND date = ?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v13, v8, v9

    const/4 v9, 0x1

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v31, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v44

    .line 1246
    if-eqz v44, :cond_3

    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1247
    const-string v4, "wind"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 1248
    .local v48, "windPowIndex":I
    const-string v4, "direction"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 1249
    .local v46, "windDirIndex":I
    const-string v4, "sunrise"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 1250
    .local v37, "sunriseIndex":I
    const-string v4, "sunset"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 1251
    .local v39, "sunsetIndex":I
    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 1252
    .local v47, "windPow":Ljava/lang/String;
    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 1253
    .local v45, "windDir":Ljava/lang/String;
    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1254
    .local v36, "sunrise":Ljava/lang/String;
    move-object/from16 v0, v44

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1255
    .local v38, "sunset":Ljava/lang/String;
    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setWindPow(Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setWindDir(Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setSunrise(Ljava/lang/String;)V

    .line 1258
    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setSunset(Ljava/lang/String;)V

    .line 1259
    move-object/from16 v0, v43

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/vivo/common/provider/Weather$CityWeatherEntry;->setRealTime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1265
    .end local v31    # "realDateStr":Ljava/lang/String;
    .end local v36    # "sunrise":Ljava/lang/String;
    .end local v37    # "sunriseIndex":I
    .end local v38    # "sunset":Ljava/lang/String;
    .end local v39    # "sunsetIndex":I
    .end local v45    # "windDir":Ljava/lang/String;
    .end local v46    # "windDirIndex":I
    .end local v47    # "windPow":Ljava/lang/String;
    .end local v48    # "windPowIndex":I
    :cond_3
    if-eqz v44, :cond_4

    .line 1266
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    .line 1267
    const/16 v44, 0x0

    .line 1270
    .end local v34    # "realTime":[Ljava/lang/String;
    .end local v35    # "realTimeStr":Ljava/lang/String;
    .end local v40    # "timeFormat":Ljava/text/SimpleDateFormat;
    :cond_4
    :goto_1
    return-object v43

    .line 1227
    :catch_0
    move-exception v22

    .line 1228
    .local v22, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1230
    if-eqz v15, :cond_2

    .line 1231
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1232
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1230
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v15, :cond_5

    .line 1231
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1232
    const/4 v15, 0x0

    :cond_5
    throw v4

    .line 1262
    :catch_1
    move-exception v22

    .line 1263
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1265
    if-eqz v44, :cond_4

    .line 1266
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    .line 1267
    const/16 v44, 0x0

    goto :goto_1

    .line 1265
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v44, :cond_6

    .line 1266
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    .line 1267
    const/16 v44, 0x0

    :cond_6
    throw v4
.end method

.method public isLBS()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 823
    const/4 v9, 0x0

    .line 824
    .local v9, "state":Z
    const/4 v6, 0x0

    .line 826
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$Localweather;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 828
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    const-string v0, "lbsstate"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 830
    .local v8, "index":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v10, :cond_2

    move v9, v10

    .line 836
    .end local v8    # "index":I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 837
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 838
    const/4 v6, 0x0

    .line 842
    :cond_1
    :goto_1
    return v9

    .line 830
    .restart local v8    # "index":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 832
    .end local v8    # "index":I
    :catch_0
    move-exception v7

    .line 834
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "BBKWeather-frm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLBS exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    if-eqz v6, :cond_1

    .line 837
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 838
    const/4 v6, 0x0

    goto :goto_1

    .line 836
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 837
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 838
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method public queryCurrentWeather()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/vivo/common/provider/Weather;->isLBS()Z

    move-result v0

    invoke-virtual {p0}, Lcom/vivo/common/provider/Weather;->getCurrentCityPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/vivo/common/provider/Weather;->queryCurrentWeather(ZII)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryCurrentWeather(I)Landroid/database/Cursor;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/vivo/common/provider/Weather;->isLBS()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/vivo/common/provider/Weather;->queryCurrentWeather(ZII)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryCurrentWeather(ZI)Landroid/database/Cursor;
    .locals 1
    .param p1, "lbsState"    # Z
    .param p2, "position"    # I

    .prologue
    .line 1040
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/vivo/common/provider/Weather;->queryCurrentWeather(ZII)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryCurrentWeather(ZII)Landroid/database/Cursor;
    .locals 1
    .param p1, "lbsState"    # Z
    .param p2, "position"    # I
    .param p3, "Needfivedays"    # I

    .prologue
    .line 1046
    iget-boolean v0, p0, Lcom/vivo/common/provider/Weather;->mIsRom1_5:Z

    if-eqz v0, :cond_0

    .line 1047
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/provider/Weather;->queryCurrentWeatherOld(ZII)Landroid/database/Cursor;

    move-result-object v0

    .line 1051
    :goto_0
    return-object v0

    .line 1048
    :cond_0
    iget-boolean v0, p0, Lcom/vivo/common/provider/Weather;->mIsRom2_0:Z

    if-eqz v0, :cond_1

    .line 1049
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/provider/Weather;->queryCurrentWeatherNew(ZII)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 1051
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/provider/Weather;->queryCurrentWeatherNewSdk(ZII)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public queryOrderCity(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "lbsState"    # Z
    .param p2, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 876
    const/4 v6, 0x0

    .line 878
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/common/provider/Weather;->mIsRom1_5:Z

    if-eqz v0, :cond_1

    .line 879
    if-eqz p1, :cond_0

    .line 880
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$CityOrder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/vivo/common/provider/Weather;->CITYORDER_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 899
    :goto_0
    return-object v6

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$CityOrder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/vivo/common/provider/Weather;->CITYORDER_PROJECTION:[Ljava/lang/String;

    const-string v3, "local=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "null"

    aput-object v8, v4, v5

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/provider/Weather;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/common/provider/Weather$CityOrderNew;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/vivo/common/provider/Weather;->CITYORDER_NEW_PROJECTION:[Ljava/lang/String;

    if-eqz p1, :cond_2

    :goto_1
    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-string v3, "added=1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 892
    :catch_0
    move-exception v7

    .line 894
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "BBKWeather-frm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOrderCity exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 895
    const/4 v6, 0x0

    goto :goto_0

    .line 896
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public setURLState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1542
    sput p1, Lcom/vivo/common/provider/Weather;->URL_STATE_DEFAULT:I

    .line 1543
    return-void
.end method

.method public setUpdateState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1547
    sput p1, Lcom/vivo/common/provider/Weather;->UPDATE_STATE_DEFAULT:I

    .line 1548
    return-void
.end method

.method public toNextCity()V
    .locals 5

    .prologue
    .line 992
    const-string v3, "BBKWeather-frm"

    const-string v4, "toNextCity."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {p0}, Lcom/vivo/common/provider/Weather;->isLBS()Z

    move-result v1

    .line 994
    .local v1, "lbsstate":Z
    invoke-virtual {p0, v1}, Lcom/vivo/common/provider/Weather;->getCurrentCityPosition(Z)I

    move-result v2

    .line 995
    .local v2, "position":I
    invoke-virtual {p0, v1}, Lcom/vivo/common/provider/Weather;->getCityNum(Z)I

    move-result v0

    .line 996
    .local v0, "citynum":I
    if-nez v0, :cond_0

    .line 997
    const/4 v2, 0x0

    .line 1001
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/vivo/common/provider/Weather;->sendBroadcast(ZI)V

    .line 1002
    return-void

    .line 999
    :cond_0
    add-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    rem-int v2, v3, v0

    goto :goto_0
.end method

.method public toPreCity()V
    .locals 5

    .prologue
    .line 978
    const-string v3, "BBKWeather-frm"

    const-string v4, "toPreCity."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual {p0}, Lcom/vivo/common/provider/Weather;->isLBS()Z

    move-result v1

    .line 980
    .local v1, "lbsstate":Z
    invoke-virtual {p0, v1}, Lcom/vivo/common/provider/Weather;->getCurrentCityPosition(Z)I

    move-result v2

    .line 981
    .local v2, "position":I
    invoke-virtual {p0, v1}, Lcom/vivo/common/provider/Weather;->getCityNum(Z)I

    move-result v0

    .line 982
    .local v0, "citynum":I
    if-nez v0, :cond_0

    .line 983
    const/4 v2, 0x0

    .line 987
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/vivo/common/provider/Weather;->sendBroadcast(ZI)V

    .line 988
    return-void

    .line 985
    :cond_0
    add-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    rem-int v2, v3, v0

    goto :goto_0
.end method
