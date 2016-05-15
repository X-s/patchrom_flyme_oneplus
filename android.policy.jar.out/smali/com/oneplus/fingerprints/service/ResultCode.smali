.class public Lcom/oneplus/fingerprints/service/ResultCode;
.super Ljava/lang/Object;
.source "ResultCode.java"


# static fields
.field public static final CMD_OPEN_CLIENT_ALREADY_BOUND:I = 0x1f9

.field public static final CMD_OPEN_CLIENT_BOUND_FAILED:I = 0x1f5

.field public static final CMD_OPEN_CLIENT_BOUND_SUCCESS:I = 0x0

.field public static final CMD_OPEN_CLIENT_CONFLICTED:I = 0x1fa

.field public static final CMD_OPEN_CLIENT_NULL:I = 0x1f8

.field public static final CMD_OPEN_CLIENT_PERMISSION_DENY:I = 0x1f7

.field public static final CMD_OPEN_DEVICE_UNSUPPORT:I = 0x1f6

.field public static final CMD_RELEASE_ALREADY:I = 0x25a

.field public static final CMD_RELEASE_FAIELD:I = 0x259

.field public static final CMD_RELEASE_SUCCESS:I

.field public static CMD_RESULT_FAIL:I

.field public static CMD_RESULT_OK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/fingerprints/service/ResultCode;->CMD_RESULT_OK:I

    .line 30
    const/4 v0, -0x1

    sput v0, Lcom/oneplus/fingerprints/service/ResultCode;->CMD_RESULT_FAIL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResultOpenString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resultCode"    # I

    .prologue
    .line 35
    sparse-switch p0, :sswitch_data_0

    .line 57
    const-string v0, "unknown_code"

    :goto_0
    return-object v0

    .line 37
    :sswitch_0
    const-string v0, "DEVICE_UNSUPPORT"

    goto :goto_0

    .line 40
    :sswitch_1
    const-string v0, "CLIENT_PERMISSION_DENY"

    goto :goto_0

    .line 43
    :sswitch_2
    const-string v0, "CLIENT_NULL"

    goto :goto_0

    .line 46
    :sswitch_3
    const-string v0, "CLIENT_ALREAD_BOUND"

    goto :goto_0

    .line 49
    :sswitch_4
    const-string v0, "CLIENT_CONFLICTED"

    goto :goto_0

    .line 52
    :sswitch_5
    const-string v0, "CLIENT_BOUND_SUCCESS"

    goto :goto_0

    .line 55
    :sswitch_6
    const-string v0, "CLIENT_BOUND_FAILED"

    goto :goto_0

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1f5 -> :sswitch_6
        0x1f6 -> :sswitch_0
        0x1f7 -> :sswitch_1
        0x1f8 -> :sswitch_2
        0x1f9 -> :sswitch_3
        0x1fa -> :sswitch_4
    .end sparse-switch
.end method
