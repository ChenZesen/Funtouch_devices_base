.class public Lcom/vivo/content/XmlFileReadHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlFileReadHandler.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final BBK_THEME:Ljava/lang/String; = "BBKTHEME"

.field private static final BBK_THEME_ID:Ljava/lang/String; = "id"

.field private static final BBK_THEME_LOWERCASE:Ljava/lang/String; = "bbktheme"

.field private static final BBK_THEME_OPEN:Ljava/lang/String; = "open"

.field private static final BBK_THEME_TITLE:Ljava/lang/String; = "title"

.field static final BUBLE_SIZE:Ljava/lang/String; = "bubblesize"

.field private static final CALENDAR_ICON_REPLACE:Ljava/lang/String; = "calendar"

.field private static final CALENDAR_MONTH_LEFT_OFFSET:Ljava/lang/String; = "monthleftoffset"

.field private static final CALENDAR_MONTH_SHADOW_COLOR:Ljava/lang/String; = "monthtextshadowcolor"

.field private static final CALENDAR_MONTH_SHOW:Ljava/lang/String; = "calendarmonth"

.field private static final CALENDAR_MONTH_TEXTCOLOR:Ljava/lang/String; = "monthtextcolor"

.field private static final CALENDAR_MONTH_TEXTSIZE:Ljava/lang/String; = "monthtextsize"

.field private static final CALENDAR_MONTH_TOP_OFFSET:Ljava/lang/String; = "monthtopoffset"

.field private static final CALENDAR_MONTH_TOP_SHADOW_Y:Ljava/lang/String; = "monthtextshadowy"

.field private static final CALENDAR_WEEK_LEFT_OFFSET:Ljava/lang/String; = "weekleftoffset"

.field private static final CALENDAR_WEEK_SHOW:Ljava/lang/String; = "calendartweek"

.field private static final CALENDAR_WEEK_TEXTCOLOR:Ljava/lang/String; = "weektextcolor"

.field private static final CALENDAR_WEEK_TEXTSIZE:Ljava/lang/String; = "weektextsize"

.field private static final CALENDAR_WEEK_TOP_OFFSET:Ljava/lang/String; = "weektopoffset"

.field static final COLOR_WHEEL:Ljava/lang/String; = "colorwheel"

.field static final COLOR_WHEEL_CAMERA_COLOR:Ljava/lang/String; = "cameracolor"

.field static final COLOR_WHEEL_PART_NUMBER:Ljava/lang/String; = "colorpart"

.field public static final FAVORITE_APP_REFLECTION:Ljava/lang/String; = "favoritereflection"

.field public static final FAVORITE_APP_REFLECTION_MARGINTOP:Ljava/lang/String; = "favoritereflectionmargintop"

.field public static final FAVORITE_APP_TITLE_MARGINTOP:Ljava/lang/String; = "favoritetitlemargintop"

.field private static final FOLDER_ICON_SIZE:Ljava/lang/String; = "foldericonsize"

.field static final FOLDER_PREVIEW_COLUMN:Ljava/lang/String; = "folderpreviewcolumn"

.field static final FOLDER_PREVIEW_HEIGHT:Ljava/lang/String; = "foldericonheight"

.field static final FOLDER_PREVIEW_PADDING:Ljava/lang/String; = "folderpreviewpadding"

.field static final FOLDER_PREVIEW_ROW:Ljava/lang/String; = "folderpreviewrow"

.field static final FOLDER_PREVIEW_WIDTH:Ljava/lang/String; = "foldericonwidth"

.field private static final ICON_ROTATE:Ljava/lang/String; = "iconrotate"

.field private static final ICON_SIZE:Ljava/lang/String; = "ICONSIZE"

.field private static final ICON_SIZE_HEIGHT:Ljava/lang/String; = "height"

.field private static final ICON_SIZE_LEFT_OFFSET:Ljava/lang/String; = "leftoffset"

.field private static final ICON_SIZE_TOP_OFFSET:Ljava/lang/String; = "topoffset"

.field private static final ICON_SIZE_WIDTH:Ljava/lang/String; = "width"

.field static final MAIN_COLOR:Ljava/lang/String; = "maincolor"

.field static final ROUND_CORNER_X:Ljava/lang/String; = "filletX"

