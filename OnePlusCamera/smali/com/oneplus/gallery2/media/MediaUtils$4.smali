.class Lcom/oneplus/gallery2/media/MediaUtils$4;
.super Lcom/oneplus/base/CallbackHandle;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils;->getMediaFromDownloadUri(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0

    .prologue
    .line 513
    return-void
.end method
