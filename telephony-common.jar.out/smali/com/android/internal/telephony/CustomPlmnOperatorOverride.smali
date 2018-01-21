.class public Lcom/android/internal/telephony/CustomPlmnOperatorOverride;
.super Ljava/lang/Object;
.source "CustomPlmnOperatorOverride.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;
    }
.end annotation


# static fields
.field private static final CUSTOM_PLMN_OVERRIDE_PATH:Ljava/lang/String; = "etc/custom_plmn_operator.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "CustomPlmnOperatorOverride"

.field public static mInstance:Lcom/android/internal/telephony/CustomPlmnOperatorOverride;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomPlmnOperatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mCustomPlmnOperatorMap:Ljava/util/HashMap;

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->updateOperator()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CustomPlmnOperatorOverride;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CustomPlmnOperatorOverride;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->loadOperatorOverrides()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/CustomPlmnOperatorOverride;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    const-class v1, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mInstance:Lcom/android/internal/telephony/CustomPlmnOperatorOverride;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "CustomPlmnOperatorOverride is not init"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 69
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mInstance:Lcom/android/internal/telephony/CustomPlmnOperatorOverride;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-class v1, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mInstance:Lcom/android/internal/telephony/CustomPlmnOperatorOverride;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mInstance:Lcom/android/internal/telephony/CustomPlmnOperatorOverride;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit v1

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadOperatorOverrides()V
    .locals 32

    .prologue
    .line 120
    const-string v29, "CustomPlmnOperatorOverride"

    const-string v30, "loadOperatorOverrides"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v13, -0x1

    .line 125
    .local v13, "localVersion":I
    new-instance v22, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v29

    const-string v30, "etc/custom_plmn_operator.xml"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v22, "operatorFile":Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/io/FileReader;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .local v12, "localOperatorReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 136
    .local v25, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 137
    const-string v29, "operators"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 138
    const/16 v29, 0x0

    const-string v30, "version"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 146
    if-eqz v12, :cond_0

    .line 148
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12

    .line 156
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "custom_plmn_operator.xml"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 157
    .local v17, "onLineFile":Ljava/io/File;
    const/16 v20, -0x1

    .line 160
    .local v20, "onLineVersion":I
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 162
    :try_start_3
    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 169
    .local v18, "onLineOperatorReader":Ljava/io/FileReader;
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 170
    .local v19, "onLineParser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 171
    const-string v29, "operators"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 172
    const/16 v29, 0x0

    const-string v30, "version"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v20

    .line 183
    if-eqz v18, :cond_1

    .line 185
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_14

    .line 194
    .end local v18    # "onLineOperatorReader":Ljava/io/FileReader;
    .end local v19    # "onLineParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :goto_1
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onLineVersion:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " localVersion:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v6, "customPlmnOperatorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;>;"
    move/from16 v0, v20

    if-le v0, v13, :cond_8

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "custom_plmn_operator.xml"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 203
    .local v8, "file":Ljava/io/File;
    :try_start_6
    new-instance v24, Ljava/io/FileReader;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_c

    .line 219
    .local v24, "operatorReader":Ljava/io/FileReader;
    :goto_2
    :try_start_7
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 220
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 221
    const-string v29, "operators"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 223
    :cond_2
    :goto_3
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 225
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 226
    .local v16, "name":Ljava/lang/String;
    const-string v29, "operator"

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v29

    if-nez v29, :cond_9

    .line 262
    if-eqz v24, :cond_3

    .line 264
    :try_start_8
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_16

    .line 270
    .end local v16    # "name":Ljava/lang/String;
    :cond_3
    :goto_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v29

    if-lez v29, :cond_5

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 272
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mCustomPlmnOperatorMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mCustomPlmnOperatorMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->clear()V

    .line 275
    :cond_4
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mCustomPlmnOperatorMap:Ljava/util/HashMap;

    .line 276
    monitor-exit v30
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 278
    .end local v6    # "customPlmnOperatorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;>;"
    .end local v8    # "file":Ljava/io/File;
    .end local v12    # "localOperatorReader":Ljava/io/FileReader;
    .end local v17    # "onLineFile":Ljava/io/File;
    .end local v20    # "onLineVersion":I
    .end local v24    # "operatorReader":Ljava/io/FileReader;
    .end local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :goto_5
    return-void

    .line 129
    :catch_0
    move-exception v7

    .line 130
    .local v7, "e":Ljava/io/FileNotFoundException;
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Can not open "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 139
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "localOperatorReader":Ljava/io/FileReader;
    :catch_1
    move-exception v7

    .line 140
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_a
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception in operator-conf parser "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 146
    if-eqz v12, :cond_5

    .line 148
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 149
    :catch_2
    move-exception v29

    goto :goto_5

    .line 142
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v7

    .line 143
    .local v7, "e":Ljava/io/IOException;
    :try_start_c
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception in operator-conf parser "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 146
    if-eqz v12, :cond_5

    .line 148
    :try_start_d
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_5

    .line 149
    :catch_4
    move-exception v29

    goto :goto_5

    .line 146
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v29

    if-eqz v12, :cond_6

    .line 148
    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_13

    .line 151
    :cond_6
    :goto_6
    throw v29

    .line 163
    .restart local v17    # "onLineFile":Ljava/io/File;
    .restart local v20    # "onLineVersion":I
    .restart local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v7

    .line 164
    .local v7, "e":Ljava/io/FileNotFoundException;
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Can not open "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 173
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v18    # "onLineOperatorReader":Ljava/io/FileReader;
    :catch_6
    move-exception v7

    .line 174
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_f
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception in operator-conf parser "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 183
    if-eqz v18, :cond_5

    .line 185
    :try_start_10
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_5

    .line 186
    :catch_7
    move-exception v29

    goto/16 :goto_5

    .line 176
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v7

    .line 177
    .local v7, "e":Ljava/io/IOException;
    :try_start_11
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception in operator-conf parser "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 183
    if-eqz v18, :cond_5

    .line 185
    :try_start_12
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_5

    .line 186
    :catch_9
    move-exception v29

    goto/16 :goto_5

    .line 179
    .end local v7    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v7

    .line 180
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_13
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception in operator-conf parser "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 183
    if-eqz v18, :cond_5

    .line 185
    :try_start_14
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_5

    .line 186
    :catch_b
    move-exception v29

    goto/16 :goto_5

    .line 183
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :catchall_1
    move-exception v29

    if-eqz v18, :cond_7

    .line 185
    :try_start_15
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_15

    .line 188
    :cond_7
    :goto_7
    throw v29

    .line 204
    .end local v18    # "onLineOperatorReader":Ljava/io/FileReader;
    .restart local v6    # "customPlmnOperatorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;>;"
    .restart local v8    # "file":Ljava/io/File;
    :catch_c
    move-exception v7

    .line 205
    .local v7, "e":Ljava/io/FileNotFoundException;
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Can not open "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 209
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "file":Ljava/io/File;
    :cond_8
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v29

    const-string v30, "etc/custom_plmn_operator.xml"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .restart local v8    # "file":Ljava/io/File;
    :try_start_16
    new-instance v24, Ljava/io/FileReader;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_d

    .restart local v24    # "operatorReader":Ljava/io/FileReader;
    goto/16 :goto_2

    .line 212
    .end local v24    # "operatorReader":Ljava/io/FileReader;
    :catch_d
    move-exception v7

    .line 213
    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Can not open "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 230
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v24    # "operatorReader":Ljava/io/FileReader;
    :cond_9
    const/16 v29, 0x0

    :try_start_17
    const-string v30, "carrier"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "carrier":Ljava/lang/String;
    const/16 v29, 0x0

    const-string v30, "shortName"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 232
    .local v26, "shortName":Ljava/lang/String;
    const/16 v29, 0x0

    const-string v30, "mcc"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 233
    .local v14, "mcc":Ljava/lang/String;
    const/16 v29, 0x0

    const-string v30, "mnc"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 234
    .local v15, "mnc":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 235
    :cond_a
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "loadOperatorOverrides is null carrier = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " mcc = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " mnc = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto/16 :goto_3

    .line 257
    .end local v5    # "carrier":Ljava/lang/String;
    .end local v14    # "mcc":Ljava/lang/String;
    .end local v15    # "mnc":Ljava/lang/String;
    .end local v16    # "name":Ljava/lang/String;
    .end local v26    # "shortName":Ljava/lang/String;
    :catch_e
    move-exception v7

    .line 258
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_18
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception in operator-conf parser "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 262
    if-eqz v24, :cond_3

    .line 264
    :try_start_19
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f

    goto/16 :goto_4

    .line 265
    :catch_f
    move-exception v29

    goto/16 :goto_4

    .line 239
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "carrier":Ljava/lang/String;
    .restart local v14    # "mcc":Ljava/lang/String;
    .restart local v15    # "mnc":Ljava/lang/String;
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v26    # "shortName":Ljava/lang/String;
    :cond_b
    :try_start_1a
    new-instance v23, Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;-><init>()V

    .line 240
    .local v23, "operatorName":Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;
    if-nez v5, :cond_c

    const-string v5, ""

    .end local v5    # "carrier":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v23

    iput-object v5, v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;->longName:Ljava/lang/String;

    .line 241
    if-nez v26, :cond_d

    const-string v26, ""

    .end local v26    # "shortName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;->shortName:Ljava/lang/String;

    .line 242
    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 243
    .local v28, "values":[Ljava/lang/String;
    move-object/from16 v3, v28

    .local v3, "arr$":[Ljava/lang/String;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_8
    if-ge v10, v11, :cond_2

    aget-object v27, v3, v10

    .line 244
    .local v27, "value":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_f

    .line 245
    move-object/from16 v9, v27

    .line 246
    .local v9, "formatMnc":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v29, 0x0

    const/16 v30, 0x30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 251
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    :cond_e
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 253
    .local v21, "operator":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 243
    .end local v9    # "formatMnc":Ljava/lang/String;
    .end local v21    # "operator":Ljava/lang/String;
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 259
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v14    # "mcc":Ljava/lang/String;
    .end local v15    # "mnc":Ljava/lang/String;
    .end local v16    # "name":Ljava/lang/String;
    .end local v23    # "operatorName":Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;
    .end local v27    # "value":Ljava/lang/String;
    .end local v28    # "values":[Ljava/lang/String;
    :catch_10
    move-exception v7

    .line 260
    .local v7, "e":Ljava/io/IOException;
    :try_start_1b
    const-string v29, "CustomPlmnOperatorOverride"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception in operator-conf parser "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 262
    if-eqz v24, :cond_3

    .line 264
    :try_start_1c
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11

    goto/16 :goto_4

    .line 265
    :catch_11
    move-exception v29

    goto/16 :goto_4

    .line 262
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v29

    if-eqz v24, :cond_10

    .line 264
    :try_start_1d
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileReader;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_17

    .line 266
    :cond_10
    :goto_9
    throw v29

    .line 276
    :catchall_3
    move-exception v29

    :try_start_1e
    monitor-exit v30
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    throw v29

    .line 149
    .end local v6    # "customPlmnOperatorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;>;"
    .end local v8    # "file":Ljava/io/File;
    .end local v17    # "onLineFile":Ljava/io/File;
    .end local v20    # "onLineVersion":I
    .end local v24    # "operatorReader":Ljava/io/FileReader;
    :catch_12
    move-exception v29

    goto/16 :goto_0

    .end local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_13
    move-exception v30

    goto/16 :goto_6

    .line 186
    .restart local v17    # "onLineFile":Ljava/io/File;
    .restart local v18    # "onLineOperatorReader":Ljava/io/FileReader;
    .restart local v19    # "onLineParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "onLineVersion":I
    .restart local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_14
    move-exception v29

    goto/16 :goto_1

    .end local v19    # "onLineParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_15
    move-exception v30

    goto/16 :goto_7

    .line 265
    .end local v18    # "onLineOperatorReader":Ljava/io/FileReader;
    .restart local v6    # "customPlmnOperatorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;>;"
    .restart local v8    # "file":Ljava/io/File;
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v24    # "operatorReader":Ljava/io/FileReader;
    :catch_16
    move-exception v29

    goto/16 :goto_4

    .end local v16    # "name":Ljava/lang/String;
    :catch_17
    move-exception v30

    goto :goto_9
.end method


# virtual methods
.method public containsCarrier(Ljava/lang/String;)Z
    .locals 4
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 83
    move-object v1, p1

    .line 84
    .local v1, "formatPlmn":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x3

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mCustomPlmnOperatorMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mCustomPlmnOperatorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3

    .line 94
    :goto_0
    return v2

    .line 93
    :cond_1
    monitor-exit v3

    .line 94
    const/4 v2, 0x0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getOperator(Ljava/lang/String;)Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;
    .locals 7
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    const-string v4, "CustomPlmnOperatorOverride"

    const-string v5, "plmn is empty"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v3, 0x0

    .line 116
    :goto_0
    return-object v3

    .line 103
    :cond_0
    move-object v2, p1

    .line 104
    .local v2, "formatPlmn":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x3

    const/16 v5, 0x30

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    const-string v4, "CustomPlmnOperatorOverride"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "carrier:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " formatPlmn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v3, 0x0

    .line 111
    .local v3, "operatorName":Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;
    iget-object v5, p0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 112
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mCustomPlmnOperatorMap:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, p0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->mCustomPlmnOperatorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride$OperatorName;

    move-object v3, v0

    .line 115
    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public updateOperator()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/CustomPlmnOperatorOverride$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CustomPlmnOperatorOverride$1;-><init>(Lcom/android/internal/telephony/CustomPlmnOperatorOverride;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method
