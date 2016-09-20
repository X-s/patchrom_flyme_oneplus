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

.field public static final enum TAKE_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    new-instance v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    const-string v1, "CAPTURE_STOPPING"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->CAPTURE_STOPPING:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 183
    new-instance v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    const-string v1, "FRAME_COUNT_REACHED"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->FRAME_COUNT_REACHED:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 184
    new-instance v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    const-string v1, "INVALID_JPEG"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_JPEG:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 185
    new-instance v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    const-string v1, "TAKE_NEXT_PICTURE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->TAKE_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 180
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->CAPTURE_STOPPING:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->FRAME_COUNT_REACHED:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_JPEG:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->TAKE_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->$VALUES:[Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    const-class v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->$VALUES:[Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v0}, [Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    return-object v0
.end method
