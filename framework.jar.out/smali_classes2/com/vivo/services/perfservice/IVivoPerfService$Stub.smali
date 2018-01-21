.class public abstract Lcom/vivo/services/perfservice/IVivoPerfService$Stub;
.super Landroid/os/Binder;
.source "IVivoPerfService.java"

# interfaces
.implements Lcom/vivo/services/perfservice/IVivoPerfService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/perfservice/IVivoPerfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/perfservice/IVivoPerfService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vivo.services.perfservice.IVivoPerfService"

.field static final TRANSACTION_checkTime:I = 0x9

.field static final TRANSACTION_ping:I = 0x1

.field static final TRANSACTION_setANR:I = 0x5

.field static final TRANSACTION_setBootTime:I = 0x3

.field static final TRANSACTION_setCurrentProcessInfo:I = 0x2

.field static final TRANSACTION_setDatabaseOperation:I = 0x8

.field static final TRANSACTION_setLostFrame:I = 0x6

.field static final TRANSACTION_setLowMemory:I = 0x4

.field static final TRANSACTION_setMCAnr:I = 0xc

.field static final TRANSACTION_setMCCrash:I = 0xd

.field static final TRANSACTION_setOrderedBroadcast:I = 0x7

.field static final TRANSACTION_setPauseTime:I = 0xa

.field static final TRANSACTION_setSystemBootTime:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.vivo.services.perfservice.IVivoPerfService"

    invoke-virtual {p0, p0, v0}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vivo/services/perfservice/IVivoPerfService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.vivo.services.perfservice.IVivoPerfService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vivo/services/perfservice/IVivoPerfService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/vivo/services/perfservice/IVivoPerfService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/vivo/services/perfservice/IVivoPerfService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 228
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->ping(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v4, 0x1

    goto :goto_0

    .line 59
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 63
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->setCurrentProcessInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v4, 0x1

    goto :goto_0

    .line 70
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 74
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 76
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    .line 78
    .local v7, "_arg2":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 80
    .local v8, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 82
    .local v10, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 84
    .local v12, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 86
    .local v13, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg7":I
    move-object/from16 v4, p0

    .line 87
    invoke-virtual/range {v4 .. v14}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->setBootTime(Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;I)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v4, 0x1

    goto :goto_0

    .line 76
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":J
    .end local v10    # "_arg4":J
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":Ljava/lang/String;
    .end local v14    # "_arg7":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 93
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 97
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 99
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 101
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 102
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->setLowMemory(Ljava/lang/String;III)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 108
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_5
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 112
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    .line 114
    .local v6, "_arg1":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 117
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->setANR(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 112
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 123
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 127
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 128
    .local v26, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->setLostFrame(IJ)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 134
    .end local v5    # "_arg0":I
    .end local v26    # "_arg1":J
    :sswitch_7
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 142
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x1

    .line 144
    .local v8, "_arg3":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v10, 0x1

    .line 146
    .local v10, "_arg4":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v12, 0x1

    .line 148
    .local v12, "_arg5":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg6":I
    move-object/from16 v15, p0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v20, v8

    move/from16 v21, v10

    move/from16 v22, v12

    move/from16 v23, v13

    .line 149
    invoke-virtual/range {v15 .. v23}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->setOrderedBroadcast(Ljava/lang/String;Ljava/lang/String;JZZZI)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 142
    .end local v8    # "_arg3":Z
    .end local v10    # "_arg4":Z
    .end local v12    # "_arg5":Z
    .end local v13    # "_arg6":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    .line 144
    .restart local v8    # "_arg3":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 146
    .restart local v10    # "_arg4":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_5

    .line 155
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    .end local v10    # "_arg4":Z
    .end local v18    # "_arg2":J
    :sswitch_8
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 159
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 161
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 162
    .restart local v18    # "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->setDatabaseOperation(ILjava/lang/String;J)V

    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 168
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":J
    :sswitch_9
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 172
    .local v24, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 173
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v6}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->checkTime(JLjava/lang/String;)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 179
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg0":J
    :sswitch_a
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 185
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 187
    .restart local v18    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg3":I
    move-object/from16 v15, p0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v20, v8

    .line 188
    invoke-virtual/range {v15 .. v20}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->setPauseTime(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 194
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v18    # "_arg2":J
    :sswitch_b
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 197
    .restart local v24    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->setSystemBootTime(J)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 203
    .end local v24    # "_arg0":J
    :sswitch_c
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 207
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v6, 0x1

    .line 209
    .local v6, "_arg1":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 211
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->setMCAnr(Ljava/lang/String;ZILjava/lang/String;)V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 207
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    goto :goto_6

    .line 218
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v4, "com.vivo.services.perfservice.IVivoPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v6, 0x1

    .line 223
    .restart local v6    # "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->setMCCrash(Ljava/lang/String;Z)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 222
    .end local v6    # "_arg1":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_7

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
