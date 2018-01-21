.class public Lcom/vivo/content/DynamicCalendarIcon;
.super Lcom/vivo/content/DynamicIcon;
.source "DynamicCalendarIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/content/DynamicCalendarIcon$1;,
        Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;,
        Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_DATE_TEXT_COLOR:I = -0xc1c1c2

.field public static final DEFAULT_WEEK_TEXT_COLOR:I = -0x1

.field public static final PURE_BLACK_COLOR:I = -0x1000000

.field public static final TAG:Ljava/lang/String; = "Launcher.DynamicCalendarIcon"

.field private static final mOldVersionCalendarBgPath:Ljava/lang/String;

.field private static final mThemePath:Ljava/lang/String;


# instance fields
.field private final TAG_BACKGROUND:Ljava/lang/String;

.field private final TAG_CALENDAR:Ljava/lang/String;

.field private final TAG_CALENDARDATE:Ljava/lang/String;

.field private final TAG_CALENDARTWEEK:Ljava/lang/String;

.field private final TAG_DATEIMAGE:Ljava/lang/String;

.field private final TAG_DATELEFTOFFSET:Ljava/lang/String;

.field private final TAG_DATETEXTCOLOR:Ljava/lang/String;

.field private final TAG_DATETEXTSIZE:Ljava/lang/String;

.field private final TAG_DATETOPOFFSET:Ljava/lang/String;

.field private final TAG_DEFAULT_CALENDAR:Ljava/lang/String;

.field private final TAG_WEEKLEFTOFFSET:Ljava/lang/String;

.field private final TAG_WEEKTEXTCOLOR:Ljava/lang/String;

.field private final TAG_WEEKTEXTSIZE:Ljava/lang/String;

.field private final TAG_WEEKTOPOFFSET:Ljava/lang/String;

.field private mBackground:Ljava/lang/String;

.field private mCalendar:Z

.field private mCalendardate:Z

.field private mCalendartweek:Z

.field private mDateimage:Z

.field private mDateleftoffset:I

.field private mDatetextcolor:I

.field private mDatetextsize:I

.field private mDatetopoffset:I

.field private mDefaultCalendar:Z

.field private mWeekleftoffset:I

.field private mWeektextcolor:I

.field private mWeektextsize:I

.field private mWeektopoffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launcher/iconsize.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/content/DynamicCalendarIcon;->mThemePath:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launcher/calendar_bg.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/content/DynamicCalendarIcon;->mOldVersionCalendarBgPath:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componetName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/vivo/content/DynamicIcon;-><init>()V

    .line 39
    const-string v0, "calendar"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_CALENDAR:Ljava/lang/String;

    .line 40
    const-string v0, "dateimage"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_DATEIMAGE:Ljava/lang/String;

    .line 41
    const-string v0, "calendartweek"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_CALENDARTWEEK:Ljava/lang/String;

    .line 42
    const-string v0, "weektextsize"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_WEEKTEXTSIZE:Ljava/lang/String;

    .line 43
    const-string v0, "weektextcolor"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_WEEKTEXTCOLOR:Ljava/lang/String;

    .line 44
    const-string v0, "weekleftoffset"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_WEEKLEFTOFFSET:Ljava/lang/String;

    .line 45
    const-string v0, "weektopoffset"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_WEEKTOPOFFSET:Ljava/lang/String;

    .line 46
    const-string v0, "calendardate"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_CALENDARDATE:Ljava/lang/String;

    .line 47
    const-string v0, "datetextsize"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_DATETEXTSIZE:Ljava/lang/String;

    .line 48
    const-string v0, "datetextcolor"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_DATETEXTCOLOR:Ljava/lang/String;

    .line 49
    const-string v0, "dateleftoffset"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_DATELEFTOFFSET:Ljava/lang/String;

    .line 50
    const-string v0, "datetopoffset"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_DATETOPOFFSET:Ljava/lang/String;

    .line 51
    const-string v0, "background"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_BACKGROUND:Ljava/lang/String;

    .line 52
    const-string v0, "vivodefault"

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->TAG_DEFAULT_CALENDAR:Ljava/lang/String;

    .line 57
    iput-boolean v2, p0, Lcom/vivo/content/DynamicCalendarIcon;->mCalendar:Z

    .line 59
    iput-boolean v2, p0, Lcom/vivo/content/DynamicCalendarIcon;->mCalendartweek:Z

    .line 60
    const/16 v0, 0x12

    iput v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->mWeektextsize:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->mWeektextcolor:I

    .line 62
    iput v1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mWeekleftoffset:I

    .line 63
    iput v1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mWeektopoffset:I

    .line 64
    iput-boolean v2, p0, Lcom/vivo/content/DynamicCalendarIcon;->mCalendardate:Z

    .line 65
    const/16 v0, 0x2d

    iput v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetextsize:I

    .line 66
    const v0, -0xc1c1c2

    iput v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I

    .line 69
    iput v1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDateleftoffset:I

    .line 70
    iput v1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetopoffset:I

    .line 72
    iput-boolean v1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDefaultCalendar:Z

    .line 75
    iput-object p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mComponentName:Landroid/content/ComponentName;

    .line 76
    return-void
