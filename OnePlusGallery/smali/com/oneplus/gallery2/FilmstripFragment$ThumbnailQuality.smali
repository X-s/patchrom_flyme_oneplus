.class final enum Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;
.super Ljava/lang/Enum;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ThumbnailQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

.field public static final enum LOW:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

.field public static final enum NORMAL:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 421
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->LOW:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    .line 422
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->NORMAL:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    .line 419
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->LOW:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->NORMAL:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->$VALUES:[Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

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
    .line 419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 419
    const-class v0, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->$VALUES:[Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    return-object v0
.end method
