.class final Lcom/oneplus/gallery2/media/MediaStoreMedia$2;
.super Ljava/lang/Object;
.source "MediaStoreMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 109
    # invokes: Lcom/oneplus/gallery2/media/MediaStoreMedia;->getAddresses()V
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->access$100()V

    .line 110
    return-void
.end method
