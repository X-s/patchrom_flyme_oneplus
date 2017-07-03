.class public interface abstract Lcom/oneplus/gallery/media/ThumbnailImageManager;
.super Ljava/lang/Object;
.source "ThumbnailImageManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;
    }
.end annotation


# static fields
.field public static final FLAG_ASYNC:I = 0x1

.field public static final FLAG_KEEP_TEMP_THUMB:I = 0x4

.field public static final FLAG_URGENT:I = 0x2

.field public static final PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsActive"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/media/ThumbnailImageManager;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract activate(I)Lcom/oneplus/base/Handle;
.end method

.method public abstract decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
.end method

.method public abstract decodeThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
.end method

.method public abstract getCachedSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;)Landroid/graphics/Bitmap;
.end method

.method public abstract getCachedThumbnailImage(Lcom/oneplus/gallery/media/Media;)Landroid/graphics/Bitmap;
.end method

.method public abstract getTempThumbnailImage(Lcom/oneplus/gallery/media/Media;)Landroid/graphics/Bitmap;
.end method

.method public abstract invalidateThumbnailImages(Lcom/oneplus/gallery/media/Media;I)V
.end method

.method public abstract setTempThumbnailImage(Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;I)Z
.end method
