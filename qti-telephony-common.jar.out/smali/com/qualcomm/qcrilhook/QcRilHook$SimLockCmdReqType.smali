.class public final enum Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;
.super Ljava/lang/Enum;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimLockCmdReqType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

.field public static final enum SIMLOCK_GET_RE_TIMES:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

.field public static final enum SIMLOCK_GET_STATUS_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

.field public static final enum SIMLOCK_LOCKED_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

.field public static final enum SIMLOCK_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

.field public static final enum SIMLOCK_SET_UNSL_ENABLE:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

.field public static final enum SIMLOCK_UNLOCK_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1876
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    const-string/jumbo v1, "SIMLOCK_UNLOCK_REQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_UNLOCK_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    .line 1877
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    const-string/jumbo v1, "SIMLOCK_LOCKED_REQ"

    invoke-direct {v0, v1, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_LOCKED_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    .line 1878
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    const-string/jumbo v1, "SIMLOCK_GET_RE_TIMES"

    invoke-direct {v0, v1, v4, v5}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_GET_RE_TIMES:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    .line 1879
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    const-string/jumbo v1, "SIMLOCK_SET_UNSL_ENABLE"

    invoke-direct {v0, v1, v5, v6}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_SET_UNSL_ENABLE:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    .line 1880
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    const-string/jumbo v1, "SIMLOCK_GET_STATUS_REQ"

    invoke-direct {v0, v1, v6, v7}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_GET_STATUS_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    .line 1881
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    const-string/jumbo v1, "SIMLOCK_MAX_CMD"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v7, v2}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    .line 1875
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_UNLOCK_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_LOCKED_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_GET_RE_TIMES:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_SET_UNSL_ENABLE:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_GET_STATUS_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I

    .prologue
    .line 1885
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1883
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->value:I

    .line 1887
    iput p3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->value:I

    .line 1885
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1875
    const-class v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;
    .locals 1

    .prologue
    .line 1875
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 1892
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->value:I

    return v0
.end method
