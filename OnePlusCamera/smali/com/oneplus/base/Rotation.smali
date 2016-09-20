.class public final enum Lcom/oneplus/base/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/Rotation$1;
    }
.end annotation

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

.field public static final enum INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

.field public static final enum INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

.field public static final enum LANDSCAPE:Lcom/oneplus/base/Rotation;

.field public static final enum PORTRAIT:Lcom/oneplus/base/Rotation;


# instance fields
.field private final m_DeviceOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/oneplus/base/Rotation;

    const-string v1, "LANDSCAPE"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v3, v2}, Lcom/oneplus/base/Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    .line 18
    new-instance v0, Lcom/oneplus/base/Rotation;

    const-string v1, "INVERSE_LANDSCAPE"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v4, v2}, Lcom/oneplus/base/Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    .line 22
    new-instance v0, Lcom/oneplus/base/Rotation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v5, v3}, Lcom/oneplus/base/Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    .line 26
    new-instance v0, Lcom/oneplus/base/Rotation;

    const-string v1, "INVERSE_PORTRAIT"

    const/16 v2, 0xb4

    invoke-direct {v0, v1, v6, v2}, Lcom/oneplus/base/Rotation;-><init>(Ljava/lang/String;II)V

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/oneplus/base/Rotation;->m_DeviceOrientation:I

    .line 38
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

    .line 57
    :goto_1
    return-object v0

    .line 53
    :cond_1
    if-lt p0, v1, :cond_2

    if-ge p0, v2, :cond_2

    .line 54
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    goto :goto_1

    .line 55
    :cond_2
    if-lt p0, v2, :cond_3

    const/16 v0, 0x13b

    if-ge p0, v0, :cond_3

    .line 56
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    goto :goto_1

    .line 57
    :cond_3
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    goto :goto_1
.end method

.method public static fromScreenOrientation(I)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "screenOrientation"    # I

    .prologue
    .line 68
    sparse-switch p0, :sswitch_data_0

    .line 79
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    :goto_0
    return-object v0

    .line 71
    :sswitch_0
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    goto :goto_0

    .line 73
    :sswitch_1
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    goto :goto_0

    .line 75
    :sswitch_2
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    goto :goto_0

    .line 77
    :sswitch_3
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    goto :goto_0

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

    invoke-virtual {v0}, [Lcom/oneplus/base/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/Rotation;

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

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/oneplus/base/Rotation$1;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {p0}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 103
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/oneplus/base/Rotation$1;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {p0}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 120
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
