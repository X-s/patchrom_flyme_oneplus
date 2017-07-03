.class public final enum Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;
.super Ljava/lang/Enum;
.source "MediaStoreDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemDirectoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

.field public static final enum CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

.field public static final enum SCREENSHOTS:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    .line 70
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    const-string v1, "SCREENSHOTS"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->SCREENSHOTS:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->SCREENSHOTS:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->$VALUES:[Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->$VALUES:[Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    return-object v0
.end method
