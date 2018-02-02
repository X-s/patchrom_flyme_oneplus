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
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 14
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CurrentContentUri"

    const-class v2, Landroid/net/Uri;

    const-class v3, Lcom/oneplus/camera/ui/CameraGallery;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery;->PROP_CURRENT_CONTENT_URI:Lcom/oneplus/base/PropertyKey;

    .line 18
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "GalleryState"

    const-class v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    const-class v3, Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v5, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    .line 22
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsMediaListEmpty"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ui/CameraGallery;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    .line 26
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "UIState"

    const-class v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    const-class v3, Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    .line 9
    return-void
.end method


# virtual methods
.method public abstract addTempThumbnailImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
.end method

.method public abstract closeFilmstripDirectly()V
.end method

.method public abstract openFilmstripDirectly()V
.end method
