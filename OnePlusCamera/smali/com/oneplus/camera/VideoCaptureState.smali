.class public final enum Lcom/oneplus/camera/VideoCaptureState;
.super Ljava/lang/Enum;
.source "VideoCaptureState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/VideoCaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/VideoCaptureState;

.field public static final enum CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

.field public static final enum PAUSED:Lcom/oneplus/camera/VideoCaptureState;

.field public static final enum PAUSING:Lcom/oneplus/camera/VideoCaptureState;

.field public static final enum PREPARING:Lcom/oneplus/camera/VideoCaptureState;

.field public static final enum READY:Lcom/oneplus/camera/VideoCaptureState;

.field public static final enum RESUMING:Lcom/oneplus/camera/VideoCaptureState;

.field public static final enum REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

.field public static final enum STARTING:Lcom/oneplus/camera/VideoCaptureState;

.field public static final enum STOPPING:Lcom/oneplus/camera/VideoCaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/oneplus/camera/VideoCaptureState;

    const-string/jumbo v1, "PREPARING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    .line 12
    new-instance v0, Lcom/oneplus/camera/VideoCaptureState;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    .line 16
    new-instance v0, Lcom/oneplus/camera/VideoCaptureState;

    const-string/jumbo v1, "STARTING"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    .line 20
    new-instance v0, Lcom/oneplus/camera/VideoCaptureState;

    const-string/jumbo v1, "CAPTURING"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    .line 24
    new-instance v0, Lcom/oneplus/camera/VideoCaptureState;

    const-string/jumbo v1, "PAUSING"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    .line 28
    new-instance v0, Lcom/oneplus/camera/VideoCaptureState;

    const-string/jumbo v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    .line 32
    new-instance v0, Lcom/oneplus/camera/VideoCaptureState;

    const-string/jumbo v1, "RESUMING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v0, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    .line 36
    new-instance v0, Lcom/oneplus/camera/VideoCaptureState;

    const-string/jumbo v1, "STOPPING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    .line 40
    new-instance v0, Lcom/oneplus/camera/VideoCaptureState;

    const-string/jumbo v1, "REVIEWING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v0, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oneplus/camera/VideoCaptureState;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/VideoCaptureState;->$VALUES:[Lcom/oneplus/camera/VideoCaptureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/VideoCaptureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/VideoCaptureState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/camera/VideoCaptureState;->$VALUES:[Lcom/oneplus/camera/VideoCaptureState;

    return-object v0
.end method
