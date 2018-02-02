.class public final enum Lcom/oneplus/base/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/base/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/base/Rotation;

.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I

.field public static final enum INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

.field public static final enum INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

.field public static final enum LANDSCAPE:Lcom/oneplus/base/Rotation;

.field public static final enum PORTRAIT:Lcom/oneplus/base/Rotation;


# instance fields
.field private final m_DeviceOrientation:I


# direct methods
.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/base/Rotation;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/base/Rotation;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/base/Rotation;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/oneplus/base/Rotation;

    const-string/jumbo v1, "LANDSCAPE"

    .line 14
    const/16 v2, 0x10e

    .line 11
    invoke-direct {v0, v1, v3, v2}, Lcom/oneplus/base/Rotation;-><init>(Ljava/lang/String;II)V

    .line 14
    sput-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    .line 15
    new-instance v0, Lcom/oneplus/base/Rotation;

    const-string/jumbo v1, "INVERSE_LANDSCAPE"

    .line 18
    const/16 v2, 0x5a

    .line 15
    invoke-direct {v0, v1, v4, v2}, Lcom/oneplus/base/Rotation;-><init>(Ljava/lang/String;II)V

    .line 18
    sput-object v0, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    .line 19
    new-instance v0, Lcom/oneplus/base/Rotation;

    const-string/jumbo v1, "PORTRAIT"

    invoke-direct {v0, v1, v5, v3}, Lcom/oneplus/base/Rotation;-><init>(Ljava/lang/String;II)V

    .line 22
    sput-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    .line 23
    new-instance v0, Lcom/oneplus/base/Rotation;

    const-string/jumbo v1, "INVERSE_PORTRAIT"

    .line 26
    const/16 v2, 0xb4

    .line 23
    invoke-direct {v0, v1, v6, v2}, Lcom/oneplus/base/Rotation;-><init>(Ljava/lang/String;II)V

    .line 26
    sput-object v0, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/base/Rotation;

    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/base/Rotation;->$VALUES:[Lcom/oneplus/base/Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "deviceOrientation"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/oneplus/base/Rotation;->m_DeviceOrientation:I

    .line 35
    return-void
.end method

.method public static fromDeviceOrientation(I)Lcom/oneplus/base/Rotation;
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    const/16 v2, 0xe1

    const/16 v1, 0x87

    .line 48
    :goto_0
    if-gez p0, :cond_0

    .line 49
    add-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 50
    :cond_0
    rem-int/lit16 p0, p0, 0x168

    .line 51
    const/16 v0, 0x2d

    if-lt p0, v0, :cond_1

    if-ge p0, v1, :cond_1

    .line 52
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 53
    :cond_1
    if-lt p0, v1, :cond_2

    if-ge p0, v2, :cond_2

    .line 54
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 55
    :cond_2
    if-lt p0, v2, :cond_3

    const/16 v0, 0x13b

    if-ge p0, v0, :cond_3

    .line 56
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 57
    :cond_3
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    return-object v0
.end method

.method public static fromScreenOrientation(I)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "screenOrientation"    # I

    .prologue
    .line 68
    sparse-switch p0, :sswitch_data_0

    .line 79
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 71
    :sswitch_0
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 73
    :sswitch_1
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 75
    :sswitch_2
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 77
    :sswitch_3
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    return-object v0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/oneplus/base/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Rotation;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/base/Rotation;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/oneplus/base/Rotation;->$VALUES:[Lcom/oneplus/base/Rotation;

    return-object v0
.end method


# virtual methods
.method public getDeviceOrientation()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/oneplus/base/Rotation;->m_DeviceOrientation:I

    return v0
.end method

.method public isInverse()Z
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/oneplus/base/Rotation;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    return v0

    .line 103
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/oneplus/base/Rotation;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 120
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/oneplus/base/Rotation;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 137
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
