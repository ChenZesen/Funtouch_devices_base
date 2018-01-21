.class public Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;
.super Ljava/lang/Object;
.source "ExtraAlarmManagerService.java"


# static fields
.field private static IS_LOG_CTRL_OPEN:Z = false

.field private static final TAG:Ljava/lang/String; = "ExtraAlarmManager"

.field private static final UID_WHITE_LIST:[I

.field private static final isUnifiedConfig:Z


# instance fields
.field private ACTION_NAME_BLACK_LIST:[Ljava/lang/String;

.field private ACTION_NAME_WHITE_LIST:[Ljava/lang/String;

.field private DECRYPT_KEY:Ljava/lang/String;

.field private PACKAGE_NAME_BLACK_LIST:[Ljava/lang/String;

.field private PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mPackageWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pkgPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-string v1, "persist.sys.log.ctrl"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->IS_LOG_CTRL_OPEN:Z

    .line 52
    const-string v1, "persist.vivo.unifiedconfig.sec"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->isUnifiedConfig:Z

    .line 58
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 59
    .local v0, "ai":[I
    const/4 v1, 0x0

    const/16 v2, 0x3e8

    aput v2, v0, v1

    .line 60
    const/4 v1, 0x1

    const/16 v2, 0x3e9

    aput v2, v0, v1

    .line 61
    sput-object v0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->UID_WHITE_LIST:[I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v1, "/data/bbkcore/package_white_black_list.xml"

    iput-object v1, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->pkgPath:Ljava/lang/String;

    .line 53
    const-string v1, "vivo@szbg2014666"

    iput-object v1, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->DECRYPT_KEY:Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->mPackageWhiteList:Ljava/util/ArrayList;

    .line 67
    const-string v1, "ExtraAlarmManager"

    const-string v2, "Init the ExtraAlarmManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-object p1, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->mContext:Landroid/content/Context;

    .line 69
    iget-object v1, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30906bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->mPackageWhiteList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_0
    const-string v1, "persist.sys.log.ctrl"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->IS_LOG_CTRL_OPEN:Z

    .line 78
    invoke-virtual {p0}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->updatePackageList()V

    .line 79
    return-void
.end method

.method private ReadXmlbyPullServeice(Ljava/io/InputStream;)V
    .locals 19
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 114
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    .line 115
    .local v10, "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 116
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v16, "utf-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 117
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 118
    .local v5, "eventCode":I
    const/4 v8, 0x0

    .line 119
    .local v8, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 120
    .local v12, "tmpPkg":Ljava/util/ArrayList;
    const/4 v15, 0x0

    .line 121
    .local v15, "whitePkg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 122
    .local v3, "blackPkg":Ljava/lang/String;
    const/4 v13, 0x0

    .line 123
    .local v13, "whiteAction":Ljava/lang/String;
    const/4 v2, 0x0

    .line 124
    .local v2, "blackAction":Ljava/lang/String;
    :goto_0
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v5, v0, :cond_1

    .line 125
    packed-switch v5, :pswitch_data_0

    .line 185
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 128
    :pswitch_1
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "tmpPkg":Ljava/util/ArrayList;
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .restart local v12    # "tmpPkg":Ljava/util/ArrayList;
    goto :goto_1

    .line 131
    :pswitch_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 132
    const-string v16, "resource"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 133
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 187
    .end local v2    # "blackAction":Ljava/lang/String;
    .end local v3    # "blackPkg":Ljava/lang/String;
    .end local v5    # "eventCode":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12    # "tmpPkg":Ljava/util/ArrayList;
    .end local v13    # "whiteAction":Ljava/lang/String;
    .end local v15    # "whitePkg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 188
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 192
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    return-void

    .line 134
    .restart local v2    # "blackAction":Ljava/lang/String;
    .restart local v3    # "blackPkg":Ljava/lang/String;
    .restart local v5    # "eventCode":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "tmpPkg":Ljava/util/ArrayList;
    .restart local v13    # "whiteAction":Ljava/lang/String;
    .restart local v15    # "whitePkg":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v16, "string-array"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    const-string v16, "white_list"

    const-string v17, ""

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 135
    const-string v16, ""

    const-string v17, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 136
    :cond_3
    const-string v16, "string-array"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const-string v16, "black_list"

    const-string v17, ""

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 137
    const-string v16, ""

    const-string v17, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 138
    :cond_4
    const-string v16, "string-array"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string v16, "white_list_action"

    const-string v17, ""

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 139
    const-string v16, ""

    const-string v17, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 140
    :cond_5
    const-string v16, "string-array"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const-string v16, "black_list_action"

    const-string v17, ""

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 141
    const-string v16, ""

    const-string v17, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 142
    :cond_6
    const-string v16, "item"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 143
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 144
    .local v11, "tmp1":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 189
    .end local v2    # "blackAction":Ljava/lang/String;
    .end local v3    # "blackPkg":Ljava/lang/String;
    .end local v5    # "eventCode":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v11    # "tmp1":Ljava/lang/String;
    .end local v12    # "tmpPkg":Ljava/util/ArrayList;
    .end local v13    # "whiteAction":Ljava/lang/String;
    .end local v15    # "whitePkg":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 190
    .local v7, "ioe":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 148
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v2    # "blackAction":Ljava/lang/String;
    .restart local v3    # "blackPkg":Ljava/lang/String;
    .restart local v5    # "eventCode":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "tmpPkg":Ljava/util/ArrayList;
    .restart local v13    # "whiteAction":Ljava/lang/String;
    .restart local v15    # "whitePkg":Ljava/lang/String;
    :pswitch_3
    if-eqz v15, :cond_9

    .line 149
    :try_start_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    .line 150
    .local v14, "whiteArray":[Ljava/lang/String;
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/String;

    move-object v14, v0

    .line 153
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_8

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->mPackageWhiteList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    aget-object v17, v14, v6

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->mPackageWhiteList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    aget-object v17, v14, v6

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 158
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->mPackageWhiteList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    .line 161
    const/4 v15, 0x0

    .line 162
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 164
    .end local v6    # "i":I
    .end local v14    # "whiteArray":[Ljava/lang/String;
    :cond_9
    if-eqz v3, :cond_a

    .line 165
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->PACKAGE_NAME_BLACK_LIST:[Ljava/lang/String;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->PACKAGE_NAME_BLACK_LIST:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->PACKAGE_NAME_BLACK_LIST:[Ljava/lang/String;

    .line 167
    const/4 v3, 0x0

    .line 168
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 170
    :cond_a
    if-eqz v13, :cond_b

    .line 171
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_WHITE_LIST:[Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_WHITE_LIST:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_WHITE_LIST:[Ljava/lang/String;

    .line 173
    const/4 v13, 0x0

    .line 174
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 176
    :cond_b
    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_BLACK_LIST:[Ljava/lang/String;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_BLACK_LIST:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_BLACK_LIST:[Ljava/lang/String;

    .line 179
    const/4 v2, 0x0

    .line 180
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private decrypt([B[B)[B
    .locals 3
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 261
    .local v1, "k":Ljava/security/Key;
    const-string v2, "AES/ECB/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 262
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 263
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method private inActionNameBlackList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v3, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_BLACK_LIST:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v2

    .line 386
    :cond_1
    if-eqz p1, :cond_0

    .line 387
    iget-object v3, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_BLACK_LIST:[Ljava/lang/String;

    array-length v1, v3

    .line 388
    .local v1, "sizes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 390
    iget-object v3, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_BLACK_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    const-string v2, "ExtraAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": is in the action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v2, 0x1

    goto :goto_0

    .line 388
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private inActionNameWhiteList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v3, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_WHITE_LIST:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v2

    .line 369
    :cond_1
    if-eqz p1, :cond_0

    .line 370
    iget-object v3, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_WHITE_LIST:[Ljava/lang/String;

    array-length v1, v3

    .line 371
    .local v1, "sizes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 373
    iget-object v3, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ACTION_NAME_WHITE_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    const-string v2, "ExtraAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": is the action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v2, 0x1

    goto :goto_0

    .line 371
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private inPackageNameWhiteList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 329
    if-eqz p1, :cond_3

    .line 330
    iget-object v3, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    array-length v1, v3

    .line 331
    .local v1, "sizes":I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "clock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.systemui"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    :cond_0
    const-string v3, "ExtraAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": is package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v1    # "sizes":I
    :goto_0
    return v2

    .line 335
    .restart local v1    # "sizes":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 337
    iget-object v3, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    const-string v3, "ExtraAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": is package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    .end local v0    # "i":I
    .end local v1    # "sizes":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private inUidWhiteList(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 316
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    sget-object v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->UID_WHITE_LIST:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 318
    sget-object v1, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->UID_WHITE_LIST:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 319
    const-string v1, "ExtraAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is the uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v1, 0x1

    .line 324
    :goto_1
    return v1

    .line 316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private readDataFromUC()[B
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 215
    iget-object v1, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AlarmManager"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "1.0"

    aput-object v2, v4, v1

    const/4 v1, 0x3

    const-string v2, "alarmwake"

    aput-object v2, v4, v1

    .line 217
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 218
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v12, "content://com.vivo.daemonservice.unifiedconfigprovider/configs"

    .line 219
    .local v12, "uri":Ljava/lang/String;
    const-string v8, ""

    .local v8, "fileId":Ljava/lang/String;
    const-string v11, ""

    .local v11, "targetIdentifier":Ljava/lang/String;
    const-string v9, ""

    .line 220
    .local v9, "fileVersion":Ljava/lang/String;
    const/4 v10, 0x0

    .line 222
    .local v10, "filecontent":[B
    :try_start_0
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 224
    if-eqz v6, :cond_3

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 227
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    const-string v1, "id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 229
    const-string v1, "identifier"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 231
    const-string v1, "fileversion"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 233
    const-string v1, "filecontent"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v7

    .line 246
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ExtraAlarmManager"

    const-string v2, "open database error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    if-eqz v6, :cond_0

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 253
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    if-eqz v10, :cond_5

    .line 256
    .end local v10    # "filecontent":[B
    :goto_2
    return-object v10

    .line 239
    .restart local v10    # "filecontent":[B
    :cond_1
    :try_start_2
    const-string v1, "ExtraAlarmManager"

    const-string v2, "no data!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    :cond_2
    :goto_3
    if-eqz v6, :cond_0

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 242
    :cond_3
    :try_start_3
    const-string v1, "ExtraAlarmManager"

    const-string v2, "cursor is null, lock failed, continue checking for update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 249
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    :cond_5
    move-object v10, v13

    .line 256
    goto :goto_2
.end method


# virtual methods
.method public convertType(IJJLandroid/app/PendingIntent;)I
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 270
    move/from16 v7, p1

    .line 271
    .local v7, "retType":I
    invoke-static {}, Landroid/os/FtBuild;->isOverSeas()Z

    move-result v10

    if-eqz v10, :cond_0

    move v8, v7

    .line 310
    .end local v7    # "retType":I
    .local v8, "retType":I
    :goto_0
    return v8

    .line 273
    .end local v8    # "retType":I
    .restart local v7    # "retType":I
    :cond_0
    if-eqz p1, :cond_1

    const/4 v10, 0x2

    move/from16 v0, p1

    if-ne v0, v10, :cond_4

    :cond_1
    if-eqz p6, :cond_4

    .line 274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 275
    .local v5, "j":I
    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, "packageName":Ljava/lang/String;
    const-string v10, "ExtraAlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Package name is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 278
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "actionName":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 280
    .local v3, "compName":Landroid/content/ComponentName;
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->inActionNameWhiteList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 299
    :cond_2
    :goto_3
    sget-boolean v10, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->IS_LOG_CTRL_OPEN:Z

    if-eqz v10, :cond_4

    .line 300
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 301
    .local v9, "triggerAtDate":Ljava/lang/String;
    const/4 v10, 0x2

    move/from16 v0, p1

    if-ne v0, v10, :cond_3

    .line 302
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long v12, v12, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 305
    :cond_3
    const-string v10, "ExtraAlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "triggerAtTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " package = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " action = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ComponentName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v2    # "actionName":Ljava/lang/String;
    .end local v3    # "compName":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "j":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "triggerAtDate":Ljava/lang/String;
    :cond_4
    const-string v10, "ExtraAlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 310
    .end local v7    # "retType":I
    .restart local v8    # "retType":I
    goto/16 :goto_0

    .line 278
    .end local v8    # "retType":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "j":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "retType":I
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 279
    .restart local v2    # "actionName":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 281
    .restart local v3    # "compName":Landroid/content/ComponentName;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->inActionNameBlackList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 282
    const/4 v10, 0x2

    move/from16 v0, p1

    if-ne v0, v10, :cond_8

    .line 283
    const/4 v7, 0x3

    goto/16 :goto_3

    .line 284
    :cond_8
    if-nez p1, :cond_2

    .line 285
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 290
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->inUidWhiteList(I)Z

    move-result v10

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->inPackageNameWhiteList(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 294
    const/4 v10, 0x2

    move/from16 v0, p1

    if-ne v0, v10, :cond_a

    .line 295
    const/4 v7, 0x3

    goto/16 :goto_3

    .line 296
    :cond_a
    if-nez p1, :cond_2

    .line 297
    const/4 v7, 0x1

    goto/16 :goto_3
.end method

.method readAlarmFileFromUC()V
    .locals 7

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->readDataFromUC()[B

    move-result-object v2

    .line 196
    .local v2, "filecontent":[B
    if-eqz v2, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "data":[B
    :try_start_0
    iget-object v4, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->DECRYPT_KEY:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->decrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 205
    :goto_0
    if-eqz v0, :cond_0

    .line 206
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v4}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ReadXmlbyPullServeice(Ljava/io/InputStream;)V

    .line 207
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vivo.daemonService.uc.read.alarm.ok"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    const-string v4, "ExtraAlarmManager"

    const-string v5, "read config sucess"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v0    # "data":[B
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 201
    .restart local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ExtraAlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updatePackageList()V
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Landroid/os/FtBuild;->isOverSeas()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v2, "ExtraAlarmManager"

    const-string v3, "update List ..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-boolean v2, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->isUnifiedConfig:Z

    if-nez v2, :cond_3

    .line 87
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->pkgPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->ReadXmlbyPullServeice(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    :try_start_1
    const-string v2, "ExtraAlarmManager"

    const-string v3, "Use the default package list"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 97
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    const-string v2, "sys.boot_completed"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->readAlarmFileFromUC()V

    goto :goto_0
.end method

.method public updatePackageList(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 102
    sget-boolean v2, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->isUnifiedConfig:Z

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 104
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "actionName":Ljava/lang/String;
    :goto_0
    const-string v2, "com.vivo.daemonService.uc.read.alarm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->updatePackageList()V

    .line 111
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 104
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/services/extraalarm/ExtraAlarmManagerService;->updatePackageList()V

    goto :goto_1
.end method
