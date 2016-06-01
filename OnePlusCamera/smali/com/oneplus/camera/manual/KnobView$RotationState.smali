.class public final enum Lcom/oneplus/camera/manual/KnobView$RotationState;
.super Ljava/lang/Enum;
.source "KnobView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/KnobView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RotationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/manual/KnobView$RotationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/manual/KnobView$RotationState;

.field public static final enum IDLE:Lcom/oneplus/camera/manual/KnobView$RotationState;

.field public static final enum ROTATING:Lcom/oneplus/camera/manual/KnobView$RotationState;

.field public static final enum STARTING:Lcom/oneplus/camera/manual/KnobView$RotationState;

.field public static final enum STOPPING:Lcom/oneplus/camera/manual/KnobView$RotationState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    new-instance v0, Lcom/oneplus/camera/manual/KnobView$RotationState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/manual/KnobView$RotationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->IDLE:Lcom/oneplus/camera/manual/KnobView$RotationState;

    .line 199
    new-instance v0, Lcom/oneplus/camera/manual/KnobView$RotationState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/manual/KnobView$RotationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->STARTING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    .line 200
    new-instance v0, Lcom/oneplus/camera/manual/KnobView$RotationState;

    const-string v1, "ROTATING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/manual/KnobView$RotationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->ROTATING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    .line 201
    new-instance v0, Lcom/oneplus/camera/manual/KnobView$RotationState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/manual/KnobView$RotationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->STOPPING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    .line 196
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/manual/KnobView$RotationState;

    sget-object v1, Lcom/oneplus/camera/manual/KnobView$RotationState;->IDLE:Lcom/oneplus/camera/manual/KnobView$RotationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/manual/KnobView$RotationState;->STARTING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/manual/KnobView$RotationState;->ROTATING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/manual/KnobView$RotationState;->STOPPING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->$VALUES:[Lcom/oneplus/camera/manual/KnobView$RotationState;

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
    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/manual/KnobView$RotationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    const-class v0, Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobView$RotationState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/manual/KnobView$RotationState;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->$VALUES:[Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-virtual {v0}, [Lcom/oneplus/camera/manual/KnobView$RotationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/manual/KnobView$RotationState;

    return-object v0
.end method
