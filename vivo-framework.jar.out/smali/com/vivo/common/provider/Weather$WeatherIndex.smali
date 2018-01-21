.class public final Lcom/vivo/common/provider/Weather$WeatherIndex;
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
    accessFlags = 0x19
    name = "WeatherIndex"
.end annotation


# static fields
.field public static final CARWASH:Ljava/lang/String; = "carwash"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DRESS:Ljava/lang/String; = "dress"

.field public static final RAYS:Ljava/lang/String; = "rays"

.field public static final SICK:Ljava/lang/String; = "sick"

.field public static final SPORTS:Ljava/lang/String; = "sports"

.field public static final TABLENAME:Ljava/lang/String; = "weatherindex"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 404
    const-string v0, "content://com.vivo.weather.provider/weatherindex"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Weather$WeatherIndex;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
