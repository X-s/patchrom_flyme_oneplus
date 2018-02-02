.class public final enum Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
.super Ljava/lang/Enum;
.source "CameraGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CameraGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GalleryState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/CameraGallery$GalleryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

.field public static final enum BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

.field public static final enum BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

.field public static final enum BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

.field public static final enum EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

.field public static final enum VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    const-string/jumbo v1, "BACKGROUND"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 33
    new-instance v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    const-string/jumbo v1, "BROWSE_FAST"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 34
    new-instance v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    const-string/jumbo v1, "BROWSE_SINGLE_PAGE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 35
    new-instance v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    const-string/jumbo v1, "EMPTY_PAGE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 36
    new-instance v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    const-string/jumbo v1, "VIEW_DETAILS"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->$VALUES:[Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->$VALUES:[Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    return-object v0
.end method