.field static final ROUND_CORNER_Y:Ljava/lang/String; = "filletY"

.field static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tempString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 25
    const-string v0, "XmlFileReadHandler"

    iput-object v0, p0, Lcom/vivo/content/XmlFileReadHandler;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 95
    .local v0, "valueString":Ljava/lang/String;
    const-string v1, "width"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "width"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .end local v0    # "valueString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v0    # "valueString":Ljava/lang/String;
    :cond_1
    const-string v1, "height"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "height"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_2
    const-string v1, "calendar"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "calendar"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_3
    const-string v1, "leftoffset"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 105
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "leftoffset"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_4
    const-string v1, "topoffset"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "topoffset"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_5
    const-string v1, "foldericonsize"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 111
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "foldericonsize"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_6
    const-string v1, "calendartweek"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 114
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "calendartweek"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_7
    const-string v1, "weektextsize"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 117
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "weektextsize"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_8
    const-string v1, "weektextcolor"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 120
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "weektextcolor"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 122
    :cond_9
    const-string v1, "weekleftoffset"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 123
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "weekleftoffset"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 125
    :cond_a
    const-string v1, "weektopoffset"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 126
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "weektopoffset"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 128
    :cond_b
    const-string v1, "calendarmonth"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 129
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "calendarmonth"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 131
    :cond_c
    const-string v1, "monthtextsize"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 132
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "monthtextsize"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 134
    :cond_d
    const-string v1, "monthtextcolor"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 135
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "monthtextcolor"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 137
    :cond_e
    const-string v1, "monthleftoffset"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 138
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "monthleftoffset"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 140
    :cond_f
    const-string v1, "monthtopoffset"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 141
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "monthtopoffset"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 143
    :cond_10
    const-string v1, "monthtextshadowcolor"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 144
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "monthtextshadowcolor"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 146
    :cond_11
    const-string v1, "monthtextshadowy"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 147
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "monthtextshadowy"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 148
    :cond_12
    const-string v1, "favoritereflection"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 149
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "favoritereflection"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 150
    :cond_13
    const-string v1, "favoritetitlemargintop"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 151
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "favoritetitlemargintop"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 152
    :cond_14
    const-string v1, "favoritereflectionmargintop"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 153
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "favoritereflectionmargintop"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 155
    :cond_15
    const-string v1, "version"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 156
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "version"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 158
    :cond_16
    const-string v1, "foldericonwidth"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 159
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "foldericonwidth"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 161
    :cond_17
    const-string v1, "foldericonheight"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 162
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "foldericonheight"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 164
    :cond_18
    const-string v1, "folderpreviewcolumn"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 165
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "folderpreviewcolumn"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 167
    :cond_19
    const-string v1, "folderpreviewrow"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 168
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "folderpreviewrow"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 170
    :cond_1a
    const-string v1, "folderpreviewpadding"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 171
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "folderpreviewpadding"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 173
    :cond_1b
    const-string v1, "colorwheel"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 174
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "colorwheel"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 176
    :cond_1c
    const-string v1, "filletX"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 177
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "filletX"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 179
    :cond_1d
    const-string v1, "filletY"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 180
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "filletY"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 182
    :cond_1e
    const-string v1, "bubblesize"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 183
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "bubblesize"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 185
    :cond_1f
    const-string v1, "maincolor"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 186
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "maincolor"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 188
    :cond_20
    const-string v1, "colorpart"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 189
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "colorpart"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 191
    :cond_21
    const-string v1, "cameracolor"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 192
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "cameracolor"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 194
    :cond_22
    const-string v1, "iconrotate"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 195
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "iconrotate"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 197
    :cond_23
    const-string v1, "title"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 198
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 200
    :cond_24
    const-string v1, "open"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 201
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "open"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 203
    :cond_25
    const-string v1, "id"

    iget-object v2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public getThemeInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    .line 86
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v0, "ICONSIZE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bbktheme"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BBKTHEME"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/content/XmlFileReadHandler;->map:Ljava/util/HashMap;

    .line 220
    :cond_1
    iput-object p2, p0, Lcom/vivo/content/XmlFileReadHandler;->tempString:Ljava/lang/String;

    .line 221
    return-void
.end method
