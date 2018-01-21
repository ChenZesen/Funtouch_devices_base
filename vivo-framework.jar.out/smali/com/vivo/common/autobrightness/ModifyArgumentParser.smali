.class public Lcom/vivo/common/autobrightness/ModifyArgumentParser;
.super Ljava/lang/Object;
.source "ModifyArgumentParser.java"


# static fields
.field public static final KEY_CHANGE_BAR:Ljava/lang/String; = "bar"

.field public static final KEY_CHANGE_CNEED:Ljava/lang/String; = "cneed"

.field public static final KEY_CHANGE_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_CHANGE_GM:Ljava/lang/String; = "gm"

.field public static final KEY_CHANGE_STOP:Ljava/lang/String; = "stop"

.field public static final KEY_PARAM:Ljava/lang/String; = "param"

.field public static final KEY_POINT:Ljava/lang/String; = "point"

.field public static final KEY_USER_SET_BRI:Ljava/lang/String; = "set_bri"

.field public static final TAG:Ljava/lang/String; = "ModifyArgumentParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static argumentToJsonObject(Lcom/vivo/common/autobrightness/ModifyArgument;)Lorg/json/JSONObject;
    .locals 14
    .param p0, "argument"    # Lcom/vivo/common/autobrightness/ModifyArgument;

    .prologue
    .line 36
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v6, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    array-length v10, v10

    if-lez v10, :cond_1

    .line 39
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 40
    .local v0, "bar":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    array-length v10, v10

    if-ge v4, v10, :cond_0

    .line 41
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    aget v10, v10, v4

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    :cond_0
    const-string v10, "bar"

    invoke-virtual {v6, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .end local v0    # "bar":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_1
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    array-length v10, v10

    if-lez v10, :cond_3

    .line 48
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 49
    .local v3, "gm":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    array-length v10, v10

    if-ge v4, v10, :cond_2

    .line 50
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    aget v10, v10, v4

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 49
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 52
    :cond_2
    const-string v10, "gm"

    invoke-virtual {v6, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .end local v3    # "gm":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_3
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    array-length v10, v10

    if-lez v10, :cond_5

    .line 56
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 57
    .local v1, "cneed":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    array-length v10, v10

    if-ge v4, v10, :cond_4

    .line 58
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    aget v10, v10, v4

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 57
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 60
    :cond_4
    const-string v10, "cneed"

    invoke-virtual {v6, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .end local v1    # "cneed":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_5
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    array-length v10, v10

    if-lez v10, :cond_7

    .line 64
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 65
    .local v9, "point":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    array-length v10, v10

    if-ge v4, v10, :cond_6

    .line 66
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v10, v10, v4

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 68
    :cond_6
    const-string v10, "point"

    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .end local v4    # "i":I
    .end local v9    # "point":Lorg/json/JSONArray;
    :cond_7
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    array-length v10, v10

    if-lez v10, :cond_b

    .line 73
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 74
    .local v8, "paramArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    array-length v10, v10

    if-ge v4, v10, :cond_a

    .line 75
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v10, v10, v4

    array-length v10, v10

    if-lez v10, :cond_9

    .line 76
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 77
    .local v7, "param":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v10, v10, v4

    array-length v10, v10

    if-ge v5, v10, :cond_8

    .line 78
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v10, v10, v4

    aget-wide v10, v10, v5

    sget-wide v12, Lcom/vivo/common/autobrightness/ModifyArgument;->VAR:D

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    sget-wide v12, Lcom/vivo/common/autobrightness/ModifyArgument;->VAR:D

    div-double/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 80
    :cond_8
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 74
    .end local v5    # "j":I
    .end local v7    # "param":Lorg/json/JSONArray;
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 83
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 93
    .end local v4    # "i":I
    .end local v8    # "paramArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "ex":Lorg/json/JSONException;
    const-string v10, "ModifyArgumentParser"

    const-string v11, "argumentToJsonString e: "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v6, 0x0

    .end local v2    # "ex":Lorg/json/JSONException;
    .end local v6    # "jsonObj":Lorg/json/JSONObject;
    :goto_7
    return-object v6

    .line 86
    .restart local v4    # "i":I
    .restart local v6    # "jsonObj":Lorg/json/JSONObject;
    .restart local v8    # "paramArray":Lorg/json/JSONArray;
    :cond_a
    :try_start_1
    const-string v10, "param"

    invoke-virtual {v6, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    .end local v4    # "i":I
    .end local v8    # "paramArray":Lorg/json/JSONArray;
    :cond_b
    const-string v10, "count"

    iget v11, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_count:I

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v10, "stop"

    iget v11, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v10, "set_bri"

    iget-boolean v11, p0, Lcom/vivo/common/autobrightness/ModifyArgument;->bUserSettingBrightness:Z

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7
.end method

.method private getParamKeyNo(I)Ljava/lang/String;
    .locals 2
    .param p1, "no"    # I

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public argumentToJsonString(Lcom/vivo/common/autobrightness/ModifyArgument;)Ljava/lang/String;
    .locals 4
    .param p1, "argument"    # Lcom/vivo/common/autobrightness/ModifyArgument;

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 101
    const-string v2, "ModifyArgumentParser"

    const-string v3, "argumentToJsonString argument is null. return \"\""

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, ""

    .line 110
    :cond_0
    :goto_0
    return-object v1

    .line 104
    :cond_1
    const-string v1, ""

    .line 106
    .local v1, "ret":Ljava/lang/String;
    invoke-static {p1}, Lcom/vivo/common/autobrightness/ModifyArgumentParser;->argumentToJsonObject(Lcom/vivo/common/autobrightness/ModifyArgument;)Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    .local v0, "obj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public stringToArgument(Ljava/lang/String;Lcom/vivo/common/autobrightness/ModifyArgument;)Z
    .locals 28
    .param p1, "argStr"    # Ljava/lang/String;
    .param p2, "argument"    # Lcom/vivo/common/autobrightness/ModifyArgument;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    if-nez p2, :cond_3

    .line 115
    :cond_0
    const-string v25, "ModifyArgumentParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "stringToArgument invalid arg: jsonStr=\""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-nez p1, :cond_1

    const-string p1, "NULL"

    .end local p1    # "argStr":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "\" "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    if-nez p2, :cond_2

    const-string v24, "NULL"

    :goto_0
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/16 v24, 0x0

    .line 275
    :goto_1
    return v24

    .line 115
    :cond_2
    const-string v24, "NOT_NUL"

    goto :goto_0

    .line 122
    .restart local p1    # "argStr":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    .line 123
    .local v15, "tmpBar":[I
    const/16 v18, 0x0

    .line 124
    .local v18, "tmpGm":[I
    const/16 v16, 0x0

    .line 125
    .local v16, "tmpCneed":[I
    const/16 v20, 0x0

    .line 126
    .local v20, "tmpPoint":[I
    const/16 v19, 0x0

    :try_start_0
    check-cast v19, [[D

    .line 127
    .local v19, "tmpParam":[[D
    const/high16 v17, -0x80000000

    .line 128
    .local v17, "tmpCount":I
    const/high16 v21, -0x80000000

    .line 129
    .local v21, "tmpStop":I
    sget-object v24, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 131
    .local v22, "tmpUserSet":Z
    new-instance v23, Lorg/json/JSONTokener;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 132
    .local v23, "tokener":Lorg/json/JSONTokener;
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    .line 134
    .local v10, "obj":Lorg/json/JSONObject;
    const-string v24, "bar"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 135
    .local v2, "bar":Lorg/json/JSONArray;
    if-eqz v2, :cond_8

    .line 136
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 137
    .local v9, "len":I
    if-lez v9, :cond_5

    .line 138
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v9, v0, :cond_4

    .line 139
    const-string v24, "ModifyArgumentParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "stringToArgument bar len("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") large then "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v9, v0

    .line 142
    :cond_4
    new-array v15, v9, [I

    .line 143
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_2
    if-ge v7, v9, :cond_6

    .line 144
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v24

    aput v24, v15, v7

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 147
    .end local v7    # "index":I
    :cond_5
    const-string v24, "ModifyArgumentParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "stringToArgument bar len("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v9    # "len":I
    :cond_6
    :goto_3
    const-string v24, "gm"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 155
    .local v5, "gm":Lorg/json/JSONArray;
    if-eqz v5, :cond_d

    .line 156
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 157
    .restart local v9    # "len":I
    if-lez v9, :cond_a

    .line 158
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v9, v0, :cond_7

    .line 159
    const-string v24, "ModifyArgumentParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "stringToArgument gm len("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") large then "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v9, v0

    .line 162
    :cond_7
    new-array v0, v9, [I

    move-object/from16 v18, v0

    .line 163
    const/4 v7, 0x0

    .restart local v7    # "index":I
    :goto_4
    if-ge v7, v9, :cond_b

    .line 164
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v24

    aput v24, v18, v7

    .line 163
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 151
    .end local v5    # "gm":Lorg/json/JSONArray;
    .end local v7    # "index":I
    .end local v9    # "len":I
    :cond_8
    const-string v24, "ModifyArgumentParser"

    const-string v25, "stringToArgument bar is NULL!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 272
    .end local v2    # "bar":Lorg/json/JSONArray;
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v17    # "tmpCount":I
    .end local v19    # "tmpParam":[[D
    .end local v21    # "tmpStop":I
    .end local v22    # "tmpUserSet":Z
    .end local v23    # "tokener":Lorg/json/JSONTokener;
    :catch_0
    move-exception v4

    .line 273
    .local v4, "ex":Lorg/json/JSONException;
    const-string v24, "ModifyArgumentParser"

    const-string v25, "stringToArgument ex:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v4    # "ex":Lorg/json/JSONException;
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 167
    .restart local v2    # "bar":Lorg/json/JSONArray;
    .restart local v5    # "gm":Lorg/json/JSONArray;
    .restart local v9    # "len":I
    .restart local v10    # "obj":Lorg/json/JSONObject;
    .restart local v17    # "tmpCount":I
    .restart local v19    # "tmpParam":[[D
    .restart local v21    # "tmpStop":I
    .restart local v22    # "tmpUserSet":Z
    .restart local v23    # "tokener":Lorg/json/JSONTokener;
    :cond_a
    :try_start_1
    const-string v24, "ModifyArgumentParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "stringToArgument gm len("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v9    # "len":I
    :cond_b
    :goto_5
    const-string v24, "cneed"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 174
    .local v3, "cneed":Lorg/json/JSONArray;
    if-eqz v3, :cond_11

    .line 175
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 176
    .restart local v9    # "len":I
    if-lez v9, :cond_e

    .line 177
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v9, v0, :cond_c

    .line 178
    const-string v24, "ModifyArgumentParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "stringToArgument cneed("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") large then "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v9, v0

    .line 181
    :cond_c
    new-array v0, v9, [I

    move-object/from16 v16, v0

    .line 182
    const/4 v7, 0x0

    .restart local v7    # "index":I
    :goto_6
    if-ge v7, v9, :cond_f

    .line 183
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v24

    aput v24, v16, v7

    .line 182
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 170
    .end local v3    # "cneed":Lorg/json/JSONArray;
    .end local v7    # "index":I
    .end local v9    # "len":I
    :cond_d
    const-string v24, "ModifyArgumentParser"

    const-string v25, "stringToArgument gm is NULL!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 186
    .restart local v3    # "cneed":Lorg/json/JSONArray;
    .restart local v9    # "len":I
    :cond_e
    const-string v24, "ModifyArgumentParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "stringToArgument cneed len("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v9    # "len":I
    :cond_f
    :goto_7
    const-string v24, "point"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 193
    .local v13, "point":Lorg/json/JSONArray;
    if-eqz v13, :cond_16

    .line 194
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 195
    .restart local v9    # "len":I
    if-lez v9, :cond_12

    .line 196
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v9, v0, :cond_10

    .line 197
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v9, v0

    .line 199
    :cond_10
    new-array v0, v9, [I

    move-object/from16 v20, v0

    .line 200
    const/4 v7, 0x0

    .restart local v7    # "index":I
    :goto_8
    if-ge v7, v9, :cond_13

    .line 201
    invoke-virtual {v13, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v24

    aput v24, v20, v7

    .line 200
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 189
    .end local v7    # "index":I
    .end local v9    # "len":I
    .end local v13    # "point":Lorg/json/JSONArray;
    :cond_11
    const-string v24, "ModifyArgumentParser"

    const-string v25, "stringToArgument cneed is NULL!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 205
    .restart local v9    # "len":I
    .restart local v13    # "point":Lorg/json/JSONArray;
    :cond_12
    const-string v24, "ModifyArgumentParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "stringToArgument point len("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v9    # "len":I
    :cond_13
    :goto_9
    const-string v24, "param"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 213
    .local v12, "paramArray":Lorg/json/JSONArray;
    if-eqz v12, :cond_1b

    .line 214
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 215
    .restart local v9    # "len":I
    if-lez v9, :cond_19

    .line 216
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v9, v0, :cond_14

    .line 217
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v9, v0

    .line 219
    :cond_14
    const/16 v24, 0x2

    move/from16 v0, v24

    filled-new-array {v9, v0}, [I

    move-result-object v24

    sget-object v25, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "tmpParam":[[D
    check-cast v19, [[D

    .line 220
    .restart local v19    # "tmpParam":[[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a
    if-ge v6, v9, :cond_1a

    .line 221
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v11

    .line 222
    .local v11, "param":Lorg/json/JSONArray;
    if-eqz v11, :cond_17

    .line 223
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 224
    .local v14, "size":I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-le v14, v0, :cond_15

    .line 225
    const/4 v14, 0x2

    .line 227
    :cond_15
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_b
    if-ge v8, v14, :cond_18

    .line 228
    aget-object v24, v19, v6

    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v26

    aput-wide v26, v24, v8

    .line 227
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 208
    .end local v6    # "i":I
    .end local v8    # "j":I
    .end local v9    # "len":I
    .end local v11    # "param":Lorg/json/JSONArray;
    .end local v12    # "paramArray":Lorg/json/JSONArray;
    .end local v14    # "size":I
    :cond_16
    const-string v24, "ModifyArgumentParser"

    const-string v25, "stringToArgument point is NULL!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 231
    .restart local v6    # "i":I
    .restart local v9    # "len":I
    .restart local v11    # "param":Lorg/json/JSONArray;
    .restart local v12    # "paramArray":Lorg/json/JSONArray;
    :cond_17
    const-string v24, "ModifyArgumentParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "stringToArgument paramArray index="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is empty."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 235
    .end local v6    # "i":I
    .end local v11    # "param":Lorg/json/JSONArray;
    :cond_19
    const-string v24, "ModifyArgumentParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "stringToArgument paramArray len("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v9    # "len":I
    :cond_1a
    :goto_c
    const-string v24, "count"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 244
    const-string v24, "stop"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 245
    const-string v24, "set_bri"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 248
    if-eqz v15, :cond_9

    if-eqz v18, :cond_9

    if-eqz v16, :cond_9

    if-eqz v20, :cond_9

    if-eqz v19, :cond_9

    .line 249
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_d
    array-length v0, v15

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v6, v0, :cond_1c

    .line 250
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    move-object/from16 v24, v0

    aget v25, v15, v6

    aput v25, v24, v6

    .line 249
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 239
    .end local v6    # "i":I
    :cond_1b
    const-string v24, "ModifyArgumentParser"

    const-string v25, "stringToArgument paramArray is NULL!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 252
    .restart local v6    # "i":I
    :cond_1c
    const/4 v6, 0x0

    :goto_e
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v6, v0, :cond_1d

    .line 253
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    move-object/from16 v24, v0

    aget v25, v18, v6

    aput v25, v24, v6

    .line 252
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 255
    :cond_1d
    const/4 v6, 0x0

    :goto_f
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v6, v0, :cond_1e

    .line 256
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    move-object/from16 v24, v0

    aget v25, v16, v6

    aput v25, v24, v6

    .line 255
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 258
    :cond_1e
    const/4 v6, 0x0

    :goto_10
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v6, v0, :cond_1f

    .line 259
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    move-object/from16 v24, v0

    aget v25, v20, v6

    aput v25, v24, v6

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 261
    :cond_1f
    const/4 v6, 0x0

    :goto_11
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v6, v0, :cond_21

    .line 262
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_12
    aget-object v24, v19, v6

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_20

    .line 263
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    move-object/from16 v24, v0

    aget-object v24, v24, v6

    aget-object v25, v19, v6

    aget-wide v26, v25, v8

    aput-wide v26, v24, v8

    .line 262
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 261
    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 267
    .end local v8    # "j":I
    :cond_21
    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_count:I

    .line 268
    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    .line 269
    move/from16 v0, v22

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->bUserSettingBrightness:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    const/16 v24, 0x1

    goto/16 :goto_1
.end method
