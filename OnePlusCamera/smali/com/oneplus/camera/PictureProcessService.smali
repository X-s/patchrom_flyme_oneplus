.class public interface abstract Lcom/oneplus/camera/PictureProcessService;
.super Ljava/lang/Object;
.source "PictureProcessService.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final EVENT_PICTURE_PROCESSED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;
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
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 15
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsConnected"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/PictureProcessService;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/PictureProcessService;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    .line 19
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsProcessing"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/PictureProcessService;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/PictureProcessService;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    .line 25
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PictureProcessed"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/PictureProcessService;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/PictureProcessService;->EVENT_PICTURE_PROCESSED:Lcom/oneplus/base/EventKey;

    .line 10
    return-void
.end method


# virtual methods
.method public abstract isPictureProcessing(Ljava/lang/String;)Z
.end method

.method public abstract onUnprocessedPictureReceived(Ljava/lang/String;)V
.end method

.method public abstract onUnprocessedPictureSaved(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
.end method
