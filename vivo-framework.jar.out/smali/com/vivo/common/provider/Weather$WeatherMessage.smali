.class public Lcom/vivo/common/provider/Weather$WeatherMessage;
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
    name = "WeatherMessage"
.end annotation


# static fields
.field public static final AIR:Ljava/lang/String; = "air"

.field public static final AIRMSG:Ljava/lang/String; = "airmsg"

.field public static final AREA_ID:Ljava/lang/String; = "area_id"

.field public static final BODYTEMP:Ljava/lang/String; = "bodytemp"

.field public static final CARWASH:Ljava/lang/String; = "carwash"

.field public static final CARWASHMSG:Ljava/lang/String; = "carwashmsg"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONDITION:Ljava/lang/String; = "condition"

.field public static final CONTAMINATION:Ljava/lang/String; = "contamination"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTMSG:Ljava/lang/String; = "contmsg"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final DRESS:Ljava/lang/String; = "dress"

.field public static final DRESSMSG:Ljava/lang/String; = "dressmsg"

.field public static final HIGH:Ljava/lang/String; = "high"

.field public static final HUMIDITY:Ljava/lang/String; = "humidity"

.field public static final LOCAL:Ljava/lang/String; = "local"

.field public static final LOW:Ljava/lang/String; = "low"

.field public static final RAYS:Ljava/lang/String; = "rays"

.field public static final RAYSMSG:Ljava/lang/String; = "raysmsg"

.field public static final TABLENAME:Ljava/lang/String; = "weathermessage"

.field public static final WEEK:Ljava/lang/String; = "week"

.field public static final WIND:Ljava/lang/String; = "wind"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const-string v0, "content://com.vivo.weather.provider/weathermessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Weather$WeatherMessage;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
