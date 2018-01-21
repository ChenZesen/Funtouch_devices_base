.class Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionRecognitionListenerClass"
.end annotation


# instance fields
.field public contex:Landroid/content/Context;

.field public mActionType:Landroid/util/SparseBooleanArray;

.field private final mActionTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionRecognitionListener:Lcom/vivo/services/motion/MotionRecognitionListener;

.field public needDelete:I

.field public needWait:I

.field final synthetic this$0:Lcom/vivo/services/motion/MotionRecognitionManager;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/MotionRecognitionManager;Lcom/vivo/services/motion/MotionRecognitionListener;Landroid/content/Context;II)V
    .locals 2
    .param p2, "listener"    # Lcom/vivo/services/motion/MotionRecognitionListener;
    .param p3, "cntx"    # Landroid/content/Context;
    .param p4, "actionType"    # I
    .param p5, "wait"    # I

    .prologue
    .line 102
    iput-object p1, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->this$0:Lcom/vivo/services/motion/MotionRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    .line 103
    iput-object p2, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mMotionRecognitionListener:Lcom/vivo/services/motion/MotionRecognitionListener;

    .line 104
    invoke-virtual {p0, p4}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->addActionType(I)V

    .line 105
    iput-object p3, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->contex:Landroid/content/Context;

    .line 106
    iput p5, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->needWait:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->needDelete:I

    .line 109
    new-instance v0, Lcom/vivo/common/VivoCollectData;

    iget-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->contex:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/vivo/services/motion/MotionRecognitionManager;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;)Lcom/vivo/services/motion/MotionRecognitionListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mMotionRecognitionListener:Lcom/vivo/services/motion/MotionRecognitionListener;

    return-object v0
.end method


# virtual methods
.method public addActionType(I)V
    .locals 7
    .param p1, "actionType"    # I

    .prologue
    const/16 v6, 0x16

    const/16 v5, 0x12

    const/16 v4, 0x11

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 114
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 115
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    if-ne p1, v3, :cond_0

    .line 118
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 119
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 124
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 126
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 128
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 133
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 135
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    const/16 v0, 0x50

    if-ne p1, v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 140
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x51

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 142
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x52

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 144
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x53

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 146
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x54

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_3
    return-void
.end method

.method public getActionTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getListener()Lcom/vivo/services/motion/MotionRecognitionListener;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mMotionRecognitionListener:Lcom/vivo/services/motion/MotionRecognitionListener;

    return-object v0
.end method

.method public hasActionType(I)Z
    .locals 1
    .param p1, "actionType"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public removeActionType(I)I
    .locals 7
    .param p1, "actionType"    # I

    .prologue
    const/16 v6, 0x17

    const/16 v5, 0x16

    const/16 v4, 0x12

    const/16 v3, 0x11

    const/4 v2, 0x5

    .line 152
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 153
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 154
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 157
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 162
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 164
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 166
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    :cond_1
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 171
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 173
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    const/16 v0, 0x50

    if-ne p1, v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 178
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x51

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 180
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x52

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 182
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x53

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 184
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x54

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mActionType:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
