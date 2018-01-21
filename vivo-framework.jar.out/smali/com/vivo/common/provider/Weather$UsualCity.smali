.class public final Lcom/vivo/common/provider/Weather$UsualCity;
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
    name = "UsualCity"
.end annotation


# static fields
.field public static final AREAID:Ljava/lang/String; = "area_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LOCALITY:Ljava/lang/String; = "locality"

.field public static final MARKDATE:Ljava/lang/String; = "mark_date"

.field public static final MARKTIME:Ljava/lang/String; = "mark_time"

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final PROVINCE:Ljava/lang/String; = "province"

.field public static final SUBLOCALITY:Ljava/lang/String; = "sublocality"

.field public static final TABLENAME:Ljava/lang/String; = "usualcity"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 445
    const-string v0, "content://com.vivo.weather.provider/usualcity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Weather$UsualCity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
