.class final enum Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;
.super Ljava/lang/Enum;
.source "CaptureModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GestureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

.field public static final enum CHECKING_DIRECTION:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

.field public static final enum IDLE:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

.field public static final enum INVALID:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

.field public static final enum SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

.field public static final enum SLIDING_LEFT:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

.field public static final enum SLIDING_RIGHT:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

.field public static final enum SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->IDLE:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .line 298
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->INVALID:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .line 299
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    const-string v1, "CHECKING_DIRECTION"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->CHECKING_DIRECTION:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .line 300
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    const-string v1, "SLIDING_UP"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .line 301
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    const-string v1, "SLIDING_DOWN"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .line 302
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    const-string v1, "SLIDING_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_LEFT:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .line 303
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    const-string v1, "SLIDING_RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_RIGHT:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    .line 295
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->IDLE:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->INVALID:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->CHECKING_DIRECTION:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_LEFT:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_RIGHT:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->$VALUES:[Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

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
    .line 295
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 295
    const-class v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->$VALUES:[Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    invoke-virtual {v0}, [Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    return-object v0
.end method
