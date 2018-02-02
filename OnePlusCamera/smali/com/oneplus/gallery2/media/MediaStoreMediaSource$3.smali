.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$3;
.super Ljava/lang/Object;
.source "MediaStoreMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$3;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$3;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$2(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    .line 153
    return-void
.end method
