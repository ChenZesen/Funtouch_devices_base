.class public Lcom/sensoroperate/VivoSensorTest;
.super Ljava/lang/Object;
.source "VivoSensorTest.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final ALSPS_CLOSE_DEVICE:I = 0x23

.field public static final ALS_CALI_TEST:I = 0x10

.field public static final ALS_CLOSE_DEVICE:I = 0x12

.field public static final ALS_ENABLE_DEVICE:I = 0x13

.field public static final ALS_GET_PARA:I = 0x15

.field public static final ALS_RAWDATA_TEST:I = 0x11

.field public static final ALS_SET_PARA_INDEX:I = 0x14

.field public static final BYTE_ARRAY_TEST:I = 0x3

.field public static final FLOAT_ARRAY_TEST:I = 0x2

.field public static final GESTURE_CALI_STATUS:I = 0x2b

.field public static final GESTURE_CALI_TEST:I = 0x2a

.field public static final GS_CALI_TEST:I = 0x30

.field public static final GS_DATATOMG_TEST:I = 0x32

.field public static final GS_DATA_TEST:I = 0x31

.field public static final GS_EVENT:I = 0x39

.field public static final GS_EVENT_DISABLE_INT:I = 0x14

.field public static final GS_EVENT_DISABLE_POCKET:I = 0x11

.field public static final GS_EVENT_ENABLE_INT:I = 0x13

.field public static final GS_EVENT_ENABLE_POCKET:I = 0x10

.field public static final GS_EVENT_GET_DATA:I = 0x15

.field public static final GS_EVENT_GET_FIFO_RESULT:I = 0x12

.field public static final GS_SELFTEST:I = 0x33

.field public static final GYRO_CALI_TEST:I = 0x50

.field public static final GYRO_DATATODPS_TEST:I = 0x52

.field public static final GYRO_DATA_TEST:I = 0x51

.field public static final GYRO_SELFTEST:I = 0x53

.field public static final INT_ARRAY_TEST:I = 0x1

.field public static final MAG_CALI_TEST:I = 0x40

.field public static final MAG_CLOSE_TEST:I = 0x44

.field public static final MAG_DATA_TEST:I = 0x41

.field public static final MAG_OPEN_TEST:I = 0x43

.field public static final MAG_SELFTEST_TEST:I = 0x42

.field public static final PS_CALI_TEST:I = 0x20

.field public static final PS_CLOSE_DEVICE:I = 0x26

.field public static final PS_ENABLE_DEVICE:I = 0x27

.field public static final PS_GET_NEAR_AWAY:I = 0x25

.field public static final PS_GET_PARA:I = 0x2e

.field public static final PS_GET_TEMP_PARA:I = 0x2f

.field public static final PS_IS_CONFIGURED_TOLERANCE:I = 0x201

.field public static final PS_RAWDATA_TEST:I = 0x21

.field public static final PS_READ_REG:I = 0x29

.field public static final PS_SET_CALDATA:I = 0x22

.field public static final PS_SET_PARA_INDEX:I = 0x2d

.field public static final PS_SET_PARA_MODE:I = 0x2c

.field public static final PS_TEM_CALI_TEST:I = 0x24

.field public static final PS_WRITE_REG:I = 0x28

.field public static final RESERVED_TEST:I = 0x0

.field public static final STRING_ARRAY_TEST:I = 0x4

.field public static final TAG:Ljava/lang/String; = "VivoSensorTest"

.field private static isNativeInt:I

.field public static isSensorLibExist:Z

.field public static mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 14
    new-instance v2, Lcom/sensoroperate/VivoSensorTest;

    invoke-direct {v2}, Lcom/sensoroperate/VivoSensorTest;-><init>()V

    sput-object v2, Lcom/sensoroperate/VivoSensorTest;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    .line 58
    sput v5, Lcom/sensoroperate/VivoSensorTest;->isNativeInt:I

    .line 70
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sensoroperate/VivoSensorTest;->isSensorLibExist:Z

    .line 214
    const-string v2, "ro.product.model.bbk"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "prop":Ljava/lang/String;
    :try_start_0
    const-string v2, "jni_vivosensortest"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch  UnsatisfiedLinkError:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    sput-boolean v5, Lcom/sensoroperate/VivoSensorTest;->isSensorLibExist:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private InitNativeClass()V
    .locals 3

    .prologue
    .line 185
    sget-boolean v0, Lcom/sensoroperate/VivoSensorTest;->isSensorLibExist:Z

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    sget v0, Lcom/sensoroperate/VivoSensorTest;->isNativeInt:I

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/sensoroperate/VivoSensorTest;->nativeClassInit()I

    .line 190
    const/4 v0, 0x1

    sput v0, Lcom/sensoroperate/VivoSensorTest;->isNativeInt:I

    .line 191
    const-string v0, "VivoSensorTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeClassInit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sensoroperate/VivoSensorTest;->isNativeInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/sensoroperate/VivoSensorTest;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/sensoroperate/VivoSensorTest;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    return-object v0
