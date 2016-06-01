.class public final enum Lcom/oneplus/camera/Camera$HardwareLevel;
.super Ljava/lang/Enum;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HardwareLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/Camera$HardwareLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/Camera$HardwareLevel;

.field public static final enum FULL:Lcom/oneplus/camera/Camera$HardwareLevel;

.field public static final enum LEGACY:Lcom/oneplus/camera/Camera$HardwareLevel;

.field public static final enum LIMITED:Lcom/oneplus/camera/Camera$HardwareLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 504
    new-instance v0, Lcom/oneplus/camera/Camera$HardwareLevel;

    const-string v1, "LIMITED"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/Camera$HardwareLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/Camera$HardwareLevel;->LIMITED:Lcom/oneplus/camera/Camera$HardwareLevel;

    .line 508
    new-instance v0, Lcom/oneplus/camera/Camera$HardwareLevel;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/Camera$HardwareLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/Camera$HardwareLevel;->FULL:Lcom/oneplus/camera/Camera$HardwareLevel;

    .line 512
    new-instance v0, Lcom/oneplus/camera/Camera$HardwareLevel;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/Camera$HardwareLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/Camera$HardwareLevel;->LEGACY:Lcom/oneplus/camera/Camera$HardwareLevel;

    .line 498
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/camera/Camera$HardwareLevel;

    sget-object v1, Lcom/oneplus/camera/Camera$HardwareLevel;->LIMITED:Lcom/oneplus/camera/Camera$HardwareLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/Camera$HardwareLevel;->FULL:Lcom/oneplus/camera/Camera$HardwareLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/Camera$HardwareLevel;->LEGACY:Lcom/oneplus/camera/Camera$HardwareLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/camera/Camera$HardwareLevel;->$VALUES:[Lcom/oneplus/camera/Camera$HardwareLevel;

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
    .line 498
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/Camera$HardwareLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 498
    const-class v0, Lcom/oneplus/camera/Camera$HardwareLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$HardwareLevel;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/Camera$HardwareLevel;
    .locals 1

    .prologue
    .line 498
    sget-object v0, Lcom/oneplus/camera/Camera$HardwareLevel;->$VALUES:[Lcom/oneplus/camera/Camera$HardwareLevel;

    invoke-virtual {v0}, [Lcom/oneplus/camera/Camera$HardwareLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/Camera$HardwareLevel;

    return-object v0
.end method
