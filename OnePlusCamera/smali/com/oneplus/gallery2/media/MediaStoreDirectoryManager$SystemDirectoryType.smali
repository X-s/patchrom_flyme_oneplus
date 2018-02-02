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
.field public static final enum CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

.field private static final synthetic ENUM$VALUES:[Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

.field public static final enum SCREENSHOTS:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    const-string/jumbo v1, "CAMERA"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    .line 58
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    const-string/jumbo v1, "SCREENSHOTS"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->SCREENSHOTS:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    const/4 v0, 0x2

    .line 52
    new-array v0, v0, [Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->SCREENSHOTS:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->ENUM$VALUES:[Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;
    .locals 1

    .prologue
    const-class v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->ENUM$VALUES:[Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    array-length v1, v0

    new-array v2, v1, [Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
