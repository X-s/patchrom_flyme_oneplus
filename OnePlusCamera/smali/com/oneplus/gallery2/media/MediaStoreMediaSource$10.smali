.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;
.super Lcom/oneplus/base/CallbackHandle;
.source "MediaStoreMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMediaContentUri(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 696
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0

    .prologue
    .line 700
    return-void
.end method
