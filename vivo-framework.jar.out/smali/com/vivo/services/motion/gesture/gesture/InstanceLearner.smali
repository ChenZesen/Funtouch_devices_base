.class Lcom/vivo/services/motion/gesture/gesture/InstanceLearner;
.super Lcom/vivo/services/motion/gesture/gesture/Learner;
.source "InstanceLearner.java"


# static fields
.field private static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/vivo/services/motion/gesture/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/vivo/services/motion/gesture/gesture/InstanceLearner$1;

    invoke-direct {v0}, Lcom/vivo/services/motion/gesture/gesture/InstanceLearner$1;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/gesture/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vivo/services/motion/gesture/gesture/Learner;-><init>()V

    return-void
.end method


# virtual methods
.method classify(II[F)Ljava/util/ArrayList;
    .locals 20
    .param p1, "sequenceType"    # I
    .param p2, "orientationType"    # I
    .param p3, "vector"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/services/motion/gesture/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v12, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/services/motion/gesture/gesture/Prediction;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/services/motion/gesture/gesture/InstanceLearner;->getInstances()Ljava/util/ArrayList;

    move-result-object v9

    .line 47
    .local v9, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/services/motion/gesture/gesture/Instance;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 48
    .local v4, "count":I
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 49
    .local v10, "label2score":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 50
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vivo/services/motion/gesture/gesture/Instance;

    .line 51
    .local v13, "sample":Lcom/vivo/services/motion/gesture/gesture/Instance;
    iget-object v0, v13, Lcom/vivo/services/motion/gesture/gesture/Instance;->vector:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 56
    iget-object v0, v13, Lcom/vivo/services/motion/gesture/gesture/Instance;->vector:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/vivo/services/motion/gesture/gesture/GestureUtils;->minimumCosineDistance([F[FI)F

    move-result v18

    move/from16 v0, v18

    float-to-double v6, v0

    .line 61
    .local v6, "distance":D
    :goto_2
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_4

    .line 62
    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 66
    .local v16, "weight":D
    :goto_3
    iget-object v0, v13, Lcom/vivo/services/motion/gesture/gesture/Instance;->label:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    .line 67
    .local v14, "score":Ljava/lang/Double;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    cmpl-double v18, v16, v18

    if-lez v18, :cond_0

    .line 68
    :cond_2
    iget-object v0, v13, Lcom/vivo/services/motion/gesture/gesture/Instance;->label:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    .end local v6    # "distance":D
    .end local v14    # "score":Ljava/lang/Double;
    .end local v16    # "weight":D
    :cond_3
    iget-object v0, v13, Lcom/vivo/services/motion/gesture/gesture/Instance;->vector:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/vivo/services/motion/gesture/gesture/GestureUtils;->squaredEuclideanDistance([F[F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v6, v0

    .restart local v6    # "distance":D
    goto :goto_2

    .line 64
    :cond_4
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v16, v18, v6

    .restart local v16    # "weight":D
    goto :goto_3

    .line 73
    .end local v6    # "distance":D
    .end local v13    # "sample":Lcom/vivo/services/motion/gesture/gesture/Instance;
    .end local v16    # "weight":D
    :cond_5
    invoke-virtual {v10}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 74
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 76
    .local v14, "score":D
    new-instance v18, Lcom/vivo/services/motion/gesture/gesture/Prediction;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v14, v15}, Lcom/vivo/services/motion/gesture/gesture/Prediction;-><init>(Ljava/lang/String;D)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 84
    .end local v11    # "name":Ljava/lang/String;
    .end local v14    # "score":D
    :cond_6
    sget-object v18, Lcom/vivo/services/motion/gesture/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-object v12
.end method