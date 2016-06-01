.class public interface abstract Lcom/oneplus/camera/ui/Viewfinder;
.super Ljava/lang/Object;
.source "Viewfinder.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;
    }
.end annotation


# static fields
.field public static final FLAG_NO_BOUNDS_CHECKING:I = 0x1

.field public static final PROP_IS_DISPLAY_PREVIEW_FRAME_COPY_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_CONTAINER_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_RENDERING_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 25
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsPreviewFrameCopySupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/Viewfinder;->PROP_IS_DISPLAY_PREVIEW_FRAME_COPY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 29
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PreviewContainerSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/ui/Viewfinder;

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_CONTAINER_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 33
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PreviewBounds"

    const-class v2, Landroid/graphics/RectF;

    const-class v3, Lcom/oneplus/camera/ui/Viewfinder;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    .line 37
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PreviewReceiver"

    const-class v2, Ljava/lang/Object;

    const-class v3, Lcom/oneplus/camera/ui/Viewfinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    .line 41
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PreviewRenderingMode"

    const-class v2, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    const-class v3, Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v4, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->DIRECT:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_RENDERING_MODE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract copyDisplayPreviewFrame(Landroid/graphics/Bitmap;I)Z
.end method

.method public abstract pointFromPreview(FFLandroid/graphics/PointF;I)Z
.end method

.method public abstract pointToPreview(FFLandroid/graphics/PointF;I)Z
.end method

.method public abstract setPreferredPreviewBounds(Landroid/graphics/RectF;I)V
.end method
