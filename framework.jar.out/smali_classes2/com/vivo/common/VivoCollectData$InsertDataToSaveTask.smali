.class Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;
.super Landroid/os/AsyncTask;
.source "VivoCollectData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/VivoCollectData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertDataToSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private duration:J

.field private endTime:J

.field private eventId:Ljava/lang/String;

.field private hashParams:Ljava/util/HashMap;
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

.field private key:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private startTime:J

.field final synthetic this$0:Lcom/vivo/common/VivoCollectData;

.field private type:I

.field private useNum:I

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vivo/common/VivoCollectData;Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V
    .locals 4
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "startTime"    # J
    .param p6, "endTime"    # J
    .param p8, "duration"    # J
    .param p10, "useNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p11, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 117
    iput-object p1, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    .line 107
    iput-wide v2, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->startTime:J

    .line 108
    iput-wide v2, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->endTime:J

    .line 109
    iput-wide v2, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->duration:J

    .line 110
    iput v1, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->useNum:I

    .line 111
    iput-object v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    .line 113
    iput-object v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    .line 115
    iput v1, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 118
    iput-object p2, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    .line 120
    iput-wide p4, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->startTime:J

    .line 121
    iput-wide p6, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->endTime:J

    .line 122
    iput-wide p8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->duration:J

    .line 123
    iput p10, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->useNum:I

    .line 124
    iput-object p11, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/common/VivoCollectData;Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;Lcom/vivo/common/VivoCollectData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/common/VivoCollectData;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # J
    .param p6, "x4"    # J
    .param p8, "x5"    # J
    .param p10, "x6"    # I
    .param p11, "x7"    # Ljava/util/HashMap;
    .param p12, "x8"    # Lcom/vivo/common/VivoCollectData$1;

    .prologue
    .line 103
    invoke-direct/range {p0 .. p11}, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;-><init>(Lcom/vivo/common/VivoCollectData;Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    return-void
.end method

.method private constructor <init>(Lcom/vivo/common/VivoCollectData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 128
    iput-object p1, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    .line 107
    iput-wide v2, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->startTime:J

    .line 108
    iput-wide v2, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->endTime:J

    .line 109
    iput-wide v2, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->duration:J

    .line 110
    iput v1, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->useNum:I

    .line 111
    iput-object v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    .line 113
    iput-object v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    .line 115
    iput v1, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 129
    iput-object p2, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    .line 131
    iput-object p4, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    .line 132
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/common/VivoCollectData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/common/VivoCollectData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/common/VivoCollectData;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/vivo/common/VivoCollectData$1;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;-><init>(Lcom/vivo/common/VivoCollectData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 103
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 138
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 139
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 142
    :cond_0
    :try_start_0
    iget v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->type:I

    packed-switch v7, :pswitch_data_0

    .line 204
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 144
    :pswitch_0
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    .line 145
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 146
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 150
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .local v6, "val":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 202
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 159
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "eventValue":Ljava/lang/String;
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mEventId:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$300(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mEventValue:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$400(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mStartTime:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$500(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->startTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mEndTime:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$600(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->endTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mDuration:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$700(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mLunchCount:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$800(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->useNum:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mLabel:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$900(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mAnalysisdate:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$1000(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->cr:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$1200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->url:Landroid/net/Uri;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$1100(Lcom/vivo/common/VivoCollectData;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v9}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 170
    .end local v2    # "eventValue":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mEventId:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$300(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mStartTime:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$500(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->startTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mEndTime:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$600(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->endTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mDuration:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$700(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mLunchCount:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$800(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->useNum:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mLabel:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$900(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mAnalysisdate:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$1000(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->cr:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$1200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->url:Landroid/net/Uri;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$1100(Lcom/vivo/common/VivoCollectData;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v9}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 180
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mEventId:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$300(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mStartTime:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$500(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->startTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mEndTime:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$600(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->endTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mDuration:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$700(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mLunchCount:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$800(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->useNum:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mLabel:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$900(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mAnalysisdate:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$1000(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->cr:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$1200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->url:Landroid/net/Uri;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$1100(Lcom/vivo/common/VivoCollectData;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v9}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 191
    :pswitch_1
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mEventId:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$300(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mParamName:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$1300(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mParamValue:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$1400(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->mAnalysisdate:Ljava/lang/String;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$1000(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    iget-object v7, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->cr:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/vivo/common/VivoCollectData;->access$1200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->settingsUri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/vivo/common/VivoCollectData;->access$1500(Lcom/vivo/common/VivoCollectData;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/common/VivoCollectData;

    # getter for: Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;
    invoke-static {v9}, Lcom/vivo/common/VivoCollectData;->access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
