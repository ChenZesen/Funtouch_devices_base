.class public final Lcom/vivo/common/provider/Weather$CurrentCity;
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
    name = "CurrentCity"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final POSITION2:Ljava/lang/String; = "position2"

.field public static final TABLENAME:Ljava/lang/String; = "currentcity"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    const-string v0, "content://com.vivo.weather.provider/currentcity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Weather$CurrentCity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method