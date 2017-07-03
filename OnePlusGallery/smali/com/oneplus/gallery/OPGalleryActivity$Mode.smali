.class final enum Lcom/oneplus/gallery/OPGalleryActivity$Mode;
.super Ljava/lang/Enum;
.source "OPGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/OPGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/OPGalleryActivity$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/OPGalleryActivity$Mode;

.field public static final enum ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

.field public static final enum FILMSTRIP:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

.field public static final enum GRID_VIEW:Lcom/oneplus/gallery/OPGalleryActivity$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 364
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    const-string v1, "ENTRY"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/OPGalleryActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    .line 365
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    const-string v1, "GRID_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/OPGalleryActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    .line 366
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    const-string v1, "FILMSTRIP"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/OPGalleryActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    .line 362
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->$VALUES:[Lcom/oneplus/gallery/OPGalleryActivity$Mode;

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
    .line 362
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/OPGalleryActivity$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 362
    const-class v0, Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/OPGalleryActivity$Mode;
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->$VALUES:[Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/OPGalleryActivity$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    return-object v0
.end method
