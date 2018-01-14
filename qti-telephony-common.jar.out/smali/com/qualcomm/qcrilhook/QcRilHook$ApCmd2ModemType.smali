.class public final enum Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
.super Ljava/lang/Enum;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApCmd2ModemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_GET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_GET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_NV_BACKUP:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_NV_CHECK:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_NV_RESTORE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_GET_QAT3350_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_GET_QAT3514_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_GET_QM13119_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_GET_SIM_MEID:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_REMOTEFS_SYNC:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_SET_QAT3350_C1_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_SET_QAT3514_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_SET_QM13119_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_SET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_SET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1787
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_NV_BACKUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_BACKUP:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1788
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_NV_RESTORE"

    invoke-direct {v0, v1, v4, v5}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_RESTORE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1789
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_NV_CHECK"

    invoke-direct {v0, v1, v5, v6}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_CHECK:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1790
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_SET_ANTENNA"

    invoke-direct {v0, v1, v6, v7}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1791
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_GET_ANTENNA_POS"

    invoke-direct {v0, v1, v7, v8}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1792
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_SET_AUTO_SELECT_CONFIG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1793
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_GET_AUTO_SELECT_CONFIG"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1794
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_REMOTEFS_SYNC"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_REMOTEFS_SYNC:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1795
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_GET_SIM_MEID"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_SIM_MEID:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1796
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_GET_QAT3350_CONFIG"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QAT3350_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1797
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_GET_QAT3514_CONFIG"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QAT3514_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1798
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_GET_QM13119_CONFIG"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QM13119_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1799
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_SET_QAT3350_C1_SW"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QAT3350_C1_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1800
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_SET_QAT3514_SW"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QAT3514_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1801
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_SET_QM13119_SW"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QM13119_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1802
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_GET_DPDT_CONFIG"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1803
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_SET_DPDT_CONFIG"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1804
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_MAX_CMD"

    const/16 v2, 0x11

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1786
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_BACKUP:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_RESTORE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_CHECK:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_REMOTEFS_SYNC:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_SIM_MEID:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QAT3350_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QAT3514_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QM13119_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QAT3350_C1_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QAT3514_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QM13119_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I

    .prologue
    .line 1808
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1806
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->value:I

    .line 1810
    iput p3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->value:I

    .line 1808
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1786
    const-class v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
    .locals 1

    .prologue
    .line 1786
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 1815
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->value:I

    return v0
.end method
