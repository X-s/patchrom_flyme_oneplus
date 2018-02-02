.class final enum Lcom/oneplus/camera/OPPictureProcessService$ProcessState;
.super Ljava/lang/Enum;
.source "OPPictureProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/OPPictureProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProcessState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/OPPictureProcessService$ProcessState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

.field public static final enum COMPLETED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

.field public static final enum NO_NEED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

.field public static final enum PROCESSING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

.field public static final enum REPLACING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    const-string/jumbo v1, "NO_NEED"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->NO_NEED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 119
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    const-string/jumbo v1, "PROCESSING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->PROCESSING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 120
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    const-string/jumbo v1, "REPLACING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->REPLACING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 121
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    const-string/jumbo v1, "COMPLETED"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->COMPLETED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->NO_NEED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->PROCESSING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->REPLACING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->COMPLETED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->$VALUES:[Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/OPPictureProcessService$ProcessState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    const-class v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/OPPictureProcessService$ProcessState;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->$VALUES:[Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    return-object v0
.end method
