.class Lcom/qti/dpm/DpmService$ApnTypeToInt;
.super Ljava/lang/Object;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnTypeToInt"
.end annotation


# static fields
.field static final DPM_APN_TYPE_CBS:I = 0x7

.field static final DPM_APN_TYPE_DEFAULT:I = 0x0

.field static final DPM_APN_TYPE_DUN:I = 0x3

.field static final DPM_APN_TYPE_FOTA:I = 0x5

.field static final DPM_APN_TYPE_HIPRI:I = 0x4

.field static final DPM_APN_TYPE_IA:I = 0x8

.field static final DPM_APN_TYPE_IMS:I = 0x6

.field static final DPM_APN_TYPE_INVALID:I = 0x9

.field static final DPM_APN_TYPE_MAX:I = 0x9

.field static final DPM_APN_TYPE_MIN:I = 0x0

.field static final DPM_APN_TYPE_MMS:I = 0x1

.field static final DPM_APN_TYPE_SUPL:I = 0x2


# instance fields
.field private final apnCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method static synthetic -wrap0(Lcom/qti/dpm/DpmService$ApnTypeToInt;Ljava/lang/String;)I
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService$ApnTypeToInt;->getApnIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qti/dpm/DpmService$ApnTypeToInt;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/dpm/DpmService$ApnTypeToInt;->constructApnMap()V

    return-void
.end method

.method private constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 440
    iput-object v0, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->apnCodes:Ljava/util/Map;

    .line 426
    return-void
.end method

.method synthetic constructor <init>(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$ApnTypeToInt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/dpm/DpmService;

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService$ApnTypeToInt;-><init>(Lcom/qti/dpm/DpmService;)V

    return-void
.end method

.method private constructApnMap()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->apnCodes:Ljava/util/Map;

    const-string/jumbo v1, "default"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->apnCodes:Ljava/util/Map;

    const-string/jumbo v1, "mms"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->apnCodes:Ljava/util/Map;

    const-string/jumbo v1, "sulp"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->apnCodes:Ljava/util/Map;

    const-string/jumbo v1, "dun"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->apnCodes:Ljava/util/Map;

    const-string/jumbo v1, "hipri"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->apnCodes:Ljava/util/Map;

    const-string/jumbo v1, "fota"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->apnCodes:Ljava/util/Map;

    const-string/jumbo v1, "ims"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->apnCodes:Ljava/util/Map;

    const-string/jumbo v1, "cbs"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->apnCodes:Ljava/util/Map;

    const-string/jumbo v1, "ia"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void
.end method

.method private getApnIntValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 456
    iget-object v1, p0, Lcom/qti/dpm/DpmService$ApnTypeToInt;->apnCodes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 457
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 458
    const/16 v1, 0x9

    return v1

    .line 460
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
