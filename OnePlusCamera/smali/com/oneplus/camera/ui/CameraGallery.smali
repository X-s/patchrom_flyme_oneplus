.class public interface abstract Lcom/oneplus/camera/ui/CameraGallery;
.super Ljava/lang/Object;
.source "CameraGallery.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/CameraGallery$GalleryState;,
        Lcom/oneplus/camera/ui/CameraGallery$UIState;
    }
.end annotation


# static fields
.field public static final EVENT_LATEST_MEDIA_UPDATED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CURRENT_CONTENT_URI:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/CameraGallery$GalleryState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LATEST_MEDIA:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/CameraGallery$UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 17
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CurrentContentUri"

    const-class v2, Landroid/net/Uri;

    const-class v3, Lcom/oneplus/camera/ui/CameraGallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery;->PROP_CURRENT_CONTENT_URI:Lcom/oneplus/base/PropertyKey;

    .line 21
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "GalleryState"

    const-class v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    const-class v3, Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v6, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    .line 25
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsMediaListEmpty"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/ui/CameraGallery;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/ui/CameraGallery;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    .line 29
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "LatestMedia"

    const-class v2, Lcom/oneplus/gallery2/media/Media;

    const-class v3, Lcom/oneplus/camera/ui/CameraGallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery;->PROP_LATEST_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 33
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "UIState"

    const-class v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    const-class v3, Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    .line 39
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "LatestMediaUpdated"

    const-class v2, Lcom/oneplus/gallery2/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/ui/CameraGallery;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery;->EVENT_LATEST_MEDIA_UPDATED:Lcom/oneplus/base/EventKey;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract addTempThumbnailImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
.end method

.method public abstract closeFilmstripDirectly()V
.end method

.method public abstract openFilmstripDirectly()V
.end method