.end method

.method static synthetic access$1002(Lcom/vivo/content/DynamicCalendarIcon;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetextsize:I

    return p1
.end method

.method static synthetic access$1100(Lcom/vivo/content/DynamicCalendarIcon;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;

    .prologue
    .line 34
    iget v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I

    return v0
.end method

.method static synthetic access$1102(Lcom/vivo/content/DynamicCalendarIcon;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I

    return p1
.end method

.method static synthetic access$1202(Lcom/vivo/content/DynamicCalendarIcon;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDateleftoffset:I

    return p1
.end method

.method static synthetic access$1302(Lcom/vivo/content/DynamicCalendarIcon;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetopoffset:I

    return p1
.end method

.method static synthetic access$1402(Lcom/vivo/content/DynamicCalendarIcon;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mBackground:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/vivo/content/DynamicCalendarIcon;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDefaultCalendar:Z

    return p1
.end method

.method static synthetic access$202(Lcom/vivo/content/DynamicCalendarIcon;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mCalendar:Z

    return p1
.end method

.method static synthetic access$302(Lcom/vivo/content/DynamicCalendarIcon;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mDateimage:Z

    return p1
.end method

.method static synthetic access$402(Lcom/vivo/content/DynamicCalendarIcon;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mCalendartweek:Z

    return p1
.end method

.method static synthetic access$502(Lcom/vivo/content/DynamicCalendarIcon;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mWeektextsize:I

    return p1
.end method

.method static synthetic access$600(Lcom/vivo/content/DynamicCalendarIcon;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;

    .prologue
    .line 34
    iget v0, p0, Lcom/vivo/content/DynamicCalendarIcon;->mWeektextcolor:I

    return v0
.end method

.method static synthetic access$602(Lcom/vivo/content/DynamicCalendarIcon;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mWeektextcolor:I

    return p1
.end method

.method static synthetic access$702(Lcom/vivo/content/DynamicCalendarIcon;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mWeekleftoffset:I

    return p1
.end method

.method static synthetic access$802(Lcom/vivo/content/DynamicCalendarIcon;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mWeektopoffset:I

    return p1
.end method

.method static synthetic access$902(Lcom/vivo/content/DynamicCalendarIcon;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vivo/content/DynamicCalendarIcon;->mCalendardate:Z

    return p1
.end method


# virtual methods
.method protected creatDynamicIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 45
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mCalendar:Z

    move/from16 v42, v0

    if-nez v42, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mDefaultCalendar:Z

    move/from16 v42, v0

    if-eqz v42, :cond_2

    .line 115
    :cond_0
    const/16 v31, 0x0

    .line 280
    :cond_1
    :goto_0
    return-object v31

    .line 118
    :cond_2
    new-instance v36, Landroid/text/format/Time;

    invoke-direct/range {v36 .. v36}, Landroid/text/format/Time;-><init>()V

    .line 119
    .local v36, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-object/from16 v0, v36

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 120
    move-object/from16 v0, v36

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 122
    .local v14, "date":Ljava/lang/String;
    new-instance v27, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 123
    .local v27, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    const v43, 0x3020153

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 125
    .local v7, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v41, v0

    .line 126
    .local v41, "width":I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    .line 129
    .local v22, "height":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mDateimage:Z

    move/from16 v42, v0

    if-eqz v42, :cond_3

    .line 130
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->DYNAMIC_ICON_DIR:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ".png"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 131
    .local v18, "datePath":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 132
    .local v17, "dateIcon":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_3

    .line 133
    const/16 v42, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v41

    move/from16 v2, v22

    move/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 134
    .local v31, "scaledDateIcon":Landroid/graphics/Bitmap;
    if-nez v31, :cond_1

    .line 141
    .end local v17    # "dateIcon":Landroid/graphics/Bitmap;
    .end local v18    # "datePath":Ljava/lang/String;
    .end local v31    # "scaledDateIcon":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 142
    .local v29, "res":Landroid/content/res/Resources;
    const v42, 0x30c001d

    move-object/from16 v0, v29

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v42

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v35, v0

    .line 144
    .local v35, "textureSize":I
    sget-object v42, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v35

    move/from16 v1, v35

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 146
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12}, Landroid/graphics/Canvas;-><init>()V

    .line 147
    .local v12, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v12, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    .line 152
    .local v20, "denisty":F
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v11, "calendarBgPath":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->DYNAMIC_ICON_DIR:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/vivo/content/DynamicCalendarIcon;->getDensityResPath(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v28

    .line 155
    .local v28, "path":Ljava/lang/String;
    if-eqz v28, :cond_4

    .line 156
    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_4
    const-string v42, "calendar_bg.png"

    move-object/from16 v0, v42

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const/4 v4, 0x0

    .line 160
    .local v4, "b":Landroid/graphics/Bitmap;
    const/16 v23, 0x0

    .line 161
    .local v23, "iconBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 162
    if-nez v4, :cond_5

    .line 163
    new-instance v11, Ljava/lang/StringBuilder;

    .end local v11    # "calendarBgPath":Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .restart local v11    # "calendarBgPath":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->DYNAMIC_ICON_DIR:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "calendar_bg.png"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 167
    :cond_5
    if-eqz v4, :cond_9

    .line 169
    const/16 v42, 0x0

    move/from16 v0, v41

    move/from16 v1, v22

    move/from16 v2, v42

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 174
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 176
    .local v9, "calIcon":Landroid/graphics/drawable/BitmapDrawable;
    sub-int v42, v35, v41

    div-int/lit8 v24, v42, 0x2

    .line 177
    .local v24, "left":I
    sub-int v42, v35, v22

    div-int/lit8 v37, v42, 0x2

    .line 179
    .local v37, "top":I
    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .line 180
    .local v30, "sOldBounds":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 181
    add-int v42, v24, v41

    add-int v43, v37, v22

    move/from16 v0, v24

    move/from16 v1, v37

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 182
    invoke-virtual {v9, v12}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 185
    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    .line 186
    .local v32, "textPaint":Landroid/graphics/Paint;
    const/16 v42, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    sget-object v42, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 188
    const/16 v42, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-object/from16 v0, v36

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 192
    const v42, 0x30c0020

    move-object/from16 v0, v29

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v42

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v40, v0

    .line 194
    .local v40, "weekHeight":I
    const v42, 0x30c001f

    move-object/from16 v0, v29

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v42

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v16, v0

    .line 197
    .local v16, "dateHeight":I
    move-object/from16 v0, v36

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, 0x1

    const/16 v43, 0xa

    invoke-static/range {v42 .. v43}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v39

    .line 199
    .local v39, "weekDay":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mWeektextsize:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mWeektextcolor:I

    move/from16 v42, v0

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mWeekleftoffset:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    add-float v33, v42, v43

    .line 202
    .local v33, "textX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mWeektopoffset:I

    move/from16 v42, v0

    add-int v42, v42, v40

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v34, v0

    .line 205
    .local v34, "textY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mCalendartweek:Z

    move/from16 v42, v0

    if-eqz v42, :cond_7

    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 210
    .local v10, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    .line 211
    .local v13, "countryCode":Ljava/lang/String;
    const-string v42, "US"

    move-object/from16 v0, v42

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_6

    .line 213
    const/16 v42, 0x0

    const/16 v43, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 214
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v39

    .line 216
    :cond_6
    move-object/from16 v0, v39

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v32

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v13    # "countryCode":Ljava/lang/String;
    :cond_7
    invoke-static {}, Landroid/os/FtBuild;->getRomVersion()F

    move-result v42

    const/high16 v43, 0x40400000    # 3.0f

    cmpg-float v42, v42, v43

    if-gez v42, :cond_a

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetextsize:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I

    move/from16 v42, v0

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    mul-float v42, v42, v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mDateleftoffset:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    add-float v33, v42, v43

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetopoffset:I

    move/from16 v42, v0

    add-int v42, v42, v16

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v34, v0

    .line 232
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mCalendardate:Z

    move/from16 v42, v0

    if-eqz v42, :cond_8

    .line 233
    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v32

    invoke-virtual {v12, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 279
    :cond_8
    :goto_1
    const/16 v42, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v31, v6

    .line 280
    goto/16 :goto_0

    .line 171
    .end local v9    # "calIcon":Landroid/graphics/drawable/BitmapDrawable;
    .end local v16    # "dateHeight":I
    .end local v24    # "left":I
    .end local v30    # "sOldBounds":Landroid/graphics/Rect;
    .end local v32    # "textPaint":Landroid/graphics/Paint;
    .end local v33    # "textX":F
    .end local v34    # "textY":F
    .end local v37    # "top":I
    .end local v39    # "weekDay":Ljava/lang/String;
    .end local v40    # "weekHeight":I
    :cond_9
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 238
    .restart local v9    # "calIcon":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v16    # "dateHeight":I
    .restart local v24    # "left":I
    .restart local v30    # "sOldBounds":Landroid/graphics/Rect;
    .restart local v32    # "textPaint":Landroid/graphics/Paint;
    .restart local v33    # "textX":F
    .restart local v34    # "textY":F
    .restart local v37    # "top":I
    .restart local v39    # "weekDay":Ljava/lang/String;
    .restart local v40    # "weekHeight":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetextsize:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I

    move/from16 v42, v0

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 242
    .local v19, "dateTextRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 243
    .local v5, "bgRect":Landroid/graphics/Rect;
    const/16 v42, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v43

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v43

    move-object/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 244
    sget-object v42, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v41

    move/from16 v1, v22

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 245
    .local v15, "dateBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 246
    .local v8, "c":Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Paint;->reset()V

    .line 249
    :try_start_0
    const-string v42, "/system/fonts/HYQiHei-35.ttf"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v38

    .line 250
    .local v38, "type":Landroid/graphics/Typeface;
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v38    # "type":Landroid/graphics/Typeface;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetextsize:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I

    move/from16 v42, v0

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    const/16 v42, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 257
    const/16 v42, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v43

    add-int/lit8 v43, v43, 0x1e

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v32

    invoke-virtual {v8, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 258
    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/vivo/content/ImageUtil;->computeOutlineRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 259
    invoke-static {v6, v5}, Lcom/vivo/content/ImageUtil;->computeOutlineRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mDatetopoffset:I

    move/from16 v42, v0

    add-int v42, v42, v16

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v34, v0

    .line 261
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v43

    div-int/lit8 v43, v43, 0x2

    add-int v42, v42, v43

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v44

    div-int/lit8 v44, v44, 0x2

    add-int v43, v43, v44

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v25, v0

    .line 263
    .local v25, "offsetX":F
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v43

    div-int/lit8 v43, v43, 0x2

    add-int v42, v42, v43

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v44

    div-int/lit8 v44, v44, 0x2

    add-int v43, v43, v44

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v26, v0

    .line 265
    .local v26, "offsetY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mCalendartweek:Z

    move/from16 v42, v0

    if-eqz v42, :cond_b

    .line 266
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    add-float v26, v42, v34

    .line 268
    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    sub-float v26, v26, v42

    .line 270
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Paint;->reset()V

    .line 271
    sget-object v42, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 272
    const/16 v42, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 274
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/content/DynamicCalendarIcon;->mCalendardate:Z

    move/from16 v42, v0

    if-eqz v42, :cond_c

    .line 275
    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v32

    invoke-virtual {v12, v15, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 277
    :cond_c
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 251
    .end local v25    # "offsetX":F
    .end local v26    # "offsetY":F
    :catch_0
    move-exception v21

    .line 252
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/vivo/content/DynamicIcon;->getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 82
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 83
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/vivo/content/DynamicCalendarIcon;->mThemePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "config":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/vivo/content/DynamicCalendarIcon;->parserConfig(Ljava/io/File;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/vivo/content/DynamicCalendarIcon;->creatDynamicIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    .end local v0    # "config":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method protected parserConfig(Ljava/io/File;)V
    .locals 8
    .param p1, "config"    # Ljava/io/File;

    .prologue
    .line 94
    const/4 v3, 0x0

    .line 96
    .local v3, "instream":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v3    # "instream":Ljava/io/InputStream;
    .local v4, "instream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 98
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 99
    .local v5, "parser":Ljavax/xml/parsers/SAXParser;
    const/4 v2, 0x0

    .line 100
    .local v2, "handler":Lorg/xml/sax/helpers/DefaultHandler;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/vivo/content/DynamicCalendarIcon;->mThemePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    new-instance v2, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;

    .end local v2    # "handler":Lorg/xml/sax/helpers/DefaultHandler;
    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;-><init>(Lcom/vivo/content/DynamicCalendarIcon;Lcom/vivo/content/DynamicCalendarIcon$1;)V

    .line 102
    .restart local v2    # "handler":Lorg/xml/sax/helpers/DefaultHandler;
    sget-object v6, Lcom/vivo/content/DynamicCalendarIcon;->mOldVersionCalendarBgPath:Ljava/lang/String;

    iput-object v6, p0, Lcom/vivo/content/DynamicCalendarIcon;->mBackground:Ljava/lang/String;

    .line 106
    :goto_0
    invoke-virtual {v5, v4, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    move-object v3, v4

    .line 110
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "handler":Lorg/xml/sax/helpers/DefaultHandler;
    .end local v4    # "instream":Ljava/io/InputStream;
    .end local v5    # "parser":Ljavax/xml/parsers/SAXParser;
    .restart local v3    # "instream":Ljava/io/InputStream;
    :goto_1
    return-void

    .line 104
    .end local v3    # "instream":Ljava/io/InputStream;
    .restart local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v2    # "handler":Lorg/xml/sax/helpers/DefaultHandler;
    .restart local v4    # "instream":Ljava/io/InputStream;
    .restart local v5    # "parser":Ljavax/xml/parsers/SAXParser;
    :cond_0
    new-instance v2, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;

    .end local v2    # "handler":Lorg/xml/sax/helpers/DefaultHandler;
    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;-><init>(Lcom/vivo/content/DynamicCalendarIcon;Lcom/vivo/content/DynamicCalendarIcon$1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v2    # "handler":Lorg/xml/sax/helpers/DefaultHandler;
    goto :goto_0

    .line 107
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "handler":Lorg/xml/sax/helpers/DefaultHandler;
    .end local v4    # "instream":Ljava/io/InputStream;
    .end local v5    # "parser":Ljavax/xml/parsers/SAXParser;
    .restart local v3    # "instream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "Launcher.DynamicCalendarIcon"

    const-string v7, "parser dynamic icon manifest failed!"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "instream":Ljava/io/InputStream;
    .restart local v4    # "instream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "instream":Ljava/io/InputStream;
    .restart local v3    # "instream":Ljava/io/InputStream;
    goto :goto_2
.end method
