.class public Landroid/widget/OverScrollerProxy;
.super Ljava/lang/Object;
.source "OverScrollerProxy.java"


# static fields
.field public static final SPRING_EFFECT:I = 0x2

.field public static final SPRING_EFFECT_EX:I = 0x3

.field public static final SYSTEM_DEFAULT:I = 0x1


# instance fields
.field private mEffect:I

.field private mScroller:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "effect"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    .line 19
    iput p1, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    .line 20
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 32
    :goto_0
    return-void

    .line 23
    :pswitch_0
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :pswitch_1
    new-instance v0, Landroid/widget/VivoOverScroller;

    invoke-direct {v0, p2}, Landroid/widget/VivoOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    goto :goto_0

    .line 29
    :pswitch_2
    new-instance v0, Landroid/widget/SpringOverScroller;

    invoke-direct {v0, p2}, Landroid/widget/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 444
    :goto_0
    return-void

    .line 435
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    .line 438
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->abortAnimation()V

    goto :goto_0

    .line 441
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->abortAnimation()V

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 287
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 281
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->computeScrollOffset()Z

    move-result v0

    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->computeScrollOffset()Z

    move-result v0

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I

    .prologue
    .line 225
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->extendDuration(I)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/VivoOverScroller;->extendDuration(I)V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller;->extendDuration(I)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public fling(IIIIIIII)V
    .locals 9
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 343
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 346
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/VivoOverScroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/SpringOverScroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public fling(IIIIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 363
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 366
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto :goto_0

    .line 370
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/widget/VivoOverScroller;->fling(IIIIIIIIII)V

    goto :goto_0

    .line 374
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/widget/SpringOverScroller;->fling(IIIIIIIIII)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final forceFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .prologue
    .line 86
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/VivoOverScroller;->forceFinished(Z)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller;->forceFinished(Z)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrVelocity()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 142
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 136
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->getCurrVelocity()F

    move-result v0

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getCurrVelocity()F

    move-result v0

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 112
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 106
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->getCurrX()I

    move-result v0

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getCurrX()I

    move-result v0

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 121
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->getCurrY()I

    move-result v0

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getCurrY()I

    move-result v0

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 218
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 212
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->getDuration()I

    move-result v0

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getDuration()I

    move-result v0

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 181
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->getFinalX()I

    move-result v0

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getFinalX()I

    move-result v0

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 202
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 196
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->getFinalY()I

    move-result v0

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getFinalY()I

    move-result v0

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 157
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 151
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getStartX()I

    move-result v0

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->getStartX()I

    move-result v0

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getStartX()I

    move-result v0

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 166
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getStartY()I

    move-result v0

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->getStartY()I

    move-result v0

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getStartY()I

    move-result v0

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 74
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->isFinished()Z

    move-result v0

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->isFinished()Z

    move-result v0

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 426
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 420
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isOverScrolled()Z

    move-result v0

    goto :goto_0

    .line 422
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->isOverScrolled()Z

    move-result v0

    goto :goto_0

    .line 424
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->isOverScrolled()Z

    move-result v0

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isScrollingInDirection(FF)Z
    .locals 1
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 464
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 473
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 467
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/OverScroller;->isScrollingInDirection(FF)Z

    move-result v0

    goto :goto_0

    .line 469
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/VivoOverScroller;->isScrollingInDirection(FF)Z

    move-result v0

    goto :goto_0

    .line 471
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpringOverScroller;->isScrollingInDirection(FF)Z

    move-result v0

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    .line 383
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 395
    :goto_0
    return-void

    .line 386
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    goto :goto_0

    .line 389
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/VivoOverScroller;->notifyHorizontalEdgeReached(III)V

    goto :goto_0

    .line 392
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SpringOverScroller;->notifyHorizontalEdgeReached(III)V

    goto :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 400
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 412
    :goto_0
    return-void

    .line 403
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_0

    .line 406
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/VivoOverScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_0

    .line 409
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I

    .prologue
    .line 243
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFinalX(I)V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/VivoOverScroller;->setFinalX(I)V

    goto :goto_0

    .line 252
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller;->setFinalX(I)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 264
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFinalY(I)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/VivoOverScroller;->setFinalY(I)V

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller;->setFinalY(I)V

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 54
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/VivoOverScroller;->setFriction(F)V

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller;->setFriction(F)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 37
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/VivoOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public springBack(IIIIII)Z
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    .line 327
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 336
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 330
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/widget/VivoOverScroller;->springBack(IIIIII)Z

    move-result v0

    goto :goto_0

    .line 334
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/widget/SpringOverScroller;->springBack(IIIIII)Z

    move-result v0

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startScroll(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 293
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/VivoOverScroller;->startScroll(IIII)V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/SpringOverScroller;->startScroll(IIII)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 310
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 322
    :goto_0
    return-void

    .line 313
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    goto :goto_0

    .line 316
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/VivoOverScroller;->startScroll(IIIII)V

    goto :goto_0

    .line 319
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SpringOverScroller;->startScroll(IIIII)V

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public timePassed()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Landroid/widget/OverScrollerProxy;->mEffect:I

    packed-switch v0, :pswitch_data_0

    .line 458
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 452
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->timePassed()I

    move-result v0

    goto :goto_0

    .line 454
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VivoOverScroller;

    invoke-virtual {v0}, Landroid/widget/VivoOverScroller;->timePassed()I

    move-result v0

    goto :goto_0

    .line 456
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OverScrollerProxy;->mScroller:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->timePassed()I

    move-result v0

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
