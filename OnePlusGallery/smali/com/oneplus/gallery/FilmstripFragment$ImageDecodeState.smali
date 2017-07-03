.class final enum Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;
.super Ljava/lang/Enum;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ImageDecodeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

.field public static final enum LARGE_IMAGE_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

.field public static final enum NONE:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

.field public static final enum SMALL_THUMB_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

.field public static final enum THUMB_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 369
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    .line 370
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    const-string v1, "SMALL_THUMB_DECODED"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    .line 371
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    const-string v1, "THUMB_DECODED"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    .line 372
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    const-string v1, "LARGE_IMAGE_DECODED"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    .line 367
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->$VALUES:[Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

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
    .line 367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    const-class v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->$VALUES:[Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    return-object v0
.end method
