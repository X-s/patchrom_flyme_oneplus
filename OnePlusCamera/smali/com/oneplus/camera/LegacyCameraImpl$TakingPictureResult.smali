.class final enum Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;
.super Ljava/lang/Enum;
.source "LegacyCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/LegacyCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TakingPictureResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

.field public static final enum CAPTURE_STOPPING:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

.field public static final enum FRAME_COUNT_REACHED:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

.field public static final enum INVALID_JPEG:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

.field public static final enum INVALID_RAW:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

.field public static final enum TAKE_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

.field public static final enum WAIT_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    new-instance v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    const-string/jumbo v1, "CAPTURE_STOPPING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->CAPTURE_STOPPING:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 289
    new-instance v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    const-string/jumbo v1, "FRAME_COUNT_REACHED"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->FRAME_COUNT_REACHED:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 290
    new-instance v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    const-string/jumbo v1, "INVALID_JPEG"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_JPEG:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 291
    new-instance v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    const-string/jumbo v1, "TAKE_NEXT_PICTURE"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->TAKE_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 292
    new-instance v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    const-string/jumbo v1, "INVALID_RAW"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_RAW:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 293
    new-instance v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    const-string/jumbo v1, "WAIT_NEXT_PICTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->WAIT_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 286
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->CAPTURE_STOPPING:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->FRAME_COUNT_REACHED:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_JPEG:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->TAKE_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_RAW:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->WAIT_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->$VALUES:[Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 286
    const-class v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->$VALUES:[Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    return-object v0
.end method
