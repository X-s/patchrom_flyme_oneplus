.class Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData$2;
.super Ljava/io/FileOutputStream;
.source "ExternalMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->openOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData$2;->this$1:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 348
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 354
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData$2;->this$1:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$1(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 355
    return-void
.end method
