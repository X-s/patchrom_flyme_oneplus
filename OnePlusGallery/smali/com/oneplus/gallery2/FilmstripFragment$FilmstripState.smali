.class final enum Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;
.super Ljava/lang/Enum;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilmstripState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

.field public static final enum BACKGROUND:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

.field public static final enum BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

.field public static final enum VIEW_DETAILS:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    .line 402
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    const-string v1, "BROWSE_SINGLE_PAGE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    .line 403
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    const-string v1, "VIEW_DETAILS"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    .line 399
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->$VALUES:[Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

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
    .line 399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 399
    const-class v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->$VALUES:[Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    return-object v0
.end method
