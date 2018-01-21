.class public Lcom/android/server/am/firewall/VivoCacheFileMgr;
.super Ljava/lang/Object;
.source "VivoCacheFileMgr.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "VivoFirewall"

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoCacheFileMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method private closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 4
    .param p1, "closeable"    # Ljava/lang/AutoCloseable;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 31
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoCacheFileMgr;->TAG:Ljava/lang/String;

    const-string v2, "VivoCacheFileRW closeQuietly"

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public readConfigXmlFile(Ljava/io/File;Ljava/util/HashMap;)Z
    .locals 22
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/firewall/VivoAppRuleItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "hashmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;"
    const/4 v14, 0x1

    .line 41
    .local v14, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_0

    if-nez p2, :cond_1

    .line 42
    :cond_0
    const/16 v19, 0x0

    .line 150
    :goto_0
    return v19

    .line 45
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    .line 47
    const/4 v15, 0x0

    .line 49
    .local v15, "str":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    .end local v15    # "str":Ljava/io/FileInputStream;
    .local v16, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 51
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 54
    :cond_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type":I
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 58
    :cond_3
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/firewall/VivoCacheFileMgr;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "No start tag found in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    const/16 v19, 0x0

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/am/firewall/VivoCacheFileMgr;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 63
    :cond_4
    :try_start_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 64
    .local v10, "outerDepth":I
    const/16 v19, 0x0

    const-string v20, "on"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "attr":Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 66
    const/4 v14, 0x1

    .line 72
    :cond_5
    :goto_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v10, :cond_12

    .line 74
    :cond_6
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 79
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 80
    .local v17, "tagName":Ljava/lang/String;
    const-string v19, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 81
    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 82
    .local v12, "packageName":Ljava/lang/String;
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 83
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 145
    .end local v5    # "attr":Ljava/lang/String;
    .end local v10    # "outerDepth":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_0
    move-exception v7

    move-object/from16 v15, v16

    .line 146
    .end local v16    # "str":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/am/firewall/VivoCacheFileMgr;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    move/from16 v19, v14

    .line 150
    goto/16 :goto_0

    .line 68
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v5    # "attr":Ljava/lang/String;
    .restart local v10    # "outerDepth":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "str":Ljava/io/FileInputStream;
    .restart local v18    # "type":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    .line 86
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v17    # "tagName":Ljava/lang/String;
    :cond_8
    :try_start_4
    new-instance v4, Lcom/android/server/am/firewall/VivoAppRuleItem;

    invoke-direct {v4, v12}, Lcom/android/server/am/firewall/VivoAppRuleItem;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, "appRuleItem":Lcom/android/server/am/firewall/VivoAppRuleItem;
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 90
    .local v11, "packageDepth":I
    :cond_9
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v11, :cond_11

    .line 92
    :cond_a
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 97
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 98
    const-string v19, "bringup_pkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 100
    const/16 v19, 0x0

    const-string v20, "allowed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 101
    .local v2, "allowBringup":Ljava/lang/String;
    const/4 v8, -0x1

    .line 103
    .local v8, "kind":I
    const/16 v19, 0x0

    :try_start_5
    const-string v20, "kind"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v8

    .line 107
    :goto_4
    const/16 v19, 0x1

    :try_start_6
    move/from16 v0, v19

    invoke-virtual {v4, v8, v0}, Lcom/android/server/am/firewall/VivoAppRuleItem;->setHasType(IZ)V

    .line 108
    if-nez v8, :cond_b

    .line 109
    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 110
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/server/am/firewall/VivoAppRuleItem;->setAllowBringup(Z)V

    .line 115
    :cond_b
    :goto_5
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 117
    .local v6, "bringupDepth":I
    :cond_c
    :goto_6
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v6, :cond_9

    .line 119
    :cond_d
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 123
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 124
    const-string v19, "item"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 125
    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "name":Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "allowed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "allowed":Ljava/lang/String;
    if-nez v8, :cond_10

    .line 128
    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 129
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v9, v0}, Lcom/android/server/am/firewall/VivoAppRuleItem;->putBringupRule(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 148
    .end local v2    # "allowBringup":Ljava/lang/String;
    .end local v3    # "allowed":Ljava/lang/String;
    .end local v4    # "appRuleItem":Lcom/android/server/am/firewall/VivoAppRuleItem;
    .end local v5    # "attr":Ljava/lang/String;
    .end local v6    # "bringupDepth":I
    .end local v8    # "kind":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "outerDepth":I
    .end local v11    # "packageDepth":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "type":I
    :catchall_0
    move-exception v19

    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/am/firewall/VivoCacheFileMgr;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v19

    .line 104
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v2    # "allowBringup":Ljava/lang/String;
    .restart local v4    # "appRuleItem":Lcom/android/server/am/firewall/VivoAppRuleItem;
    .restart local v5    # "attr":Ljava/lang/String;
    .restart local v8    # "kind":I
    .restart local v10    # "outerDepth":I
    .restart local v11    # "packageDepth":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "str":Ljava/io/FileInputStream;
    .restart local v17    # "tagName":Ljava/lang/String;
    .restart local v18    # "type":I
    :catch_1
    move-exception v7

    .line 105
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/4 v8, -0x1

    goto/16 :goto_4

    .line 112
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    const/16 v19, 0x0

    :try_start_7
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/server/am/firewall/VivoAppRuleItem;->setAllowBringup(Z)V

    goto :goto_5

    .line 131
    .restart local v3    # "allowed":Ljava/lang/String;
    .restart local v6    # "bringupDepth":I
    .restart local v9    # "name":Ljava/lang/String;
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v9, v0}, Lcom/android/server/am/firewall/VivoAppRuleItem;->putBringupRule(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 133
    :cond_10
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_c

    .line 134
    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/firewall/VivoAppRuleItem;->addToTypeList(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 140
    .end local v2    # "allowBringup":Ljava/lang/String;
    .end local v3    # "allowed":Ljava/lang/String;
    .end local v6    # "bringupDepth":I
    .end local v8    # "kind":I
    .end local v9    # "name":Ljava/lang/String;
    :cond_11
    invoke-virtual {v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 148
    .end local v4    # "appRuleItem":Lcom/android/server/am/firewall/VivoAppRuleItem;
    .end local v11    # "packageDepth":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v17    # "tagName":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/am/firewall/VivoCacheFileMgr;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v15, v16

    .line 149
    .end local v16    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 148
    .end local v5    # "attr":Ljava/lang/String;
    .end local v10    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "type":I
    :catchall_1
    move-exception v19

    goto :goto_7

    .line 145
    :catch_2
    move-exception v7

    goto/16 :goto_2
.end method

.method public writeConfigXmlFile(Ljava/util/HashMap;Ljava/io/File;Z)V
    .locals 24
    .param p2, "file"    # Ljava/io/File;
    .param p3, "on"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/firewall/VivoAppRuleItem;",
            ">;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "hashmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_2

    .line 161
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 166
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .line 167
    .local v6, "fstr":Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 169
    .local v15, "str":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .local v7, "fstr":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v16, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    .end local v15    # "str":Ljava/io/BufferedOutputStream;
    .local v16, "str":Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v14, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v14}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 172
    .local v14, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v21, "utf-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 173
    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 174
    const-string v21, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 175
    const/16 v21, 0x0

    const-string v22, "app_rules"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    if-eqz p3, :cond_5

    .line 177
    const/16 v21, 0x0

    const-string v22, "on"

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 183
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;>;"
    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 184
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 185
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 186
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/firewall/VivoAppRuleItem;

    .line 187
    .local v20, "value":Lcom/android/server/am/firewall/VivoAppRuleItem;
    if-eqz v20, :cond_3

    .line 189
    const/16 v21, 0x0

    const-string v22, "package"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 193
    const/16 v21, 0x0

    const-string v22, "bringup_pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowBringup()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 195
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    :goto_4
    const/16 v21, 0x0

    const-string v22, "kind"

    const-string v23, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getBringupRule()Ljava/util/HashMap;

    move-result-object v19

    .line 201
    .local v19, "subHashmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 203
    .local v18, "subEntryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 204
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 205
    .local v17, "subEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 206
    .local v3, "bringupPackage":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    .line 207
    .local v13, "result":Ljava/lang/Boolean;
    const/16 v21, 0x0

    const-string v22, "item"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 210
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    :goto_6
    const/16 v21, 0x0

    const-string v22, "item"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 298
    .end local v3    # "bringupPackage":Ljava/lang/String;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;"
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "result":Ljava/lang/Boolean;
    .end local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v17    # "subEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v18    # "subEntryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v19    # "subHashmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v20    # "value":Lcom/android/server/am/firewall/VivoAppRuleItem;
    :catch_0
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/io/BufferedOutputStream;
    .restart local v15    # "str":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 299
    .end local v7    # "fstr":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    :goto_7
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 302
    if-eqz v15, :cond_0

    .line 303
    :try_start_5
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->flush()V

    .line 304
    if-eqz v6, :cond_4

    .line 305
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 307
    :cond_4
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 310
    :catch_1
    move-exception v4

    .line 311
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 162
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .end local v15    # "str":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v4

    .line 163
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 179
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "fstr":Ljava/io/FileOutputStream;
    .restart local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v16    # "str":Ljava/io/BufferedOutputStream;
    :cond_5
    const/16 v21, 0x0

    :try_start_6
    const-string v22, "on"

    const-string v23, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 301
    .end local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v21

    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/io/BufferedOutputStream;
    .restart local v15    # "str":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 302
    .end local v7    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    :goto_8
    if-eqz v15, :cond_7

    .line 303
    :try_start_7
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->flush()V

    .line 304
    if-eqz v6, :cond_6

    .line 305
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 307
    :cond_6
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 312
    :cond_7
    :goto_9
    throw v21

    .line 197
    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .end local v15    # "str":Ljava/io/BufferedOutputStream;
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;"
    .restart local v7    # "fstr":Ljava/io/FileOutputStream;
    .restart local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;>;"
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v16    # "str":Ljava/io/BufferedOutputStream;
    .restart local v20    # "value":Lcom/android/server/am/firewall/VivoAppRuleItem;
    :cond_8
    const/16 v21, 0x0

    :try_start_8
    const-string v22, "allowed"

    const-string v23, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_4

    .line 212
    .restart local v3    # "bringupPackage":Ljava/lang/String;
    .restart local v13    # "result":Ljava/lang/Boolean;
    .restart local v17    # "subEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v18    # "subEntryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .restart local v19    # "subHashmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_9
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .line 216
    .end local v3    # "bringupPackage":Ljava/lang/String;
    .end local v13    # "result":Ljava/lang/Boolean;
    .end local v17    # "subEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_a
    const/16 v21, 0x0

    const-string v22, "bringup_pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    .end local v18    # "subEntryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v19    # "subHashmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_b
    :goto_a
    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 256
    const/16 v21, 0x0

    const-string v22, "bringup_pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowBringup()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 258
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    :goto_b
    const/16 v21, 0x0

    const-string v22, "kind"

    const-string v23, "3"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getTypeList(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 264
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_13

    .line 265
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 266
    .local v9, "item":Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "item"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 267
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    const/16 v21, 0x0

    const-string v22, "item"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c

    .line 217
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 218
    const/16 v21, 0x0

    const-string v22, "bringup_pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowBringup()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 220
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    :goto_d
    const/16 v21, 0x0

    const-string v22, "kind"

    const-string v23, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getTypeList(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 226
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_e

    .line 227
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 228
    .restart local v9    # "item":Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "item"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    const/16 v21, 0x0

    const-string v22, "item"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_e

    .line 222
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d

    .line 234
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    const/16 v21, 0x0

    const-string v22, "bringup_pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_a

    .line 235
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 236
    const/16 v21, 0x0

    const-string v22, "bringup_pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowBringup()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 238
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    :goto_f
    const/16 v21, 0x0

    const-string v22, "kind"

    const-string v23, "2"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getTypeList(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 244
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_11

    .line 245
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 246
    .restart local v9    # "item":Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "item"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 247
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    const/16 v21, 0x0

    const-string v22, "item"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_10

    .line 240
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .line 252
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    const/16 v21, 0x0

    const-string v22, "bringup_pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_a

    .line 260
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_b

    .line 272
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    const/16 v21, 0x0

    const-string v22, "bringup_pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14
    :goto_11
    const/16 v21, 0x0

    const-string v22, "package"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3

    .line 273
    :cond_15
    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 274
    const/16 v21, 0x0

    const-string v22, "bringup_pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowBringup()Z

    move-result v21

    if-eqz v21, :cond_16

    .line 276
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    :goto_12
    const/16 v21, 0x0

    const-string v22, "kind"

    const-string v23, "4"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getTypeList(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 282
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_17

    .line 283
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 284
    .restart local v9    # "item":Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "item"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    const/16 v21, 0x0

    const-string v22, "item"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_13

    .line 278
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_16
    const/16 v21, 0x0

    const-string v22, "allowed"

    const-string v23, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12

    .line 290
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_17
    const/16 v21, 0x0

    const-string v22, "bringup_pkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_11

    .line 295
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "value":Lcom/android/server/am/firewall/VivoAppRuleItem;
    :cond_18
    const/16 v21, 0x0

    const-string v22, "app_rules"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 302
    if-eqz v16, :cond_1a

    .line 303
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedOutputStream;->flush()V

    .line 304
    if-eqz v7, :cond_19

    .line 305
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 307
    :cond_19
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_1a
    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/io/BufferedOutputStream;
    .restart local v15    # "str":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 312
    .end local v7    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 310
    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .end local v15    # "str":Ljava/io/BufferedOutputStream;
    .restart local v7    # "fstr":Ljava/io/FileOutputStream;
    .restart local v16    # "str":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v4

    .line 311
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/io/BufferedOutputStream;
    .restart local v15    # "str":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 313
    .end local v7    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 310
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;>;"
    .end local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_4
    move-exception v4

    .line 311
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 301
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v21

    goto/16 :goto_8

    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .restart local v7    # "fstr":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v21

    move-object v6, v7

    .end local v7    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .line 298
    :catch_5
    move-exception v4

    goto/16 :goto_7

    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .restart local v7    # "fstr":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    move-object v6, v7

    .end local v7    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_7
.end method
