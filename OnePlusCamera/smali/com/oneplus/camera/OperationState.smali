.class public final enum Lcom/oneplus/camera/OperationState;
.super Ljava/lang/Enum;
.source "OperationState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/OperationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/OperationState;

.field public static final enum STARTED:Lcom/oneplus/camera/OperationState;

.field public static final enum STARTING:Lcom/oneplus/camera/OperationState;

.field public static final enum STOPPED:Lcom/oneplus/camera/OperationState;

.field public static final enum STOPPING:Lcom/oneplus/camera/OperationState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/oneplus/camera/OperationState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/OperationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    .line 15
    new-instance v0, Lcom/oneplus/camera/OperationState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/OperationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    .line 19
    new-instance v0, Lcom/oneplus/camera/OperationState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/OperationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    .line 23
    new-instance v0, Lcom/oneplus/camera/OperationState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/OperationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/OperationState;->$VALUES:[Lcom/oneplus/camera/OperationState;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/OperationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/camera/OperationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/OperationState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/camera/OperationState;->$VALUES:[Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, [Lcom/oneplus/camera/OperationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/OperationState;

    return-object v0
.end method
