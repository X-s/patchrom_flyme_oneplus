.class final enum Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;
.super Ljava/lang/Enum;
.source "SensorFocusControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/SensorFocusControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SensorAfState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

.field public static final enum STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

.field public static final enum STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

.field public static final enum UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    const-string v1, "UNSTABLE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 46
    new-instance v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    const-string v1, "STABLE_BEFORE_AF"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 47
    new-instance v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    const-string v1, "STABLE_WITH_AF"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->UNSTABLE:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_BEFORE_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->$VALUES:[Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->$VALUES:[Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    invoke-virtual {v0}, [Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/SensorFocusControllerImpl$SensorAfState;

    return-object v0
.end method
