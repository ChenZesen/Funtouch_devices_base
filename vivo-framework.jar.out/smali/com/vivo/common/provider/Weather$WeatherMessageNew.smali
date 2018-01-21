.class public Lcom/vivo/common/provider/Weather$WeatherMessageNew;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/vivo/common/provider/Weather$WeathersColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/provider/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherMessageNew"
.end annotation


# static fields
.field public static final AREA_ID:Ljava/lang/String; = "area_id"

.field public static final BACKGROUND:Ljava/lang/String; = "background"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONDITION:Ljava/lang/String; = "condition"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final FEELSLIKE:Ljava/lang/String; = "feelslike"

.field public static final FORECAST:Ljava/lang/String; = "forecast"

.field public static final HIGH:Ljava/lang/String; = "high"

.field public static final HUMIDITY:Ljava/lang/String; = "humidity"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final LOW:Ljava/lang/String; = "low"

.field public static final SUNRISE:Ljava/lang/String; = "sunrise"

.field public static final SUNSET:Ljava/lang/String; = "sunset"

.field public static final TABLENAME:Ljava/lang/String; = "weathermessage"

.field public static final TEMP:Ljava/lang/String; = "bodytemp"

.field public static final WEEK:Ljava/lang/String; = "week"

.field public static final WIND:Ljava/lang/String; = "wind"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    const-string v0, "content://com.vivo.weather.provider/weathermessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Weather$WeatherMessageNew;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
