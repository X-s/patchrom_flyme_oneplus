.class public final enum Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;
.super Ljava/lang/Enum;
.source "CameraPreviewGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CameraPreviewGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

.field public static final enum GOLDEN_RATIO:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

.field public static final enum NONE:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

.field public static final enum UNIFORM_3x3:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

.field public static final enum UNIFORM_4x4:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->NONE:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    .line 32
    new-instance v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    const-string/jumbo v1, "UNIFORM_3x3"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->UNIFORM_3x3:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    .line 36
    new-instance v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    const-string/jumbo v1, "UNIFORM_4x4"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->UNIFORM_4x4:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    .line 40
    new-instance v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    const-string/jumbo v1, "GOLDEN_RATIO"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->GOLDEN_RATIO:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->NONE:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->UNIFORM_3x3:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->UNIFORM_4x4:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->GOLDEN_RATIO:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->$VALUES:[Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->$VALUES:[Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    return-object v0
.end method
