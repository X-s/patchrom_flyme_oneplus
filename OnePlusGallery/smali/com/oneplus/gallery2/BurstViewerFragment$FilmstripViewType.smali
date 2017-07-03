.class final enum Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;
.super Ljava/lang/Enum;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilmstripViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

.field public static final enum CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

.field public static final enum FOOTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 414
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    .line 415
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    const-string v1, "FOOTER"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->FOOTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->FOOTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->$VALUES:[Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

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
    .line 412
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 412
    const-class v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->$VALUES:[Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    return-object v0
.end method
