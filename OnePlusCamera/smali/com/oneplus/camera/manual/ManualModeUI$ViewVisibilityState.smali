.class final enum Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
.super Ljava/lang/Enum;
.source "ManualModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/ManualModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ViewVisibilityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

.field public static final enum INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

.field public static final enum IN_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

.field public static final enum OUT_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

.field public static final enum VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    const-string/jumbo v1, "IN_ANIMATING"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 111
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    const-string/jumbo v1, "VISIBLE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 112
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    const-string/jumbo v1, "OUT_ANIMATING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 113
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    const-string/jumbo v1, "INVISIBLE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->$VALUES:[Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->$VALUES:[Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    return-object v0
.end method
