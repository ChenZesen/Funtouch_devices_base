.class public Lcom/vivo/common/provider/Weather$Condition;
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
    name = "Condition"
.end annotation


# static fields
.field public static final CLOUDY:Ljava/lang/String; = "cloudy"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FOG:Ljava/lang/String; = "fog"

.field public static final FREEZING:Ljava/lang/String; = "freezing"

.field public static final ICE:Ljava/lang/String; = "ice"

.field public static final RAIN:Ljava/lang/String; = "rain"

.field public static final RAINBIG:Ljava/lang/String; = "rainbig"

.field public static final RAINMEDIUM:Ljava/lang/String; = "rainmedium"

.field public static final RAINSMALL:Ljava/lang/String; = "rainsmall"

.field public static final RAINSNOW:Ljava/lang/String; = "rainsnow"

.field public static final RAINSTORMBIG:Ljava/lang/String; = "rainstormbig"

.field public static final RAINSTORMMEDIUM:Ljava/lang/String; = "rainstormmedium"

.field public static final RAINSTORMSMALL:Ljava/lang/String; = "rainstormsmall"

.field public static final RAINTHUNDER:Ljava/lang/String; = "rainthunder"

.field public static final SANDMEDIUM:Ljava/lang/String; = "sandmedium"

.field public static final SANDSMALL:Ljava/lang/String; = "sandsmall"

.field public static final SANDSTORM:Ljava/lang/String; = "sandstorm"

.field public static final SNOW:Ljava/lang/String; = "snow"

.field public static final SNOWBIG:Ljava/lang/String; = "snowbig"

.field public static final SNOWMEDIUM:Ljava/lang/String; = "snowmedium"

.field public static final SNOWSMALL:Ljava/lang/String; = "snowsmall"

.field public static final SNOWSTORE:Ljava/lang/String; = "snowstore"

.field public static final SUN:Ljava/lang/String; = "sun"

.field public static final TABLENAME:Ljava/lang/String; = "condition"

.field public static final YIN:Ljava/lang/String; = "yin"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 525
    const-string v0, "content://com.vivo.weather.provider/condition"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Weather$Condition;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