.end method

.method private native jniVivoSensorTestByte(ILcom/sensoroperate/SensorTestResult;[BI)I
.end method

.method private native jniVivoSensorTestFloat(ILcom/sensoroperate/SensorTestResult;[FI)I
.end method

.method private native jniVivoSensorTestInt(ILcom/sensoroperate/SensorTestResult;[II)I
.end method

.method private native jniVivoSensorTestString(ILcom/sensoroperate/SensorTestResult;Ljava/lang/String;I)I
.end method

.method private native nativeClassInit()I
.end method


# virtual methods
.method public VivoSensorOprate(I[F[II)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "operate_reslt"    # [F
    .param p3, "p_data"    # [I
    .param p4, "len"    # I

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, "ret":I
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 199
    :cond_0
    const/4 v1, -0x1

    move v2, v1

    .line 209
    :goto_0
    return v2

    .line 200
    :cond_1
    sget-boolean v2, Lcom/sensoroperate/VivoSensorTest;->isSensorLibExist:Z

    if-nez v2, :cond_2

    .line 201
    const/4 v2, -0x1

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0}, Lcom/sensoroperate/VivoSensorTest;->InitNativeClass()V

    .line 205
    new-instance v0, Lcom/sensoroperate/SensorTestResult;

    invoke-direct {v0}, Lcom/sensoroperate/SensorTestResult;-><init>()V

    .line 206
    .local v0, "result":Lcom/sensoroperate/SensorTestResult;
    const-string v2, "VivoSensorTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VivoSensorOprate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/sensoroperate/VivoSensorTest;->jniVivoSensorTestInt(ILcom/sensoroperate/SensorTestResult;[II)I

    move-result v1

    .line 208
    invoke-virtual {v0, p2}, Lcom/sensoroperate/SensorTestResult;->getTestResult([F)I

    move v2, v1

    .line 209
    goto :goto_0
.end method

.method public vivoSensorTest(ILcom/sensoroperate/SensorTestResult;Ljava/lang/String;I)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "result"    # Lcom/sensoroperate/SensorTestResult;
    .param p3, "p_data"    # Ljava/lang/String;
    .param p4, "len"    # I

    .prologue
    .line 169
    sget-boolean v1, Lcom/sensoroperate/VivoSensorTest;->isSensorLibExist:Z

    if-nez v1, :cond_0

    .line 170
    const/4 v0, -0x1

    .line 174
    :goto_0
    return v0

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/sensoroperate/VivoSensorTest;->InitNativeClass()V

    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sensoroperate/VivoSensorTest;->jniVivoSensorTestString(ILcom/sensoroperate/SensorTestResult;Ljava/lang/String;I)I

    move-result v0

    .line 174
    .local v0, "ret":I
    goto :goto_0
.end method

.method public vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[BI)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "result"    # Lcom/sensoroperate/SensorTestResult;
    .param p3, "p_data"    # [B
    .param p4, "len"    # I

    .prologue
    .line 161
    sget-boolean v1, Lcom/sensoroperate/VivoSensorTest;->isSensorLibExist:Z

    if-nez v1, :cond_0

    .line 162
    const/4 v0, -0x1

    .line 166
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/sensoroperate/VivoSensorTest;->InitNativeClass()V

    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sensoroperate/VivoSensorTest;->jniVivoSensorTestByte(ILcom/sensoroperate/SensorTestResult;[BI)I

    move-result v0

    .line 166
    .local v0, "ret":I
    goto :goto_0
.end method

.method public vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[FI)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "result"    # Lcom/sensoroperate/SensorTestResult;
    .param p3, "p_data"    # [F
    .param p4, "len"    # I

    .prologue
    .line 153
    sget-boolean v1, Lcom/sensoroperate/VivoSensorTest;->isSensorLibExist:Z

    if-nez v1, :cond_0

    .line 154
    const/4 v0, -0x1

    .line 158
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/sensoroperate/VivoSensorTest;->InitNativeClass()V

    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sensoroperate/VivoSensorTest;->jniVivoSensorTestFloat(ILcom/sensoroperate/SensorTestResult;[FI)I

    move-result v0

    .line 158
    .local v0, "ret":I
    goto :goto_0
.end method

.method public vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "result"    # Lcom/sensoroperate/SensorTestResult;
    .param p3, "p_data"    # [I
    .param p4, "len"    # I

    .prologue
    .line 144
    sget-boolean v1, Lcom/sensoroperate/VivoSensorTest;->isSensorLibExist:Z

    if-nez v1, :cond_0

    .line 145
    const/4 v0, -0x1

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/sensoroperate/VivoSensorTest;->InitNativeClass()V

    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sensoroperate/VivoSensorTest;->jniVivoSensorTestInt(ILcom/sensoroperate/SensorTestResult;[II)I

    move-result v0

    .line 149
    .local v0, "ret":I
    goto :goto_0
.end method
