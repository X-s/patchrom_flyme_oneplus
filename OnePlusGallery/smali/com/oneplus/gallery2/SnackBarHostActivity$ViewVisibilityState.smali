.class final enum Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;
.super Ljava/lang/Enum;
.source "SnackBarHostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/SnackBarHostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewVisibilityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

.field public static final enum INVISIBLE:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

.field public static final enum IN_ANIMATING:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

.field public static final enum OUT_ANIMATING:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

.field public static final enum VISIBLE:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    const-string v1, "IN_ANIMATING"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    .line 41
    new-instance v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    .line 42
    new-instance v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    const-string v1, "OUT_ANIMATING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    .line 43
    new-instance v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->$VALUES:[Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->$VALUES:[Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    return-object v0
.end method
