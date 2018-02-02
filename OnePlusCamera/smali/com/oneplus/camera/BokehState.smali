.class public final enum Lcom/oneplus/camera/BokehState;
.super Ljava/lang/Enum;
.source "BokehState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/BokehState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/BokehState;

.field public static final enum CAMERA_COVERED:Lcom/oneplus/camera/BokehState;

.field public static final enum DISABLED:Lcom/oneplus/camera/BokehState;

.field public static final enum DISTANCE_TOO_CLOSE:Lcom/oneplus/camera/BokehState;

.field public static final enum DISTANCE_TOO_FAR:Lcom/oneplus/camera/BokehState;

.field public static final enum ERROR:Lcom/oneplus/camera/BokehState;

.field public static final enum INITIALIZING:Lcom/oneplus/camera/BokehState;

.field public static final enum LOW_LIGHT:Lcom/oneplus/camera/BokehState;

.field public static final enum NORMAL:Lcom/oneplus/camera/BokehState;

.field public static final enum NO_DEPTH_EFFECT:Lcom/oneplus/camera/BokehState;

.field public static final enum NO_SUBJECT:Lcom/oneplus/camera/BokehState;


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
    new-instance v0, Lcom/oneplus/camera/BokehState;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/BokehState;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lcom/oneplus/camera/BokehState;->DISABLED:Lcom/oneplus/camera/BokehState;

    .line 12
    new-instance v0, Lcom/oneplus/camera/BokehState;

    const-string/jumbo v1, "INITIALIZING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/BokehState;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/oneplus/camera/BokehState;->INITIALIZING:Lcom/oneplus/camera/BokehState;

    .line 16
    new-instance v0, Lcom/oneplus/camera/BokehState;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/BokehState;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/oneplus/camera/BokehState;->ERROR:Lcom/oneplus/camera/BokehState;

    .line 20
    new-instance v0, Lcom/oneplus/camera/BokehState;

    const-string/jumbo v1, "NO_DEPTH_EFFECT"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/BokehState;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/oneplus/camera/BokehState;->NO_DEPTH_EFFECT:Lcom/oneplus/camera/BokehState;

    .line 24
    new-instance v0, Lcom/oneplus/camera/BokehState;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/BokehState;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/oneplus/camera/BokehState;->NORMAL:Lcom/oneplus/camera/BokehState;

    .line 28
    new-instance v0, Lcom/oneplus/camera/BokehState;

    const-string/jumbo v1, "DISTANCE_TOO_CLOSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/BokehState;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/oneplus/camera/BokehState;->DISTANCE_TOO_CLOSE:Lcom/oneplus/camera/BokehState;

    .line 32
    new-instance v0, Lcom/oneplus/camera/BokehState;

    const-string/jumbo v1, "DISTANCE_TOO_FAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/BokehState;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v0, Lcom/oneplus/camera/BokehState;->DISTANCE_TOO_FAR:Lcom/oneplus/camera/BokehState;

    .line 36
    new-instance v0, Lcom/oneplus/camera/BokehState;

    const-string/jumbo v1, "NO_SUBJECT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/BokehState;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lcom/oneplus/camera/BokehState;->NO_SUBJECT:Lcom/oneplus/camera/BokehState;

    .line 40
    new-instance v0, Lcom/oneplus/camera/BokehState;

    const-string/jumbo v1, "LOW_LIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/BokehState;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v0, Lcom/oneplus/camera/BokehState;->LOW_LIGHT:Lcom/oneplus/camera/BokehState;

    .line 44
    new-instance v0, Lcom/oneplus/camera/BokehState;

    const-string/jumbo v1, "CAMERA_COVERED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/BokehState;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v0, Lcom/oneplus/camera/BokehState;->CAMERA_COVERED:Lcom/oneplus/camera/BokehState;

    .line 6
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/oneplus/camera/BokehState;

    sget-object v1, Lcom/oneplus/camera/BokehState;->DISABLED:Lcom/oneplus/camera/BokehState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/BokehState;->INITIALIZING:Lcom/oneplus/camera/BokehState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/BokehState;->ERROR:Lcom/oneplus/camera/BokehState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/BokehState;->NO_DEPTH_EFFECT:Lcom/oneplus/camera/BokehState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/BokehState;->NORMAL:Lcom/oneplus/camera/BokehState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/camera/BokehState;->DISTANCE_TOO_CLOSE:Lcom/oneplus/camera/BokehState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/BokehState;->DISTANCE_TOO_FAR:Lcom/oneplus/camera/BokehState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/BokehState;->NO_SUBJECT:Lcom/oneplus/camera/BokehState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/BokehState;->LOW_LIGHT:Lcom/oneplus/camera/BokehState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/BokehState;->CAMERA_COVERED:Lcom/oneplus/camera/BokehState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/BokehState;->$VALUES:[Lcom/oneplus/camera/BokehState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/BokehState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/camera/BokehState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/BokehState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/BokehState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/camera/BokehState;->$VALUES:[Lcom/oneplus/camera/BokehState;

    return-object v0
.end method
