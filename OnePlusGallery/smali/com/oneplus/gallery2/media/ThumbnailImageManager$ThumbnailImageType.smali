.class public final enum Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;
.super Ljava/lang/Enum;
.source "ThumbnailImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThumbnailImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

.field public static final enum MICRO:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

.field public static final enum SCREEN:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

.field public static final enum SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    const-string v1, "SCREEN"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SCREEN:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    .line 47
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    .line 51
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    const-string v1, "MICRO"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->MICRO:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    sget-object v1, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SCREEN:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->MICRO:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->$VALUES:[Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->$VALUES:[Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    return-object v0
.end method
