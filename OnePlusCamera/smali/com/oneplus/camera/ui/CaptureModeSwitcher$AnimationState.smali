.class final enum Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;
.super Ljava/lang/Enum;
.source "CaptureModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

.field public static final enum ANIMATING:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

.field public static final enum CANCEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

.field public static final enum END:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

.field public static final enum IDLE:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

.field public static final enum STARTED:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 309
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->IDLE:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 310
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->STARTED:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 311
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->CANCEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 312
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    const-string v1, "ANIMATING"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->ANIMATING:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 313
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    const-string v1, "END"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->END:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 307
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->IDLE:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->STARTED:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->CANCEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->ANIMATING:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->END:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->$VALUES:[Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

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
    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 307
    const-class v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->$VALUES:[Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    invoke-virtual {v0}, [Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    return-object v0
.end method
