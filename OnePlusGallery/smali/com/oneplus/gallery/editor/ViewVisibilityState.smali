.class public final enum Lcom/oneplus/gallery/editor/ViewVisibilityState;
.super Ljava/lang/Enum;
.source "ViewVisibilityState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/editor/ViewVisibilityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/editor/ViewVisibilityState;

.field public static final enum INVISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;

.field public static final enum IN_ANIMATION:Lcom/oneplus/gallery/editor/ViewVisibilityState;

.field public static final enum OUT_ANIMATION:Lcom/oneplus/gallery/editor/ViewVisibilityState;

.field public static final enum VISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;

    const-string v1, "IN_ANIMATION"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/editor/ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;->IN_ANIMATION:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    .line 13
    new-instance v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/editor/ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    .line 18
    new-instance v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;

    const-string v1, "OUT_ANIMATION"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/editor/ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;->OUT_ANIMATION:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    .line 23
    new-instance v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery/editor/ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/gallery/editor/ViewVisibilityState;

    sget-object v1, Lcom/oneplus/gallery/editor/ViewVisibilityState;->IN_ANIMATION:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/editor/ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/editor/ViewVisibilityState;->OUT_ANIMATION:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery/editor/ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;->$VALUES:[Lcom/oneplus/gallery/editor/ViewVisibilityState;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/editor/ViewVisibilityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/editor/ViewVisibilityState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;->$VALUES:[Lcom/oneplus/gallery/editor/ViewVisibilityState;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/editor/ViewVisibilityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/editor/ViewVisibilityState;

    return-object v0
.end method
