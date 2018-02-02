.class Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData$1;
.super Ljava/io/FileInputStream;
.source "ExternalMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->openInputStream()Ljava/io/InputStream;
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
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData$1;->this$1:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 320
    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

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
    .line 325
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V

    .line 326
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData$1;->this$1:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$0(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 327
    return-void
.end method
