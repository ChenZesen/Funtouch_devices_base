.class Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DynamicCalendarIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/content/DynamicCalendarIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SAXEventHandler"
.end annotation


# instance fields
.field private tempString:Ljava/lang/String;

.field final synthetic this$0:Lcom/vivo/content/DynamicCalendarIcon;


# direct methods
.method private constructor <init>(Lcom/vivo/content/DynamicCalendarIcon;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/content/DynamicCalendarIcon;Lcom/vivo/content/DynamicCalendarIcon$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p2, "x1"    # Lcom/vivo/content/DynamicCalendarIcon$1;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;-><init>(Lcom/vivo/content/DynamicCalendarIcon;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/high16 v4, -0x1000000

    .line 322
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 323
    .local v1, "valueString":Ljava/lang/String;
    const-string v2, "calendar"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mCalendar:Z
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$202(Lcom/vivo/content/DynamicCalendarIcon;Z)Z

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string v2, "dateimage"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDateimage:Z
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$302(Lcom/vivo/content/DynamicCalendarIcon;Z)Z

    goto :goto_0

    .line 327
    :cond_2
    const-string v2, "calendartweek"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mCalendartweek:Z
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$402(Lcom/vivo/content/DynamicCalendarIcon;Z)Z

    goto :goto_0

    .line 329
    :cond_3
    const-string v2, "weektextsize"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeektextsize:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$502(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto :goto_0

    .line 331
    :cond_4
    const-string v2, "weektextcolor"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 332
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeektextcolor:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$602(Lcom/vivo/content/DynamicCalendarIcon;I)I

    .line 333
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    # getter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeektextcolor:I
    invoke-static {v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$600(Lcom/vivo/content/DynamicCalendarIcon;)I

    move-result v2

    if-nez v2, :cond_5

    .line 334
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    const/4 v3, -0x1

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeektextcolor:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$602(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto :goto_0

    .line 336
    :cond_5
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    # getter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeektextcolor:I
    invoke-static {v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$600(Lcom/vivo/content/DynamicCalendarIcon;)I

    move-result v3

    or-int/2addr v3, v4

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeektextcolor:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$602(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto :goto_0

    .line 338
    :cond_6
    const-string v2, "weekleftoffset"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 339
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeekleftoffset:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$702(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto :goto_0

    .line 340
    :cond_7
    const-string v2, "weektopoffset"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 341
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeektopoffset:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$802(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto/16 :goto_0

    .line 342
    :cond_8
    const-string v2, "calendardate"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 343
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mCalendardate:Z
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$902(Lcom/vivo/content/DynamicCalendarIcon;Z)Z

    goto/16 :goto_0

    .line 344
    :cond_9
    const-string v2, "datetextsize"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 345
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextsize:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$1002(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto/16 :goto_0

    .line 346
    :cond_a
    const-string v2, "datetextcolor"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 347
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$1102(Lcom/vivo/content/DynamicCalendarIcon;I)I

    .line 348
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    # getter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I
    invoke-static {v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$1100(Lcom/vivo/content/DynamicCalendarIcon;)I

    move-result v2

    if-nez v2, :cond_b

    .line 349
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    const v3, -0xc1c1c2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$1102(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto/16 :goto_0

    .line 351
    :cond_b
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    # getter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I
    invoke-static {v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$1100(Lcom/vivo/content/DynamicCalendarIcon;)I

    move-result v3

    or-int/2addr v3, v4

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$1102(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto/16 :goto_0

    .line 353
    :cond_c
    const-string v2, "dateleftoffset"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 354
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDateleftoffset:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$1202(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto/16 :goto_0

    .line 355
    :cond_d
    const-string v2, "datetopoffset"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 356
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetopoffset:I
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$1302(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto/16 :goto_0

    .line 357
    :cond_e
    const-string v2, "background"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 358
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    iget-object v2, v2, Lcom/vivo/content/DynamicCalendarIcon;->DYNAMIC_ICON_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    iget-object v2, v2, Lcom/vivo/content/DynamicCalendarIcon;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mBackground:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$1402(Lcom/vivo/content/DynamicCalendarIcon;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 366
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_f
    const-string v2, "vivodefault"

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 367
    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDefaultCalendar:Z
    invoke-static {v2, v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$1502(Lcom/vivo/content/DynamicCalendarIcon;Z)Z

    goto/16 :goto_0

    .line 369
    :cond_10
    const-string v2, "Launcher.DynamicCalendarIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknow tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is found when read theme"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 310
    iput-object p2, p0, Lcom/vivo/content/DynamicCalendarIcon$SAXEventHandler;->tempString:Ljava/lang/String;

    .line 311
    return-void
.end method
