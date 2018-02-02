.class public interface abstract Lcom/oneplus/gallery2/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
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
    .line 17
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsActive"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/CacheManager;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/CacheManager;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract activate(I)Lcom/oneplus/base/Handle;
.end method

.method public abstract getMicroThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmallThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
            ">;"
        }
    .end annotation
.end method
